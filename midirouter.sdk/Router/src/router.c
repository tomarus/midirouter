#include "platform.h"
#include "xil_printf.h"
#include "xuartlite.h"
#include "xuartlite_l.h"
#include "xil_io.h"
#include "led_shift_594_driver.h"
#include "fifo.h"
#include "config.h"

#define NUM_PORTS 4

#define ACTIVITY(OUT, IN) \
    	LED_SHIFT_594_DRIVER_mWriteReg(XPAR_LED_SHIFT_594_DRIVER_0_S00_AXI_BASEADDR, LED_SHIFT_594_DRIVER_S00_AXI_SLV_REG0_OFFSET, IN&0xffff); \
    	LED_SHIFT_594_DRIVER_mWriteReg(XPAR_LED_SHIFT_594_DRIVER_0_S00_AXI_BASEADDR, LED_SHIFT_594_DRIVER_S00_AXI_SLV_REG1_OFFSET, OUT&0xffff);

const u32 XUartLite_PortAddrs[] = {
		XPAR_AXI_UARTLITE_1_BASEADDR,
		XPAR_AXI_UARTLITE_2_BASEADDR,
		XPAR_AXI_UARTLITE_3_BASEADDR,
		XPAR_AXI_UARTLITE_4_BASEADDR,
		XPAR_AXI_UARTLITE_5_BASEADDR,
		XPAR_AXI_UARTLITE_6_BASEADDR,
		XPAR_AXI_UARTLITE_7_BASEADDR,
		XPAR_AXI_UARTLITE_8_BASEADDR,
		XPAR_AXI_UARTLITE_9_BASEADDR,
		XPAR_AXI_UARTLITE_10_BASEADDR,
		XPAR_AXI_UARTLITE_11_BASEADDR,
		XPAR_AXI_UARTLITE_12_BASEADDR,
		XPAR_AXI_UARTLITE_13_BASEADDR,
		XPAR_AXI_UARTLITE_14_BASEADDR,
		XPAR_AXI_UARTLITE_15_BASEADDR,
		XPAR_AXI_UARTLITE_16_BASEADDR
};

// These ports are really broken.
//#define DISABLE_PORTS if (i==7 || i==15) continue;
#define DISABLE_PORTS

// global configuration struct
config Config;

// For ID'ing ports
u32 blinkCounter;
u8 blinkPort;

//
// Output Merging
//

enum {
	STATE_LOOP,
	STATE_WAITXMIT
};

typedef struct {
	fifo fifo[NUM_PORTS];
	u8 lastcmd[NUM_PORTS];
	u8 active_input_port;
	u8 expect_byte;
	u8 expect_bytes;
	u8 nextbyte;
	u8 midibyte;
	u8 state;
} outport;

outport outports[NUM_PORTS];

void QueueOutputByte(int fromport, int dstport, u8 byte) {
	fifo *f = &outports[dstport].fifo[fromport];
	if (fifo_is_full(f)) {
		xil_printf("FIFO overrun from port %d to port %d\r\n", fromport, dstport);
	}
	fifo_add_byte(f, byte);
}

void PostSendByte(outport *p) {
	switch(p->midibyte>>4) {
	case 0x8: // note off
	case 0x9: // note on
	case 0xa: // key pressure
	case 0xb: // control change
	case 0xe: // pitch bend
		p->expect_bytes = 2;
		break;
	case 0xc: // program change
	case 0xd: // channel pressure
		p->expect_bytes = 1;
		break;
	case 0xf:
		switch (p->midibyte) {
		case 0xf0: // sysex
			p->expect_byte = 0xf7;
			p->expect_bytes = 0;
			break;
		case 0xf7: // sysex end
			p->expect_byte = 0;
			break;
		case 0xf8: // clock
			break;
		case 0xf1: // time code frame
		case 0xf3: // song select
			p->expect_bytes = 1;
			break;
		case 0xf2: // song position
			p->expect_bytes = 2;
			break;
		default:
			p->expect_bytes = 0;
			break;
		}
		break;
	default:
		if (p->expect_bytes > 0) {
			p->expect_bytes = p->expect_bytes - 1;
		} else {
			p->expect_bytes = 0;
		}
		break;
	}

	if (p->expect_byte > 0 && p->midibyte == p->expect_byte) {
		p->expect_bytes = 0;
	}
}

