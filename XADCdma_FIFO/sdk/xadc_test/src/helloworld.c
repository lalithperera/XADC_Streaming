/*  XADC streaming
This: 
initializes GPIOs
Initializes Interrupt controller
Initiate DMA controller

All XADC configuratios are done in vivado so use them by default. But can be done here as well (uncomment those line)
Intrtupt handler routine: 
	clears the  interrupt
	checks if FIFO full flag is set. If set print a message and clears it.
	at the end initiates a new DMA trasfer
	
*/ 

#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "stdlib.h"
#include "xgpio.h"
#include "xsysmon.h"
#include "xaxidma.h"
#include "sleep.h"
#include "xadcps.h"
#include <xil_io.h>
#include "xscugic.h"
#include "xparameters.h"
#include "xtime_l.h"

#include   "../../design_1_wrapper_hw_platform_0/ps7_init.h"

//media/hdd/FIFO_XADCdma/sdk5/design_1_wrapper_hw_platform_0/ps7_init.h

//media/hdd/FIFO_XADCdma/sdk5/xadc_fifo/src/helloworld.c

#define PACKET_SIZE  (int)1024*1024

#define XADC_DEVICE_ID 		XPAR_XADCPS_0_DEVICE_ID
#define GPIO_EXAMPLE_DEVICE_ID  XPAR_GPIO_0_DEVICE_ID

#define GPIO_EXAMPLE_DEVICE1_ID  XPAR_GPIO_1_DEVICE_ID
#define GPIO_EXAMPLE_DEVICE2_ID  XPAR_GPIO_2_DEVICE_ID
#define GPIO_EXAMPLE_DEVICE3_ID  XPAR_GPIO_3_DEVICE_ID





#define SYSMON_DEVICE_ID	XPAR_SYSMON_0_DEVICE_ID
#define DMA_DEV_ID			XPAR_AXIDMA_0_DEVICE_ID
#define DDR_BASE_ADDR		XPAR_AXIDMA_0_BASEADDR

#define RX_BUFFER_BASE		(0x00100000)
#define GPIO_CHANNEL 1

#define NUMBER_OF_FRAMES  (int) 10  //usually 256 small number just for debugging

//#define COUNTS_PER_SECOND (XPAR_CPU_CORTEXA9_CORE_CLOCK_FREQ_HZ / 2)

static XAdcPs XADCInst;

unsigned int d_addr=0xa000004;


// static XAdcPs* XADCInstPtr;
XTime tStart, tEnd;


XGpio Gpio;
XGpio Gpio1,Gpio2,Gpio3;

XSysMon SysMonInst;
XAdcPs_Config *ConfigPtr;


u16 * VccAuxRawDataPtr;
u16	VccAuxRawData;
float VccAuxData;

unsigned int dma_buffer_address = 0xa000004;
unsigned int d_addr_cbuf_addr= 0xa000000;


XScuGic InterruptController;
static XScuGic_Config *GicConfig;
u32 frame_counter = 0;


void StartDMATransfer ( unsigned int dstAddress, unsigned int len ) {
	// write destination address to S2MM_DA register.
	Xil_Out32 ( XPAR_AXIDMA_0_BASEADDR + 0x48 , dstAddress );

	// write length to S2MM_LENGTH register.
	Xil_Out32 (XPAR_AXIDMA_0_BASEADDR + 0x58, len );

	//xil_printf ( "     in start transfor  \n\r" );
}


