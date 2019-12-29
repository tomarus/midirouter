#ifndef _FIFO_H
#define _FIFO_H

#include <xil_types.h>

#define OUTPUT_BUFFER_LENGTH 32

typedef struct {
	u8 buf[OUTPUT_BUFFER_LENGTH];
	u8 rpos;
	u8 wpos;
} fifo;

void fifo_add_byte(fifo *f, u8 b);
u8 fifo_read_byte(fifo *f);
u8 fifo_is_empty(fifo *f);
u8 fifo_is_full(fifo *f);

#endif