u8 TrySendByte(outport *p, int portnum) {
	if (XUartLite_IsReceiveEmpty(XUartLite_PortAddrs[portnum])) {
		XUartLite_SendByte(XUartLite_PortAddrs[portnum], p->midibyte);
		PostSendByte(p);
		return 1;
	}
	return 0;
}

u16 ProcessOutputPort(int port) {
	u8 activity = 0;
	outport *p = &outports[port];
	fifo *fifo;

	switch (p->state) {
	case STATE_LOOP:
		fifo = &p->fifo[p->active_input_port];

		if (p->nextbyte != 0) {
			// we have to xmit the previous command
			// as we are in a midi continuous message here.
			p->midibyte = p->nextbyte;
			p->nextbyte = 0;
		} else if (!fifo_is_empty(fifo) ) {
			p->midibyte = fifo_read_byte(fifo);

			if (p->midibyte<128 && p->expect_byte == 0 && p->expect_bytes == 0) {
				xil_printf("read cc byte 0x%x cmd 0x%x\r\n", p->midibyte, p->lastcmd[p->active_input_port]);
				p->nextbyte = p->midibyte;
				p->midibyte = p->lastcmd[p->active_input_port];
			} else if (p->midibyte >= 128 && p->midibyte != 0xf8) {
				p->lastcmd[p->active_input_port] = p->midibyte;
			} else {
				//
			}
		} else if (p->expect_byte == 0 && p->expect_bytes == 0) {
			// check next port on next run
			p->active_input_port++;
			if (p->active_input_port > NUM_PORTS-1) {
				p->active_input_port = 0;
			}
			break;
		} else {
			break;
		}

		if (TrySendByte(p, port) == 1) {
			// Clock + ACtive Sensing is not counted towards activity.
			activity = !(p->midibyte == 0xf8 || p->midibyte == 0xfe);
		} else {
			p->state = STATE_WAITXMIT;
		}
		break;


	case STATE_WAITXMIT:
		if (TrySendByte(p, port) == 1) {
			// Clock + ACtive Sensing is not counted towards activity.
			activity = !(p->midibyte == 0xf8 || p->midibyte == 0xfe);
			p->state = STATE_LOOP;
		}
		break;

	default:
		p->state = STATE_LOOP;
		break;
	}

	return activity;
}

//
// Input Processing
//

#define SYSEX_BUFFER_LENGTH 64

u8 SysexIndex = 0;
u8 SysexPort = 0;
u8 SysexBuffer[SYSEX_BUFFER_LENGTH];

int SPConfigPos = 0;
u8 SPState = 0; // SP = Sysex Processing
enum spstate {
	SP_NONE,
	SP_CONFIGDUMP,
	SP_CONFIGDUMPEND,
};


