
#include "BF533 Flags.h"


#define  u16 unsigned short
#define  u32 unsigned int   
#define  u64 unsigned long long 
#define  u8  unsigned char

#define PF *pFIO_FLAG_D=*pFIO_FLAG_D
#define PF6_0  *pFIO_FLAG_D=*pFIO_FLAG_D&(~PF6) //выводим ноль на PF6 
#define PF6_1  *pFIO_FLAG_D=*pFIO_FLAG_D|(PF6) //выводим еденицу на PF6 


#define PF10_1  *pFIO_FLAG_D=*pFIO_FLAG_D|(PF10) //выводим еденицу на PF10 
#define PF10_0  *pFIO_FLAG_D=*pFIO_FLAG_D&(~PF10) //выводим ноль на PF10 

#define PF9_1  *pFIO_FLAG_D=*pFIO_FLAG_D|(PF9) //выводим еденицу на PF10 
#define PF9_0  *pFIO_FLAG_D=*pFIO_FLAG_D&(~PF9) //выводим ноль на PF10 

  #define TX_485 PF10_1  
  #define RX_485 PF10_0   

#define Master_BUS_0  PF6_0
#define Master_BUS_1  PF6_1    


extern volatile unsigned char  flag_dsp_ok;
extern unsigned char  DSP_in1[64];
extern	char dma_buf;		


unsigned volatile int  time_sekund=0;
unsigned volatile int  time_uart=0;

 volatile char tick_us=0;
 volatile int  tick_process=0;
 volatile int  tick_process_K611=0;
 volatile int  tick_process_K615=0;
 volatile int  tick_process_K612=0;
 volatile int  tick_process_K613=0;
 volatile int  tick_process_OK=0;
 volatile int  tick_TCP=0;
 volatile int  tick_UDP=0;
 volatile unsigned int  tick_wait=0;
extern volatile int  tick_PPI_wait;
extern unsigned int  tick_wait_LED_ERROR;
extern volatile int TIME_BR;

extern   unsigned volatile char flag_Ethernet_Terminal;  //
extern volatile   char              flag_event_sinhron;
extern volatile unsigned  int        sch_event_sinhron; //подсчёт числа пришедших прерываний


extern unsigned volatile char flag_pachka_TXT; //
extern unsigned char K615_crc_sch; 
extern volatile  unsigned char RS485;
extern volatile  unsigned int  text_lengh;

  extern volatile unsigned char  flag_PPI_sz1;
  extern volatile unsigned char  flag_PPI_sz2;
  extern volatile unsigned char  flag_PPI_sinc;
  extern volatile unsigned char  flag_contr_TNC_TNO;
  extern volatile unsigned char  flag_Packet_form;

  extern volatile unsigned  int sch_pachek_test;
  extern volatile unsigned char flag_1HZ_sync;
  extern unsigned int tst_time1;
  extern unsigned int tst_time2;
  extern unsigned char flag_time_test;
  unsigned char ERROR_status_DMA=0;
  
  extern unsigned char  FLAG_SYNC_PF8;
  extern unsigned char  FLAG_SYNC_PF11;

  extern unsigned char FLAG_UART_K607;
    
  extern char Master_flag; 
  extern unsigned char flag_TOBM;
  extern unsigned int TIMER_UDP_LS_DOWN;//счётчик времени контроля работы линии UDP ETHERNET
  extern unsigned int TIMER_AVARIYA;
  extern char FLAG_SPORT1_TX;
  extern char FLAG_SPORT1_RX;
  extern u32 DELAY_RZV;
  extern volatile  u32 TIME_PPI_END;
  extern u32 TIMER_REZERV; //таймер отсчёта времени для резервирования
  extern u32 TIMER_GBR_OK;
  extern u32 FLAG_TIMER_UART_K614;
  extern u32 TIMER_RS485_OBMEN;
  extern volatile u32 TIME_WORK_CONTROL;
  extern volatile u32 TIME_PPI_OK;
  extern volatile u32 TIMER_FINDER;
  extern u16 FLAG_ERROR_PPI;
   //----------------------------------------
 // SPORT Transmitter buffer
#define              TX_BUFFER_SIZE1 64
extern volatile u8        tx_buffer1[TX_BUFFER_SIZE1];
extern volatile unsigned int tx_wr_index1,
          tx_rd_index1,tx_counter1;
       
//-------------------------------------------------
 
unsigned int Timer_INT2(char );


//--------------------------------------------------------------------------//
// Function:	Timer0_ISR													//
//																			//
// Parameters:	None														//
//																			//
// Return:		None														//
//																			//
// Description:	This ISR is executed every time Timer0 expires.				//
//				The old LED pattern is shifted by one; the direction		//
//				depends on the state of sLight_Move_Direction, which is		//
//				changed in FlagA_ISR.										//
//--------------------------------------------------------------------------//
EX_INTERRUPT_HANDLER(Timer0_ISR)
{  
    ssync();
    *pTIMER_STATUS = 0x0001;
    ssync();
 
 // confirm interrupt handling
  tick_process=tick_process+1;
  tick_wait=tick_wait+1;
  TIMER_UDP_LS_DOWN++;
  tick_process_OK=tick_process_OK+1;
//  tick_TCP=tick_TCP+1;
  //tick_UDP=tick_UDP+1;
//  time_sekund=time_sekund+1; 
  time_uart  = time_uart +1;
  tick_PPI_wait = tick_PPI_wait + 1;
  tick_wait_LED_ERROR++;	
  TIMER_AVARIYA++;
  DELAY_RZV++;
  TIME_BR++;
  TIMER_REZERV++;
  TIMER_GBR_OK++;
  TIMER_RS485_OBMEN++;
  FLAG_TIMER_UART_K614++; //переменная работы уарта на повышеной скорости
  TIME_WORK_CONTROL++;
  TIMER_FINDER++;
 }

