package main

import (
	"fmt"
	"math/rand"
)

// Scales roughly taken from:
// https://github.com/DhavalKapil/MusicComposer
// Previously i've also implemented something like this in:
// https://github.com/tomarus/midiseq

type scale struct {
	notes []byte
}

var scales = map[string]scale{
	"major": {
		notes: []byte{48, 50, 52, 53, 55, 57, 59, 60, 62, 64, 65, 67, 69, 71, 72, 74, 76, 77, 79, 81, 83, 84},
	},
	"dorian": {
		notes: []byte{48, 50, 51, 53, 55, 57, 58, 60, 62, 63, 65, 67, 69, 70, 72, 74, 75, 77, 79, 81, 82, 84},
	},
	"phrygian": {
		notes: []byte{48, 49, 51, 53, 55, 56, 58, 60, 61, 63, 65, 67, 68, 70, 72, 73, 75, 77, 79, 80, 82, 84},
	},
	"lydian": {
		notes: []byte{48, 50, 52, 54, 55, 57, 59, 60, 62, 64, 66, 67, 69, 71, 72, 74, 76, 78, 79, 81, 83, 84},
	},
	"mixolydian": {
		notes: []byte{48, 50, 52, 53, 55, 57, 58, 60, 62, 64, 65, 67, 69, 70, 72, 74, 76, 77, 79, 81, 82, 84},
	},
	"minor": {
		notes: []byte{48, 50, 51, 53, 55, 56, 58, 60, 62, 63, 65, 66, 68, 70, 72, 74, 75, 77, 79, 80, 82, 84},
	},
	"locrian": {
		notes: []byte{48, 49, 51, 53, 54, 56, 58, 60, 61, 63, 65, 66, 68, 70, 72, 73, 75, 77, 78, 80, 82, 84},
	},
	"pentatonic": {
		notes: []byte{48, 50, 52, 55, 57, 60, 62, 64, 67, 69, 72, 74, 76, 79, 81, 84},
	},
	"major_blues": {
		notes: []byte{48, 50, 51, 52, 55, 57, 60, 62, 63, 64, 67, 69, 72, 74, 75, 76, 79, 81, 84},
	},
}

func getOffsetFromKey(key string) (int, error) {
	if !(len(key) == 1 || len(key) == 2) {
		return 0, fmt.Errorf("invalid key length")
	}
	off := 0
	switch key[0] {
	case 'a':
		off = 9
	case 'b':
		off = 10
	case 'c':
		off = 0
	case 'd':
		off = 2
	case 'e':
		off = 4
	case 'f':
		off = 5
	case 'g':
		off = 7
	default:
		return 0, fmt.Errorf("invalid key")
	}
	if len(key) == 2 && key[1] == '#' {
		if key[0] == 'b' || key[0] == 'e' {
			return 0, fmt.Errorf("invalid key scale")
		}
		off++
	}
	return off, nil
}

func (scale *scale) allowNotes(offset int) []byte {
	notes := make([]byte, len(scale.notes))
	for i := 0; i < len(scale.notes); i++ {
		notes[i] = scale.notes[i] + byte(offset)
	}
	return notes
}

func (scale *scale) generate(length int, notes []byte) []byte {
	seq := make([]byte, length)
	for i := 0; i < length; i++ {
		seq[i] = notes[rand.Int31n(int32(len(notes)))]
		if i != 0 {
			if seq[i] == seq[i-1] {
				i--
			}
		}
	}
	return seq
}
