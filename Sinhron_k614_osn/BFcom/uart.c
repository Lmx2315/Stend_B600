
#include "BF533 Flags.h"
#define UART

#ifdef UART
extern unsigned char RcvBufOverflow_flag;      // когда не читаем ввод и данные тер€ютс€
                                        // при циклическом буфере
extern  unsigned char BufIsRead_flag;        // установим, когда считаны все введ. данные
extern  unsigned char Data4TrAbsent_flag;    // данные дл€ передачи отсутств.

extern  unsigned char CyclEnd_flag;

//--------------------------------------------------------
#define RX_BUFFER_SIZE0 256  
volatile unsigned int rx_wr_index0,rx_rd_index0,rx_counter0;   
volatile char rx_buffer0[RX_BUFFER_SIZE0];   

// This flag is set on USART0 Receiver buffer overflow
  char rx_buffer_overflow0;
//-------------------------------------------------
/*-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
  CLKIN is the input clock.The ADSP-BF533 EZ-Kits CLKIN is 14.7456MHz

  =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=--=*/
 //unsigned int CLKIN = 1474560;  // clock MHz
 
 unsigned int CLKIN = 2000000;  // clock MHz

 #define  MEGA          10 
  int UART_getSCLK(void)
  {
	unsigned short tempPLLCTL, tempPLLDIV;
	unsigned int MSEL1, SSEL1, DF1, VCO1, SCLK1;

	tempPLLCTL = *pPLL_CTL;
	tempPLLDIV = *pPLL_DIV;

	//get MSEL, SSEL, DF 
	MSEL1 = ((tempPLLCTL & 0x7E00) >> 9);
	
	//MSEL1 = 10;
	SSEL1 = tempPLLDIV & 0x000f;

	DF1   = tempPLLCTL & 0x0001;

	if (DF1 == 1) CLKIN = CLKIN/2;

	VCO1  = MSEL1 * CLKIN;
	SCLK1 = VCO1/SSEL1;

	return  SCLK1 * MEGA;
  }


/*-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
  8 data bits, no parity, 1 stop bit mode
  =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=*/
void UART_init ( int speed )
 { int divisor=0, SCLK=0;

 // use system clock to calc divisor
  SCLK = UART_getSCLK();
   ssync();
   divisor = SCLK  / ( (int) speed * 16);
   ssync();
  // enable UART clock.
   *pUART_GCTL = UCEN;
  // Read period value and apply formula:  divisor = period/16*8
  // Write result to the two 8-bit DL registers (DLH:DLL).
   *pUART_LCR = DLAB;
   *pUART_DLL = divisor;       //???
   *pUART_DLH = divisor>>8;    //???
  // Clear DLAB again and set UART frame to 8 bits, no parity, 1 stop bit.
   *pUART_LCR = WLS(8);
   ssync();
 }




 EX_INTERRUPT_HANDLER(UART_ERR_ISR)
 {
 ;	
 }
 //UART_THR, UART_RBR
 EX_INTERRUPT_HANDLER(UART_ISR)
  { volatile unsigned stat;
    volatile unsigned t;
    
    stat= *pUART_IIR;
    stat= stat>>1;
    
   // *pUART_IER &= ~0x0002; 
    
    if ( stat == 0x0 )
      {
        ;	
      }
 	
     else if ( (stat&0x2) == 0x2 )  //  Receive data ready.
            {                       //  добавить здесь: переполн. входн. буфера
             t= *pUART_RBR;
			 
		//	 if (t!=0)
				 {
					 //--------------------
					  rx_buffer0[rx_wr_index0]=t;
					  if (++rx_wr_index0 == RX_BUFFER_SIZE0) rx_wr_index0=0;
					  if (++rx_counter0 == RX_BUFFER_SIZE0)
						{
						rx_counter0=0;
						rx_buffer_overflow0=1;
						};

					//-------------------- 
				 }
            }
  } //end of  EX_INTERRUPT_HANDLER
  
  
  
 #endif
  