void InterruptHandler ( void ) {
	// if you have a device, which may produce several interrupts one after another, the first thing you should do is to disable interrupts. but axi dma is not this case.
	u32 tmpValue;
	u32 *dmaBufferPtr;
	u32 tUsed;
	u32 fifo_status;
	u32 fifo_data;
	float tRate;


	dmaBufferPtr = (u32 *) d_addr;

	 Xil_DCacheFlushRange((UINTPTR) dmaBufferPtr ,PACKET_SIZE );

     fifo_status = XGpio_DiscreteRead(&Gpio2, GPIO_CHANNEL);

     if (fifo_status > 0) {
    	 xil_printf("FIFO full:  %x  \r\n", fifo_status);
    	 fifo_data  = XGpio_DiscreteRead(&Gpio3, GPIO_CHANNEL);
    	 xil_printf(" data in FIFO   %x  \r\n", fifo_data);
    		XGpio_DiscreteWrite(&Gpio1, GPIO_CHANNEL, 0);
    		XGpio_DiscreteWrite(&Gpio1, GPIO_CHANNEL, 1);
     }


//	xil_printf ("Interrupt acknowledged.\n\r");

	// clear interrupt. just perform a write to bit no. 12 of S2MM_DMASR
	tmpValue = Xil_In32 ( XPAR_AXIDMA_0_BASEADDR + 0x34 );
	tmpValue = tmpValue | 0x1000;
	Xil_Out32 ( XPAR_AXIDMA_0_BASEADDR + 0x34 , tmpValue );

	// Data is in the DRAM now, process here


	int tem_framen = frame_counter%1000;

//	xil_printf ( "          Frame number : %d   \n\r", frame_counter );

//	unsigned int d_addr= dma_buffer_address;
	frame_counter++;
	if (tem_framen == 0) {

   //  	xil_printf ( "Frame number : %d    DMA address %08X \n\r", frame_counter , d_addr);
	//	xil_printf (" %08X     %08X     %08X     %08X    %08X \n\r", Xil_In32(d_addr) , Xil_In32(d_addr+0x4), Xil_In32(d_addr+0x8), Xil_In32(d_addr+0xc), Xil_In32(d_addr+0x10));
	}
	if ( frame_counter == NUMBER_OF_FRAMES )  {
		frame_counter=0;
		XTime_GetTime(&tEnd);

		tUsed = ((tEnd-tStart)*1000000)/(COUNTS_PER_SECOND);

		tRate= (float)(NUMBER_OF_FRAMES*PACKET_SIZE*1000000.0);

		xil_printf("time for %d transfers %d us %f  \r\n", NUMBER_OF_FRAMES, tUsed, tRate);

		XTime_GetTime(&tStart);
		//return;
	}

	// initiate a new data transfer
 //   StartDMATransfer ( dma_buffer_address + PACKET_SIZE * frame_counter, PACKET_SIZE );
	d_addr= dma_buffer_address+ PACKET_SIZE * frame_counter;
	Xil_Out32  (d_addr_cbuf_addr, d_addr );
 	StartDMATransfer ( d_addr , PACKET_SIZE );
	// StartDMATransfer ( 0xa000000 , 32 );
}

int SetUpInterruptSystem(XScuGic *XScuGicInstancePtr)
{
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT, (Xil_ExceptionHandler) XScuGic_InterruptHandler, XScuGicInstancePtr);
	Xil_ExceptionEnable();		// enable interrupts in ARM.
	return XST_SUCCESS;
}

