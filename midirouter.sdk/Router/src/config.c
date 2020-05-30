#include "xparameters.h"
#include "xintc.h"
#include "xilisf.h"
#include "xil_exception.h"

#include "config.h"

u8 ReadBuffer[CONFIG_MEM_SIZE + XISF_CMD_SEND_EXTRA_BYTES + 5];
u8 WriteBuffer[CONFIG_MEM_SIZE];
u8 IsfWriteBuffer[CONFIG_MEM_SIZE + XISF_CMD_SEND_EXTRA_BYTES];

volatile static int TransferInProgress;
static int ErrorCount;

static XIsf Isf;
static XIntc InterruptController;
static XSpi Spi;

//
//
//

void config_spi_handler(void *CallBackRef, u32 StatusEvent, u16 ByteCount) {
	TransferInProgress = FALSE;
	if (StatusEvent != XST_SPI_TRANSFER_DONE) {
		ErrorCount++;
	}
}

static int config_setup_interrupts(XSpi *SpiPtr) {
	int res = XIntc_Initialize(&InterruptController, CONFIG_INTC_DEVICE_ID);
	if(res != XST_SUCCESS) {
		return XST_FAILURE;
	}

	res = XIntc_Connect(&InterruptController,
			CONFIG_SPI_INTR_ID,
			(XInterruptHandler)XSpi_InterruptHandler,
			(void *)SpiPtr);
	if(res != XST_SUCCESS) {
		return XST_FAILURE;
	}

	res = XIntc_Start(&InterruptController, XIN_REAL_MODE);
	if(res != XST_SUCCESS) {
		return XST_FAILURE;
	}

	XIntc_Enable(&InterruptController, CONFIG_SPI_INTR_ID);
	Xil_ExceptionInit();
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
			 (Xil_ExceptionHandler)XIntc_InterruptHandler,
			 &InterruptController);
	Xil_ExceptionEnable();

	return XST_SUCCESS;
}

int config_wait_busy(void) {
	while(TransferInProgress) {};
	if(ErrorCount != 0) {
		return XST_FAILURE;
	}

	int res = XST_FAILURE;
	while(1) {
		TransferInProgress = TRUE;
		res = XIsf_GetStatus(&Isf, ReadBuffer);
		if(res != XST_SUCCESS) {
			return XST_FAILURE;
		}
		while(TransferInProgress);
		if(ErrorCount != 0) {
			return XST_FAILURE;
		}
		u8 StatusReg = ReadBuffer[BYTE2];
		if((StatusReg & XISF_SR_IS_READY_MASK) == 0) {
			break;
		}
	}
	return XST_SUCCESS;
}

int config_set_write_enable(void) {
	TransferInProgress = TRUE;
	int res = XIsf_WriteEnable(&Isf, XISF_WRITE_ENABLE);
//	int res = XIsf_WriteEnable(&Isf, XISF_SP_ENABLE);
	if(res != XST_SUCCESS) {
		return XST_FAILURE;
	}
	return config_wait_busy();
}

// FIXME: Put a sane default config here.
// In case anything else fails we should have atleast a default.
void config_set_default(config *c) {
	for (int i=0; i<CONFIG_MEM_SIZE; i++) {
		c->memory[i] = 0x00;
	}
	// setup forwarding to all ports but our self / sending port.
	for (u16 i=0; i<16; i++) {
		u16 x = ~(1<<i);
		c->memory[(i*16)+0] = (x>>8)&0xff;
		c->memory[(i*16)+1] = x&0xff;
	}
}

//
// public api
//

int config_init(config *c) {
	config_set_default(c);

	int res = XSpi_Initialize(&Spi, CONFIG_SPI_DEVICE_ID);
	if(res != XST_SUCCESS) {
		xil_printf("config_init: can't initialize xspi\r\n");
		return XST_FAILURE;
	}

	res = config_setup_interrupts(&Spi);
	if(res != XST_SUCCESS) {
		xil_printf("config_init: can't setup interrupts\r\n");
		return XST_FAILURE;
	}

	XIsf_SetStatusHandler(&Isf, &Spi, (XSpi_StatusHandler)config_spi_handler);
	XSpi_Start(&Spi);

	res = XIsf_SetSpiConfiguration(&Isf, &Spi, XISF_SPI_OPTIONS, XISF_SPI_PRESCALER);
	if(res != XST_SUCCESS) {
		xil_printf("config_init: can't set spi config\r\n");
		return XST_FAILURE;
	}

	// FIXME: initialize twice, don't know why...
	res = XIsf_Initialize(&Isf, &Spi, ISF_SPI_SELECT, IsfWriteBuffer);
	if(res != XST_SUCCESS) {
		res = XIsf_Initialize(&Isf, &Spi, ISF_SPI_SELECT, IsfWriteBuffer);
		if(res != XST_SUCCESS) {
			xil_printf("config_init: can't initialize xisf: %d\r\n", res);
			return XST_FAILURE;
		}
	}

	XIsf_SetTransferMode(&Isf,XISF_INTERRUPT_MODE);

	return XST_SUCCESS;
}

