#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xuartlite.h"
#include "xuartlite_l.h"
#include "xil_io.h"
#include "led_shift_594_driver.h"
#include "fifo.h"

#define NUM_PORTS 16

#define ACTIVITY(IN, OUT) \
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
#define DISABLE_PORTS if (i==7 || i==15) continue;

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
				xil_printf("read cc command 0x%x\r\n", p->midibyte);
				p->nextbyte = p->midibyte;
				p->midibyte = p->lastcmd[p->active_input_port];
			} else if (p->midibyte >= 128) {
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

u16 ReadInputPort(int port) {
	if (XUartLite_IsReceiveEmpty(XUartLite_PortAddrs[port])) {
		return 0;
	}

	u8 b = XUartLite_RecvByte(XUartLite_PortAddrs[port]);
	// send to all output ports for now
	for (int i=0;i<NUM_PORTS;i++) {
		DISABLE_PORTS
		if (port!=i) { // forward to all ports but ourself for now
			QueueOutputByte(port, i, b);
		}
	}
	switch (b) {
	case 0xf8: // clock
	case 0xfe: // active sensing
		return 0;
	default:
		return 1;
	}
}


//
// Main loop
//

void sleep(int dur)
{
	for (volatile int d = 0; d < dur; d++) { }
}

int main()
{
    init_platform();

    print("MIDI Merger Initialized\n\r");
    print("http://github.com/tomarus/midirouter\r\n");

    // Reset all output ports
    for (int i=0; i<NUM_PORTS; i++) {
    	bzero(&outports[i], sizeof(outport));
    }

    // Light up all LEDs once to indicate we are running.
    ACTIVITY(65535, 65535);
    ACTIVITY(0, 0);

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
   		ACTIVITY(inact, outact);
    }

    // unreachable
    cleanup_platform();
    return 0;
}