int InitializeInterruptSystem  ( unsigned int deviceID ) {
	int Status;

	GicConfig = XScuGic_LookupConfig (  deviceID );
	if ( NULL == GicConfig ) {
		return XST_FAILURE;
	}

	Status = XScuGic_CfgInitialize ( &InterruptController, GicConfig, GicConfig->CpuBaseAddress);
	if ( Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	Status = SetUpInterruptSystem ( &InterruptController);
	if ( Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	Status = XScuGic_Connect ( &InterruptController, XPAR_FABRIC_AXI_DMA_S2MM_INTROUT_INTR ,
			(Xil_ExceptionHandler)InterruptHandler,
			NULL);
	if ( Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	//XScuGic_Enable (&InterruptController, XPAR_FABRIC_AXI_DMA_0_S2MM_INTROUT_INTR);
	XScuGic_Enable (&InterruptController,XPAR_FABRIC_AXI_DMA_S2MM_INTROUT_INTR );
	xil_printf ("Interrupt Initialized \n\r");
	return XST_SUCCESS;
}

int InitializeAXIDma ( void )  {

	unsigned int tmpVal;

	// S2MM_DMACR.RS = 1
	tmpVal = Xil_In32 (XPAR_AXIDMA_0_BASEADDR + 0x30 );
	tmpVal = tmpVal | 0x1001;									// dma unit enable, interrupt on complete enable
	Xil_Out32  ( XPAR_AXIDMA_0_BASEADDR + 0x30, tmpVal );
	tmpVal = Xil_In32 ( XPAR_AXIDMA_0_BASEADDR+ 0x30 );
	xil_printf ( "value for dma control register : %x\n\r", tmpVal );

	return 0;
}




int main()
{
	int Status;



    init_platform();

    print("Hello World\n\r");

    XTime tEnd, tCur;
    u32 tUsed;
	u32 fifo_status;

// just a test of the timing routine
//   XTime_GetTime(&tCur);
//  usleep(1300);
//  XTime_GetTime(&tEnd);
//  tUsed = ((tEnd-tCur)*1000000)/(COUNTS_PER_SECOND);
//  xil_printf("time elapsed is %d us\r\n",tUsed);






    Status = XGpio_Initialize(&Gpio, GPIO_EXAMPLE_DEVICE_ID);
    if (Status != XST_SUCCESS) {
    		xil_printf("Gpio Initialization Failed\r\n");
    		return XST_FAILURE;
    }

    XGpio_DiscreteWrite(&Gpio, GPIO_CHANNEL, (PACKET_SIZE)/4);


    Status = XGpio_Initialize(&Gpio1, GPIO_EXAMPLE_DEVICE1_ID);
       if (Status != XST_SUCCESS) {
       		xil_printf("Gpio 1 Initialization Failed\r\n");
       		return XST_FAILURE;
       }

    //   XGpio_DiscreteWrite(&Gpio1, GPIO_CHANNEL, 1);
       XGpio_DiscreteWrite(&Gpio1, GPIO_CHANNEL, 0);
       usleep(20);
       XGpio_DiscreteWrite(&Gpio1, GPIO_CHANNEL, 1);

       Status = XGpio_Initialize(&Gpio2, GPIO_EXAMPLE_DEVICE2_ID);
           if (Status != XST_SUCCESS) {
           		xil_printf("Gpio Initialization Failed\r\n");
           		return XST_FAILURE;
           }

          fifo_status = XGpio_DiscreteRead(&Gpio2, GPIO_CHANNEL);

          xil_printf("FIFO full:  %08x  \r\n", fifo_status);

      Status = XGpio_Initialize(&Gpio3, GPIO_EXAMPLE_DEVICE3_ID);
             if (Status != XST_SUCCESS) {
               		xil_printf("Gpio 1 Initialization Failed\r\n");
              		return XST_FAILURE;
             }




   // SYSConfigPtr = XSysMon_LookupConfig(SYSMON_DEVICE_ID);
 //   if (SYSConfigPtr == NULL) {
   //     return XST_FAILURE;
  //  }


	ConfigPtr = XAdcPs_LookupConfig(XADC_DEVICE_ID);

		if (ConfigPtr == NULL) {
			xil_printf("Can't find XADC device.\r\n");
			return XST_FAILURE;
		}

		Status = XAdcPs_CfgInitialize(&XADCInst,ConfigPtr,ConfigPtr->BaseAddress);
		if (Status != XST_SUCCESS) {
			xil_printf("XADC Init FAILED!\r\n");
			return XST_FAILURE;
		}

		printf (" XADC initialized  \r\n");
	//	 XAdcPs_SetAdcClkDivisor(& XADCInst, 8);

//		XAdcPs_SetSequencerMode(&XADCInst, XADCPS_SEQ_MODE_SINGCHAN);
//		XAdcPs_SetSingleChParams(&XADCInst , XADCPS_CH_VPVN,FALSE , FALSE , FALSE ) ;


//		XAdcPs_SetSeqChEnables (& XADCInst , XADCPS_SEQ_CH_VPVN | XADCPS_SEQ_CH_AUX01 | XADCPS_SEQ_CH_AUX05 |
//				XADCPS_SEQ_CH_AUX06| XADCPS_SEQ_CH_AUX09|XADCPS_SEQ_CH_AUX13|XADCPS_SEQ_CH_AUX15);


	/*	XAdcPs_SetSequencerMode(&XADCInst, XADCPS_SEQ_MODE_SAFE);
		XAdcPs_SetSeqChEnables (& XADCInst , XADCPS_SEQ_CH_VPVN );


		XAdcPs_SetSeqInputMode (& XADCInst  , 0); // unipolar

		XAdcPs_SetAvg (& XADCInst, XADCPS_AVG_0_SAMPLES );  // no averaging

		XAdcPs_SetSequencerMode (&XADCInst, XADCPS_SEQ_MODE_CONTINPASS);
    */

		printf (" XADC Sequencer setup complete \r\n");


  	xil_printf ("initializing axi dma ...\n\r");
    	InitializeAXIDma ();


	xil_printf ("enabling the interrupt handling system...\n\r");
	InitializeInterruptSystem ( XPAR_PS7_SCUGIC_0_DEVICE_ID );

	xil_printf ("starting  DMA transfers...\n\r");

	XTime_GetTime(&tStart);

	XGpio_DiscreteWrite(&Gpio1, GPIO_CHANNEL, 0);
	XGpio_DiscreteWrite(&Gpio1, GPIO_CHANNEL, 1);

	StartDMATransfer ( dma_buffer_address, PACKET_SIZE );

    cleanup_platform();
    return 0;
}