int config_read(config *c) {
	int i;

	XIsf_ReadParam ReadParam;
	ReadParam.Address = CONFIG_ADDRESS;
	ReadParam.NumBytes = CONFIG_MEM_SIZE;
	ReadParam.ReadPtr = ReadBuffer;
	for( i = 0; i < CONFIG_MEM_SIZE + XISF_CMD_SEND_EXTRA_BYTES; i++) {
		ReadBuffer[i] = 0x0;
	}

	TransferInProgress = TRUE;
	int res = XIsf_Read(&Isf, XISF_READ, (void*) &ReadParam);
	if(res != XST_SUCCESS) {
		xil_printf("config_read: read failure\r\n");
		return XST_FAILURE;
	}
	res = config_wait_busy();
	if(res != XST_SUCCESS) {
		xil_printf("config_write: erase errors\r\n");
		return XST_FAILURE;
	}

	for( i = 0; i < CONFIG_MEM_SIZE; i++) {
		c->memory[i] = ReadBuffer[i + XISF_CMD_SEND_EXTRA_BYTES];
	}
	return XST_SUCCESS;
}

// FIXME: make a non-blocking version of this
int config_write(config *c) {
	int res;

	// Erase first

	res = config_set_write_enable();
	if(res != XST_SUCCESS) {
		xil_printf("config_write: write enable failure\r\n");
		return XST_FAILURE;
	}

	TransferInProgress = TRUE;
	res = XIsf_Erase(&Isf, XISF_SECTOR_ERASE, CONFIG_ADDRESS);
	if(res != XST_SUCCESS) {
		xil_printf("config_write: erase failure\r\n");
		return XST_FAILURE;
	}
	res = config_wait_busy();
	if(res != XST_SUCCESS) {
		xil_printf("config_write: erase errors\r\n");
		return XST_FAILURE;
	}

	// Write after erase

	res = config_set_write_enable();
	if(res != XST_SUCCESS) {
		xil_printf("config_write: write enable failure\r\n");
		return XST_FAILURE;
	}

	XIsf_WriteParam WriteParam;
	WriteParam.Address = CONFIG_ADDRESS;
	WriteParam.NumBytes = CONFIG_MEM_SIZE;
	WriteParam.WritePtr = c->memory;

	TransferInProgress = TRUE;
	res = XIsf_Write(&Isf, XISF_WRITE, (void*) &WriteParam);
	if(res != XST_SUCCESS) {
		xil_printf("config_write: write failure\r\n");
		return XST_FAILURE;
	}
	res = config_wait_busy();
	if(res != XST_SUCCESS) {
		xil_printf("config_write: write errors\r\n");
		return XST_FAILURE;
	}

	return XST_SUCCESS;
}

int config_debug(config *c) {
	int res = XIsf_GetDeviceInfo(&Isf, ReadBuffer);
	if(res != XST_SUCCESS) {
		return XST_FAILURE;
	}
	xil_printf("Device ID: %02x %02x %02x %02x\r\n",
			ReadBuffer[1], ReadBuffer[2], ReadBuffer[3], ReadBuffer[4]);

	xil_printf("Config Dump:\r\n");
	for(int i=0; i<CONFIG_MEM_SIZE; i+=16) {
		xil_printf(" 0x%02x: %02x %02x %02x %02x  %02x %02x %02x %02x  %02x %02x %02x %02x  %02x %02x %02x %02x\r\n",
				i,
				c->memory[i+0], c->memory[i+1], c->memory[i+2], c->memory[i+3],
				c->memory[i+4], c->memory[i+5], c->memory[i+6], c->memory[i+7],
				c->memory[i+8], c->memory[i+9], c->memory[i+10], c->memory[i+11],
				c->memory[i+12], c->memory[i+13], c->memory[i+14], c->memory[i+15]);
	}
	return XST_SUCCESS;
}

void config_set_all(config *c, u8 port) {
	u16 x = ~(1<<port);
	c->memory[(port*16)+0] = (x>>8)&0xff;
	c->memory[(port*16)+1] = x&0xff;
}

void config_set_none(config *c, u8 port) {
	c->memory[(port*16)+0] = 0;
	c->memory[(port*16)+1] = 0;
}

void config_set_add_port(config *c, u8 port, u8 dstport) {
	u16 x = 1<<dstport;
	c->memory[(port*16)+0] |= (x>>8)&0xff;
	c->memory[(port*16)+1] |= x&0xff;;
}

void config_set_rm_port(config *c, u8 port, u8 dstport) {
	u16 x = 1<<dstport;
	c->memory[(port*16)+0] &= ~((x>>8)&0xff);
	c->memory[(port*16)+1] &= ~(x&0xff);
}
