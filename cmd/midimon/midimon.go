// Command midimon provides a MIDI monitor using ALSA.
package main

import (
	"flag"
	"fmt"
	"log"
	"os"

	"github.com/scgolang/midi"
	"github.com/tomarus/ansi"
)

type midiPacket struct {
	Err  error
	Data byte
}

// packets returns a read-only channel that emits packets.
func packets(d *midi.Device) (<-chan midiPacket, error) {
	var (
		buf = make([]byte, 1)
		ch  = make(chan midiPacket, d.QueueSize)
	)
	go func() {
		for {
			if _, err := d.Read(buf); err != nil {
				ch <- midiPacket{Err: err}
				return
			}
			ch <- midiPacket{Data: buf[0]}
		}
	}()
	return ch, nil
}

func main() {
	optL := flag.Bool("l", false, "List devices")
	optD := flag.String("d", "", "Device to use")
	optI := flag.Bool("i", false, "Ignore clock")
	flag.Parse()
	if !*optL && *optD == "" {
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

	//

	pktCh, err := packets(device)
	if err != nil {
		log.Fatal(err)
	}

	var cmd byte
	var color string
	for pkt := range pktCh {
		if *optI && pkt.Data == 0xf8 {
			continue
		}
		if pkt.Data>>7 == 1 && cmd != pkt.Data {
			cmd = pkt.Data
			if color != ansi.Fg(ansi.White) {
				color = ansi.Fg(ansi.White)
			} else {
				color = ansi.Bold
			}
		}
		fmt.Printf("%s%.2x%s ", color, pkt.Data, ansi.Reset)
	}
}
