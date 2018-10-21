// Command midiconfig provides configuration for the MIDI router.
package main

import (
	"encoding/json"
	"flag"
	"fmt"
	"io/ioutil"
	"log"
	"math/rand"
	"os"
	"os/signal"
	"syscall"
	"time"

	"github.com/scgolang/midi"
)

type pattern struct {
	Len       int
	Loop      int
	Scale     string
	Speed     int
	Transpose int
	Key       string
	Seed      int64
	Velocity  int

	sequence []byte
}

type channel struct {
	Midi     int
	Patterns []pattern

	loopi, seqi, clki, pati, curspeed, nextspeed int
	ison                                         bool
}

type song struct {
	Comment  string
	Channels []channel
}

func newSongFromFile(fn string) (*song, error) {
	song := &song{}
	f, err := os.Open(fn)
	if err != nil {
		return nil, fmt.Errorf("can't open file %s: %v", fn, err)
	}
	defer f.Close()
	b, err := ioutil.ReadAll(f)
	if err != nil {
		return nil, fmt.Errorf("can't read data from %s: %v", fn, err)
	}
	err = json.Unmarshal(b, &song)
	if err != nil {
		return nil, fmt.Errorf("can't parse json in %s: %v", fn, err)
	}
	return song, nil
}

func (c *channel) clear() {
	c.loopi, c.seqi, c.clki, c.pati = 0, 0, 0, 0
	c.ison = false
	c.curspeed = c.Patterns[0].Speed
	c.nextspeed = c.Patterns[0].Speed
}

func (p *pattern) generate() error {
	seed := p.Seed
	if seed == 0 {
		seed = time.Now().UnixNano()
		rand.Seed(seed)
		seed = rand.Int63()
		log.Printf("Seed: %v", seed)
	}
	rand.Seed(seed)

	offset, err := getOffsetFromKey(p.Key)
	if err != nil {
		return err
	}
	s := p.Scale
	if *optScale != "" {
		s = *optScale
	}
	scale, ok := scales[s]
	if !ok {
		return fmt.Errorf("scale not found: %s", s)
	}
	notes := scale.allowNotes(offset)
	p.sequence = scale.generate(p.Len, notes)
	log.Printf("Notes: %+v", p.sequence)
	return nil
}

//

var optScale = flag.String("scale", "", "Overrule Scale")

func main() {
	flag.Usage = func() {
		fmt.Fprintf(flag.CommandLine.Output(), "Usage of %s:\n", os.Args[0])
		flag.PrintDefaults()
	}
	optL := flag.Bool("l", false, "List devices")
	optD := flag.String("d", "", "Device to use")
	optFile := flag.String("f", "", "Song filename")
	flag.Parse()
	if (!*optL && *optD == "") || *optFile == "" {
		flag.Usage()
		os.Exit(0)
	}

	devices, err := midi.Devices()
	if err != nil {
		log.Fatal(err)
	}
	if len(devices) == 0 {
		log.Fatal("No MIDI devices detected")
	}

	if *optL {
		for _, d := range devices {
			fmt.Printf("%s\t%s\n", d.ID, d.Name)
		}
		os.Exit(0)
	}

	var device *midi.Device
	for _, d := range devices {
		if d.ID == *optD || d.Name == *optD {
			device = d
			break
		}
	}
	if device == nil {
		log.Fatalf("can't find midi device: %s", *optD)
	}
	if err := device.Open(); err != nil {
		log.Fatal(err)
	}

	song, err := newSongFromFile(*optFile)
	if err != nil {
		log.Fatal(err)
	}

	quiter := make(chan bool, 1)

	go player(quiter, device, song)

	sig := make(chan os.Signal, 2)
	signal.Notify(sig, syscall.SIGTERM, syscall.SIGINT)
	<-sig

	log.Printf("quiting..")

	quiter <- true
	for i := range song.Channels {
		noteOff(device, &song.Channels[i])
	}
}

func player(quiter chan bool, device *midi.Device, song *song) {
	ch, err := device.Packets()
	if err != nil {
		log.Fatal(err)
	}

	for {
		for c := range song.Channels {
			for p := range song.Channels[c].Patterns {
				song.Channels[c].clear()
				err := song.Channels[c].Patterns[p].generate()
				if err != nil {
					log.Fatal(err)
				}
			}
		}

		log.Printf("Waiting for MIDI start message")
		for pkt := range ch {
			if pkt.Data[0] == 0xfa {
				break
			}
		}
		log.Printf("Running..")

	looper:
		for {
			select {
			case <-quiter:
				return
			case pkt := <-ch:
				if pkt.Data[0] == 0xf8 {
					for i := range song.Channels {
						if !playNote(device, &song.Channels[i]) {
							os.Exit(0)
						}
					}
				} else if pkt.Data[0] == 0xfc {
					log.Printf("MIDI stop received")
					for i := range song.Channels {
						noteOff(device, &song.Channels[i])
					}
					break looper
				}
			}
		}
	}
}

func playNote(device *midi.Device, ch *channel) bool {
	pat := ch.Patterns[ch.pati]

	defer func() { ch.clki++ }()
	if ch.clki%ch.curspeed != 0 {
		return true
	}
	ch.curspeed = ch.nextspeed

	cmd := byte(0x90 + ch.Midi)
	if ch.ison {
		cmd = byte(0x80 + ch.Midi)
	}
	note := pat.sequence[ch.seqi]
	note += byte(pat.Transpose)
	_, err := device.Write([]byte{cmd, note, byte(pat.Velocity)})
	if err != nil {
		log.Fatalf("can't send MIDI data: %v", err)
	}

	if ch.ison {
		ch.seqi++
		if ch.seqi >= len(pat.sequence) {
			ch.seqi = 0
			ch.loopi++
			if ch.loopi >= pat.Loop {
				ch.loopi = 0
				ch.pati++
				if ch.pati >= len(ch.Patterns) {
					ch.pati = 0
				}
				ch.nextspeed = ch.Patterns[ch.pati].Speed
			}
		}
	}
	ch.ison = !ch.ison
	return true
}

func noteOff(device *midi.Device, ch *channel) {
	pat := ch.Patterns[ch.pati]
	device.Write([]byte{byte(0x80 + ch.Midi), pat.sequence[ch.seqi] + byte(pat.Transpose), 0x64})
}