// InitProcessSysex is called after we receive a sysex-end marker.
void InitProcessSysex(int srcport) {
	SysexPort = srcport;

	// return systex commands only on the source port
	fifo *f = &outports[SysexPort].fifo[SysexPort];

	switch(SysexBuffer[3]) {
	case 0x00: // version command
		fifo_add_byte(f, 0xf0);
		fifo_add_byte(f, 0x7d);
		fifo_add_byte(f, 0x2a);
		fifo_add_byte(f, 0x4d);
		fifo_add_byte(f, 0x40); // resp 0x40
		fifo_add_byte(f, 0x02); // version 2
		fifo_add_byte(f, NUM_PORTS); // nr in ports
		fifo_add_byte(f, NUM_PORTS); // nr out ports
		fifo_add_byte(f, 0xf7);
		if (fifo_is_full(f)) {
			xil_printf("FIFO sysex overrun from port %d\r\n", SysexPort);
		}
		SPState = SP_NONE;
		break;
	case 0x01: // config dump command
		SPState = SP_CONFIGDUMP;
		SPConfigPos = 0;
		fifo_add_byte(f, 0xf0);
		fifo_add_byte(f, 0x7d);
		fifo_add_byte(f, 0x2a);
		fifo_add_byte(f, 0x4d);
		fifo_add_byte(f, 0x41); // resp 0x41
		break;
	case 0x02: // set port format
			   // format is: "srcport mode dstport"
		switch (SysexBuffer[5]) {
		case 1: // all
			config_set_all(&Config, SysexBuffer[4]);
			break;
		case 2: // none
			config_set_none(&Config, SysexBuffer[4]);
			break;
		case 3: // to
			config_set_add_port(&Config, SysexBuffer[4], SysexBuffer[6]);
			break;
		case 4: // rm
			config_set_rm_port(&Config, SysexBuffer[4], SysexBuffer[6]);
			break;
		default:
			return;
		}
		fifo_add_byte(f, 0xf0);
		fifo_add_byte(f, 0x7d);
		fifo_add_byte(f, 0x2a);
		fifo_add_byte(f, 0x4d);
		fifo_add_byte(f, 0x42); // resp 0x42
		fifo_add_byte(f, 0xf7);
		SPState = SP_NONE;
		break;
	case 0x03: // write memory
		config_write(&Config);
		fifo_add_byte(f, 0xf0);
		fifo_add_byte(f, 0x7d);
		fifo_add_byte(f, 0x2a);
		fifo_add_byte(f, 0x4d);
		fifo_add_byte(f, 0x43); // resp 0x43
		fifo_add_byte(f, 0xf7);
		SPState = SP_NONE;
		break;
	case 0x04: // reload flash
		config_read(&Config);
		fifo_add_byte(f, 0xf0);
		fifo_add_byte(f, 0x7d);
		fifo_add_byte(f, 0x2a);
		fifo_add_byte(f, 0x4d);
		fifo_add_byte(f, 0x44); // resp 0x44
		fifo_add_byte(f, 0xf7);
		SPState = SP_NONE;
		break;
	case 0x05: // init / factory reset
		config_set_default(&Config);
		fifo_add_byte(f, 0xf0);
		fifo_add_byte(f, 0x7d);
		fifo_add_byte(f, 0x2a);
		fifo_add_byte(f, 0x4d);
		fifo_add_byte(f, 0x45); // resp 0x45
		fifo_add_byte(f, 0xf7);
		SPState = SP_NONE;
		break;
	case 0x06: // change port name, 1st byte = port, rest is name
		for (int i=0; i<8; i++) {
			int idx = (SysexBuffer[4]*16)+i;
			int val = (SysexBuffer[5+i]);
			Config.memory[idx+8] = val;
		}
		fifo_add_byte(f, 0xf0);
		fifo_add_byte(f, 0x7d);
		fifo_add_byte(f, 0x2a);
		fifo_add_byte(f, 0x4d);
		fifo_add_byte(f, 0x46); // resp 0x46
		fifo_add_byte(f, 0xf7);
		SPState = SP_NONE;
		break;
	case 0x07: // id port
		blinkPort = SysexBuffer[4];
		blinkCounter = 1000000;

		fifo_add_byte(f, 0xf0);
		fifo_add_byte(f, 0x7d);
		fifo_add_byte(f, 0x2a);
		fifo_add_byte(f, 0x4d);
		fifo_add_byte(f, 0x47); // resp 0x47
		fifo_add_byte(f, 0xf7);
		SPState = SP_NONE;
		break;
	default:
		SPState = SP_NONE;
		xil_printf("sysex: received unknown command 0x%02x\r\n", SysexBuffer[3]);
		break;
	}
}

