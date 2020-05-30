#ifndef _CONFIG_H
#define _CONFIG_H

/*
 * Config format:
 * 16 Ports have 16 bytes config
 * Offsets per port:
 *  0    = midi port forward/route bitmask MSB
 *  1    = midi port forward/route bitmask LSB
 *  2    = reserved
 *  3    = reserved
 *  4-7  = input channel mapping. e.g. 0xAB; A = in ch, B = out ch.
 *  8-15 = reserved
 */

#include "xparameters.h"
#include "xil_types.h"

// CONFIG_MEM_SIZE should be ISF_PAGE_SIZE or 256 bytes
#define CONFIG_MEM_SIZE 256

// Use the last page based on 4MB flash
#define CONFIG_ADDRESS 0x400000 - CONFIG_MEM_SIZE

// From xparameters.h
#define CONFIG_SPI_DEVICE_ID  XPAR_SPI_0_DEVICE_ID
#define CONFIG_INTC_DEVICE_ID XPAR_INTC_0_DEVICE_ID
#define CONFIG_SPI_INTR_ID    XPAR_INTC_0_SPI_0_VEC_ID

#define ISF_SPI_SELECT 0x01

typedef struct {
	u8 memory[CONFIG_MEM_SIZE];
} config;

int config_init(config *c);
int config_write(config *c);
int config_read(config *c);
int config_debug(config *c);

void config_set_default(config *c);
void config_set_all(config *c, u8 port);
void config_set_none(config *c, u8 port);
void config_set_add_port(config *c, u8 port, u8 dstport);
void config_set_rm_port(config *c, u8 port, u8 dstport);

#endif