EX_INTERRUPT_HANDLER(DMA0_PPI_ISR)	// <--|declaration in  exception.h -->
{									//    |declaration with _pragma(interrupt) the ISR Startaddress 
	//disable the interrupt request
  
//ERROR_status_DMA  = *pDMA0_IRQ_STATUS; 
	*pDMA0_IRQ_STATUS = 0x1;

	  ssync(); 
   	flag_dsp_ok=1;	
    ssync(); 
    /*if (FLAG_SYNC_PF11)*/ PF&(~PF11); 
    /*if (FLAG_SYNC_PF8)*/  PF&(~PF8 ); 
    ssync();
    //if (Master_flag==0u) Master_BUS_1;  //занимаем шину на бэкплейне
    ssync();
 // FLAG_ERROR_PPI=*pPPI_STATUS; 
    TIME_PPI_END = *pTIMER2_COUNTER; 
    	    
}//end DMA0_PPI_ISR

EX_INTERRUPT_HANDLER(PPI_ERROR_ISR)
{
//	u16 flag;
	
	FLAG_ERROR_PPI=*pPPI_STATUS;
}


EX_INTERRUPT_HANDLER(SPI_DMA_ISR)  // <--|declaration in  exception.h -->
{                 //    |declaration with _pragma(interrupt) the ISR Startaddress 

  //disable the interrupt request

  *pDMA5_IRQ_STATUS = 0x1;
    ssync(); 
          
}//end DMA5_SPI_ISR



//--------------------------------------------------------------------------//
// Function:	FlagA_ISR													//
//																			//
// Parameters:	None														//
//																			//
// Return:		None														//
//																			//
// Description:	This ISR is called every time the button connected to PF8	//
//				is pressed.													//
//				The state of flag sLight_Move_Direction is changed, so the	//
//				shift-direction for the LED pattern in Timer0_ISR changes.	//
//--------------------------------------------------------------------------//
EX_INTERRUPT_HANDLER(FlagA_ISR)
{
	// confirm interrupt handling

           *pFIO_FLAG_C = PF0;
                      ssync();
              flag_1HZ_sync=1;

  ssync();
  
}


//--------------------------------------------------------------------------//
// Function:	FlagB_ISR													//
//																			//
// Parameters:	None														//
//																			//
// Return:		None														//
//																			//
// Description:	This ISR is called every time the button connected to PF4	//
  //				is pressed.													//
//				The state of flag sLight_Move_Direction is changed, so the	//
//				shift-direction for the LED pattern in Timer0_ISR changes.	//
//--------------------------------------------------------------------------//
EX_INTERRUPT_HANDLER(FlagB_ISR)
{
	// confirm interrupt handling
 	
	*pFIO_FLAG_C = PF4;   // прерывание от сигнала Тобм

  ssync();
  
  flag_event_sinhron=1; // выставляем флаг для подготовки отправки новой порции сигналов
  sch_event_sinhron++;
	ssync();
  
}


EX_INTERRUPT_HANDLER(UART_DMA_ISR)
  {     

    *pDMA7_IRQ_STATUS = 0x0001;

        ssync(); 

    *pUART_IER    &= ~0x0002; 

   ssync(); 

    *pDMA7_CONFIG &= ~0x0001;  

    ssync(); 
   
 flag_pachka_TXT=0;  //

 FLAG_UART_K607=0;

    RX_485;
ssync(); 
           
  } 


EX_INTERRUPT_HANDLER(SPORT1_TX_ISR)
  {     
    u16 a=0;
    u16 data;

    *pDMA4_IRQ_STATUS = DMA_DONE;
 
     FLAG_SPORT1_TX=1;
ssync(); 
   if (tx_counter1)
      {
       --tx_counter1;
	
      data = tx_buffer1[tx_rd_index1++];
	  
	  if (data!=0x08)  
	  {  
		a = data<<2;   
        data = (a|(0x01<<10))|0x1;
		
	  } else data = 0xffff;//чтобы не грузить отладочный терминал!!!
	ssync(); 	
     *pSPORT1_TX16 = data;
ssync(); 
       if (tx_rd_index1 == TX_BUFFER_SIZE1) tx_rd_index1=0;
      }
       else
         {
          *pSIC_IMASK &= ~0x01000;
         }
  
           
  }

#define RX_BUFFER_SIZE1 650  
volatile unsigned int rx_wr_index1,rx_rd_index1,rx_counter1;
volatile unsigned char rx_buffer_overflow1;   
        char rx_buffer1[RX_BUFFER_SIZE1];  
 
EX_INTERRUPT_HANDLER(SPORT1_RX_ISR)
{     
    u16 a=0;
    u16 data;

    *pDMA3_IRQ_STATUS = DMA_DONE;
 ssync(); 
     FLAG_SPORT1_RX++;
ssync(); 	 
	 data = *pSPORT1_RX16;
ssync(); 
	 //--------------------
  rx_buffer1[rx_wr_index1]=data;
  if (++rx_wr_index1 == RX_BUFFER_SIZE1) rx_wr_index1=0;
  if (++rx_counter1 == RX_BUFFER_SIZE1)
	{
		rx_counter1=0;
		rx_buffer_overflow1=1;
	};
 //-------------------- 
           
} 
  
   
  