// ProcessSysex is called every loop
// XXX: There can only be 1 port doing sysex processing right now.
// If this ever gives problems, rewrite this to input-port based
// processing using separate buffers etc.
void ProcessSysex() {
	// return sysex commands only on the source port
	fifo *f = &outports[SysexPort].fifo[SysexPort];

	switch (SPState) {
	case SP_NONE:
		break;
	case SP_CONFIGDUMP:
		if (!fifo_is_full(f)) {
			u8 b = Config.memory[SPConfigPos/2];
			if (SPConfigPos&1) {
				b &= 0x7f; // LSB
			} else {
				b >>= 7; // MSB (either 1 or 0)
			}
			fifo_add_byte(f, b);

			SPConfigPos++;
			if (SPConfigPos == 0x200) {
				SPState = SP_CONFIGDUMPEND;
			}
		}
		break;
	case SP_CONFIGDUMPEND:
		if (!fifo_is_full(f)) {
			fifo_add_byte(f, 0xf7);
			SPState = SP_NONE;
		}
	}
}

u8 SysexState = 0;
enum SysexState {
	SYSEX_NONE,
	SYSEX_RECEIVING,
};

u16 ReadInputPort(int port) {
	if (XUartLite_IsReceiveEmpty(XUartLite_PortAddrs[port])) {
		return 0;
	}

	u8 b = XUartLite_RecvByte(XUartLite_PortAddrs[port]);
	if (b == 0xfe) {
		return 0; // active sensing, ignore
	}

	if (b & 0b01110000) { // == command
		// process channel translations
		for (int i=0; i<3; i++) { // max 3 translations
			if (Config.memory[(port*16)+4+i] != 0x00) {
				b &= 0xf0;
				b |= Config.memory[(port*16)+4+i] & 0x0f;
			} else {
				break;
			}
		}
	}

	switch (b) {
	case 0xf0: // start sysex
		SysexIndex = 0;
		SysexPort = port;
		SysexState = SYSEX_RECEIVING;
		for (int i=0; i<SYSEX_BUFFER_LENGTH; i++) {
			SysexBuffer[i] = 0;
		}
		break;
	case 0xf7: // end sysex
		if (SysexBuffer[0] == 0x7d && SysexBuffer[1] == 0x2a && SysexBuffer[2] == 0x4d) {
			InitProcessSysex(port);
		}
		SysexState = SYSEX_NONE;
		break;
	default:
		if (SysexState == SYSEX_RECEIVING && SysexPort == port) {
			SysexBuffer[SysexIndex] = b;
			SysexIndex++;
			if (SysexIndex >= SYSEX_BUFFER_LENGTH) {
				// data gets lost here
				SysexIndex = 0;
			}
		}
		break;
	}

	// a bitmask for our ports to forward to
	u16 fwd = (Config.memory[(port*16)+0]<<8) + Config.memory[(port*16)+1];
	for (int i=0;i<NUM_PORTS;i++) {
		DISABLE_PORTS
		if (fwd & (1<<i)) {
			QueueOutputByte(port, i, b);
		}
	}
	return b != 0xf8; // ignore clock for activity
}

//
// Main loop
//

int main()
{
	init_platform();

    print("MIDI Router Initialized\n\r");
    print("http://github.com/tomarus/midirouter\r\n");

    // Reset all output ports
    for (int i=0; i<NUM_PORTS; i++) {
    	bzero(&outports[i], sizeof(outport));
    }

    // Light up all LEDs once to indicate we are running.
    ACTIVITY(65535, 65535);

    config_init(&Config);
    config_read(&Config);
    config_debug(&Config);

    xil_printf("Ready.\r\n");

    // loop
    while (1) {
    	u16 inact = 0, outact = 0;
    	for (u16 i=0; i<NUM_PORTS; i++) {
    		DISABLE_PORTS;
    		if (ReadInputPort(i)) {
    			inact |= 1<<i;
    		}
    		if (ProcessOutputPort(i)) {
    			outact |= 1<<i;
    		}
    	}
    	if (blinkCounter > 0) {
    		blinkCounter--;
    		inact |= 1<<blinkPort;
    		outact |= 1<<blinkPort;
    	}
   		ACTIVITY(inact, outact);
   		ProcessSysex();
    }

    // unreachable
    cleanup_platform();
    return 0;
}
