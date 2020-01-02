// Command midiconfig provides configuration for the MIDI router.
package main

import (
	"flag"
	"fmt"
	"log"
	"os"

	"github.com/scgolang/midi"
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
	flag.Usage = func() {
		fmt.Fprintf(flag.CommandLine.Output(), "Usage of %s:\n", os.Args[0])
		fmt.Fprintf(flag.CommandLine.Output(), "\t%s [flags] command [args]\n", os.Args[0])
		flag.PrintDefaults()
	}
	optL := flag.Bool("l", false, "List devices")
	optD := flag.String("d", "", "Device to use")
	flag.Parse()
	command := flag.Args()
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

	switch command[0] {
	case "info":
		sxInfo(device, pktCh)
	case "dump":
		sxDump(device, pktCh)
	default:
		fmt.Printf("Supported commands: info, dump\n")
	}
}

func sxInfo(device *midi.Device, pktCh <-chan midiPacket) {
	//  response = 0xf0, 0x7d, 0x2a, 0x4d,
	//      0x40, 0x01,            // RESPONSE 0x40, version 1
	//      0x01, 0x02,            // 1 inport, 2 outports
	//      byte(int(bpm) >> 7),   // current speet msb
	//      byte(int(bpm) & 0x7f), // current speed lsb
	//      0xf7
	var reqConfigDump = []byte{0xf0, 0x7d, 0x2a, 0x4d, 0x00, 0xf7}
	response := sysex(device, pktCh, reqConfigDump)
	log.Printf("RAW Response: % #x", response)
	if len(response) != 7 || !valid(response) {
		log.Printf("Invalid response (%d).", len(response))
		return
	}
	log.Printf("Device-ID: %#x", response[3])
	log.Printf("Version: %d", response[4])
	// log.Printf("In-Ports: %d Out-Ports: %d", response[5]+1, response[6]+1)
	log.Printf("In-Ports: %d", response[5])
	log.Printf("Out-Ports: %d", response[6])
}

func sxDump(device *midi.Device, pktCh <-chan midiPacket) {
	//  response = 0xf0, 0x7d, 0x2a, 0x4d, 0x41, // 0x41 command response
	//		0x200 x byte, msb/lsb 7 bit,
	//      0xf7
	var reqConfigDump = []byte{0xf0, 0x7d, 0x2a, 0x4d, 0x01, 0xf7}
	response := sysex(device, pktCh, reqConfigDump)
	if len(response) != 516 {
		log.Printf("invalid response len: %d", len(response))
		log.Printf("RAW Response: % #x", response)
		return
	}

	var config [256]byte
	for i := 0; i < 512; i += 2 {
		// combine msb + lsb into 8bit byte
		x := response[4+i] << 7
		x += response[4+i+1]
		config[i/2] = x
	}

	// dump config, should be the same as printed on fpga startup
	for i := 0; i < 256; i += 16 {
		log.Printf(" 0x%02x: %02x %02x %02x %02x  %02x %02x %02x %02x  %02x %02x %02x %02x  %02x %02x %02x %02x", i,
			config[i+0], config[i+1], config[i+2], config[i+3],
			config[i+4], config[i+5], config[i+6], config[i+7],
			config[i+8], config[i+9], config[i+10], config[i+11],
			config[i+12], config[i+13], config[i+14], config[i+15])

	}
}

func valid(in []byte) bool {
	if len(in) < 3 {
		return false
	}
	if in[0] == 0x7d && in[1] == 0x2a && in[2] == 0x4d {
		return true
	}
	return false
}

func sysex(device *midi.Device, ch <-chan midiPacket, req []byte) []byte {
	n, err := device.Write(req)
	if err != nil {
		log.Fatalf("can't send configuration request: %v", err)
	}
	if n != len(req) {
		log.Fatalf("can't send all configuration data: %d != %d", n, len(req))

	}
	var response []byte
	for pkt := range ch {
		if pkt.Data == 0xf0 {
			for pkt := range ch {
				if pkt.Data == 0xf7 {
					return response
				}
				response = append(response, pkt.Data)
			}
		}
	}
	return nil
}
