
#include "BF533 Flags.h"
#define tim0e
#define tim1e

#define     RTC_INT_EN              0x80
#define     UART_TX_INT_EN       0x08000
#define     UART_RX_INT_EN       0x04000
#define     UART_ERR_INT_EN      0x40

#define     PF_INT_A_EN          0x80000
#define     PF_INT_B_EN          0x100000
#define     TIMER0_INT_EN        0x10000
#define     TIMER1_INT_EN        0x20000
#define     TIMER2_INT_EN        0x40000
#define     DMA0_INT_EN          0x100

#define     Line_Length          0x10
#define     Frame_Length         0x1
	

#define UART
#define  u16 unsigned short
#define  u32 unsigned int   
#define  u8  unsigned char
//#include "system.h"


extern  unsigned char 	 DSP_in1[64];
extern	char 		dma_buf;		



/*-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
   Function:	Init_Flags

   Description:	 
 -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-*/

void Init_Flags(void) {	

*pFIO_MASKA_D=0;
*pFIO_MASKB_D=0;
*pFIO_EDGE	 =0;
*pFIO_POLAR	 =0;

			      //  
	*pFIO_INEN		=  0x0000|PF0|PF5|PF4|PF7;  //входы             
	// PF0  - вход прерывание от сигнала 1 сек Тно,
	// PF5  - ВХОД ПРЕРЫВАНИЕ ОТ 100/10, PF4 - вход прерывание от Тобм,
	// PF7  - ход прерывание от K615,PF8 -ход прерывание от K612-К613
	// PF10 - прерывание от системы резервирования

	*pFIO_DIR		=  0x0000|PF1|PF3|PF6|PF8|PF9|PF10|PF11; // устанавливаем  PF1,PF3,PF6,PF8,PF9,PF11  на выход 
	*pFIO_EDGE		=  *pFIO_EDGE|PF4|PF0;        //|PF4,PF0 ПО ФРОНТУ 
	//*pFIO_MASKA_D	=  *pFIO_MASKA_D|PF5    ;        // отменены прерыванию по флагам - все замаскированы, КРОМЕ PF5, прерывание А
	*pFIO_MASKB_D	=  *pFIO_MASKB_D|PF4;        // отменены прерыванию по флагам - все замаскированы, КРОМЕ PF4, прерывание B
	*pFIO_MASKA_D	=  *pFIO_MASKA_D|PF0;    // отменены прерыванию по флагам - все замаскированы, КРОМЕ ,PF0 прерывание A   //PF7
	//*pFIO_POLAR		=  *pFIO_POLAR	|PF7;            // реакция на спад

	
 }
 
/*-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
   Function:	Init_SPI

   Description:	This function configures SPI bus.
 -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-*/

void SPIInit (u16 sclkDiv, u16 send16Bit){
  *pSPI_BAUD=sclkDiv;
  *pSPI_CTL=TDBR_CORE | SZ | (send16Bit ? SIZE : 0) | MSTR;//TDBR_CORE RDBR_CORE
  *pSPI_CTL=*pSPI_CTL|SPE;
}


void Init_SPI(void) { //slave конфигурация
	*pSPI_BAUD		= 0xffc0;
	//*pSPI_CTL		= SPE|MSTR|EMISO|PSSE|GM|SZ|TIMOD;
	*pSPI_CTL=TDBR_CORE | SZ | MSTR |PSSE| SPE;
	*pSPI_FLG		= FLS3;
	
 }
  
 
 
/****************************************************************************
 Function:		Установки PLL и настройки чатоты ядра 										
 Parameters:	short CoreCLOCK_multiplier, short SCLK_divider														
 Return:		None														
 Description:	CLKIN=тактовая частота (кварц) VCO(частота внутр.)=CLKIN*MSEL;
				CCLK(частота ядра)=VCO/CSEL; SCLK(частота перефирии)=VCO/SSEL.							
*****************************************************************************/

void Set_PLL(short CoreCLOCK_multiplier, short SCLK_divider)
{ 
    
  short previous_PLL= *pPLL_CTL;
  short previous_SIC_IWR = *pSIC_IWR;
  short new_PLL= (previous_PLL & 0x81ff) | ((CoreCLOCK_multiplier & 0x3f) <<9);
   
  if (new_PLL != previous_PLL) {		  //пропустить,если тоже
		  	
	*pSIC_IWR = (previous_SIC_IWR | 0x1); // для внесения изменений PLL
	*pPLL_CTL = new_PLL;
		// 0001 0100 0000 0000; //Настройка PLL
		//  ||| |||! |||  | |+-DF=1 - CLKIN/2
		//  ||| |||! |||  | +--PLL OFF=0-включить PLL
		//  ||| |||! |||  +----STOPCK=0 - CCLK вкл
		//  ||| |||! ||+-------PDWIN=1 - Power Down
		//  ||| |||! |+--------INPUT DELAY
		//  ||| |||! +---------OUTPUT DELAY
		//  ||| |||+-----------BYPASS=1 обход PLL
		//  +++ +++------------MSEL - выбор множителя для VCO

	ssync();
  		
 	idle();							  

 	*pSIC_IWR = previous_SIC_IWR;		 
	ssync();
		
  }

  	*pPLL_DIV = (*pPLL_DIV & 0xFFF8) | SCLK_divider;
  	ssync();
  
}



/****************************************************************************
 Function:		Инициализация UART0													
 Parameters:	None														
 Return:		None														
 Description:					
*****************************************************************************/
void Init_UART(void)
{  
    
    	*pUART_LCR	=0x0083;  //разрешить доступ к регистрам делителя  
        // 0000 0000 1000 0011;  //Настройка порта UART0
		// 			 |||| ||++-WLS[1:0]=11 :Длина слово 8бит
		//      	 |||| |+---STB[2]=0 :Кол стоп_бит-1
		//      	 |||| +----PEN[3]=0 :Разрешние проверки четность/нечетн
		//       	 |||+------EPS[4]=0 :Вид проверки-чет/нечет 
		//      	 ||+-------STP[5]=0 :Фиксация бита четности
		//           |+--------SB[6]=0  :Разрыв соединения Тх=1
		//           +---------DLAB[7]=1:Разрешения доступа к регистрам UART_DLL,DHH 
		
//Коэфф деления для частоты СОМ порта 9600бод при SCLK=100МГц: 100000000/16/9600=651		
    	*pUART_DLL	=0x8B;   //мл. байт делителя частоты для СОМ 
     	*pUART_DLH	=0x02;	 //ст. байт делителя частоты для СОМ
     	ssync();

    	*pUART_LCR	=0x0003;  //разрешить доступ к регистрам приема-передачи  						  
     	ssync();

}



/*-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
   Function:	Init_Timers

   Description:	This function initialises Timer0 for PWM mode.
				It is used as reference for the 'shift-clock'.
 =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-*/

void Init_Timers(void)
 {

	*pTIMER0_CONFIG	= 0x0019;
	*pTIMER0_PERIOD = 100000;//1 мc BCLK=125 Mhz
    *pTIMER0_WIDTH  = 0x000006B6C;

	*pTIMER_ENABLE		= 0x0001;
/*
	*pTIMER1_CONFIG		= 0x0019;
	*pTIMER1_PERIOD		= 0x0001000;
	*pTIMER1_WIDTH		= 0x0000800;
	*pTIMER_ENABLE		= 0x0003;
*/
	*pTIMER2_CONFIG		= 0x0007;  //режим счётчика импульсов
	*pTIMER2_PERIOD		= 0xffffffff;
	*pTIMER2_WIDTH		= 0x0000;

	*pTIMER_ENABLE		= 0x0005; //включаем таймеры 0  и 2
 }

/*-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
   Function:	Init_EBIU

   Description:	This function initialises and enables the asynchronous
				memory banks for the External Bus Interface Unit (EBIU), so
				that access to Flash A is possible.
 -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-*/

void Init_EBIU(void)
 {
	*pEBIU_AMBCTL0	= 0x7bb07bb0;
	*pEBIU_AMBCTL1	= 0x7bb07bb0;
	*pEBIU_AMGCTL	= 0x000f;
 }

/*-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
   Function:	Init_Flash

   Description:	This function sets the pin direction of Port B in Flash A
				to output.
				The LEDs on the ADSP-BF533 EZ-KIT are connected to Port B.

  =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-*/


void Init_Flash(void)
 {
	*pFlashA_PortB_Dir = 0x3f;
 }
 
 
 
 
 void Init_DMA(unsigned char a)
{
	//Target address of the DMA
	*pDMA0_START_ADDR = DSP_in1;
	//Line_Length 16bit transfers will be executed
	*pDMA0_X_COUNT =a;  //*pDMA0_X_COUNT =35;
	//The modifier is set to 1 because of the 8bit transfers
	*pDMA0_X_MODIFY = 0x1;	
	//Frame_Length 16bit transfers will be executed
	*pDMA0_Y_COUNT = 0x0;
	//The modifier is set to 2 because of the 16bit transfers
	*pDMA0_Y_MODIFY = 0x1;	
    //PPI Peripheral is used
	*pDMA0_PERIPHERAL_MAP = 0x0;	
	//DMA Config: Enable DMA | Memory write DMA | 2-D DMA | Discard DMA FIFO before start | enable assertation of interrupt | NDSIZE for stop mode | Enable STOP DMA
	*pDMA0_CONFIG =  0x0;
	*pDMA0_CONFIG = DI_EN|WDSIZE_8|FLOW_AUTO;
	*pDMA0_CONFIG = DMAEN |*pDMA0_CONFIG;

}//end Init_DMA


void Init_UART_dma(void)
{
    *pUART_LCR = 0x0003;                                        
    *pUART_IER = 0x0000;        
    *pUART_GCTL= 0x0030;        
}

void Init_TxUART_DMA( char *buff, unsigned int size)
{
    *pDMA7_CONFIG = 0x0080;        
    *pDMA7_START_ADDR = buff;
    *pDMA7_X_COUNT = size;
    *pDMA7_X_MODIFY = 1;  
    *pDMA7_CONFIG = DI_EN|WDSIZE_8| FLOW_AUTO|RESTART;
    //UART_TX Peripheral is used
    
}

//вкл передачу по ДМА
void TxUART_en(void)
{
    *pDMA7_CONFIG |= 0x0001; 
    ssync();   
    *pUART_IER |= 0x0002;        

}

//выкл передачу по ДМА 
void TxUART_dis(void)
{
    *pUART_IER &= ~0x0002;  
    ssync();      
    *pDMA7_CONFIG &= ~0x0001;        
}


 void Init_DMA_UART( char *s, unsigned l)
{
	//Target address of the DMA
	*pDMA7_START_ADDR = s;

	//Line_Length 16bit transfers will be executed
	*pDMA7_X_COUNT =l;

	//The modifier is set to 1 because of the 8bit transfers
	*pDMA7_X_MODIFY = 0x1;	
														
	//Frame_Length 16bit transfers will be executed
	*pDMA7_Y_COUNT = 0x0;

	//The modifier is set to 2 because of the 16bit transfers
	*pDMA7_Y_MODIFY = 0x1;	

	//UART_TX Peripheral is used
	*pDMA7_PERIPHERAL_MAP = 0x7;	
	
	//DMA Config: Enable DMA | Memory write DMA | 2-D DMA | Discard DMA FIFO before start | enable assertation of interrupt | NDSIZE for stop mode | Enable STOP DMA

	*pDMA7_CONFIG =  0x0;

	*pDMA7_CONFIG = DI_EN|WDSIZE_8|RESTART| FLOW_AUTO;
	
	*pDMA7_CONFIG = DMAEN |*pDMA7_CONFIG;

}//end Init_DMA
 
 
 //**************************************************************************
 // PPI
 //**************************************************************************
 
 void Init_PPI(unsigned char a)
{

	*pPPI_CONTROL=0x0; 
		
    *pPPI_CONTROL= DLEN_8|PORT_DIR|XFR_TYPE|ALT_TIMING;//
		
	*pPPI_COUNT= a-1; // число данных в линии

	*pPPI_FRAME= 0x1; // число линий во фрейме
							
	*pPPI_CONTROL =	*pPPI_CONTROL|PORT_EN; //запуск PPI

}//end Init_PPI

 

/*-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
   Function:	Init_Interrupts

   Description:	This function initialises the interrupts for Timer0 and

 =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-*/

void Init_Interrupts(void)
{
	// assign core IDs to interrupts
    *pSIC_IAR0 =  0xfffff8ff;                   
    *pSIC_IAR1 =  0x74f21ff0;   	// map DMA0 PPI Interrupt -> IVG8    ; DMA7 -> IVG14 ; SPORT1 TX->IVG9; SPORT1 RX->IVG7        
    *pSIC_IAR2 =  0xfff35ff6;       // PF A Interrupt ->   ivg12; Timer0 Interrupt -> IVG8,PF B Interrupt -> IVG13
        
        ssync(); 

		// assign ISRs to interrupt vectors

	register_handler( ik_ivg9, SPORT1_TX_ISR); // 
	
	register_handler( ik_ivg8, SPORT1_RX_ISR); // 
			
	register_handler( ik_ivg7, DMA0_PPI_ISR); // assign DMA0 PPI ISR to interrupt vector 8	

//	register_handler( ik_ivg9, SPI_DMA_ISR );  // SPI_rsv_DMA -> IVG9
    
	register_handler( ik_ivg13, Timer0_ISR );   // Timer0 ISR -> IVG 13

    register_handler( ik_ivg12, FlagA_ISR ); // FlagA ISR  -> IVG 12

    register_handler( ik_ivg10, FlagB_ISR ); // FlagB ISR  -> IVG 10
 
    register_handler( ik_ivg11, UART_ISR );  // UART_TR+ UART_RCV -> IVG11

    register_handler( ik_ivg14, UART_DMA_ISR );  // UART_TR -> IVG14+
	
	register_handler( ik_ivg15, PPI_ERROR_ISR );  // PPI_ERROR_ISR -> IVG15+

   // register_handler( ik_ivg7, UART_ERR_ISR );    

ssync(); 

       *pSIC_IMASK = (DMA3_IRQ|
					  DMA4_IRQ|
					  DMA7_IRQ|
			   UART_RX_INT_EN |
  			       DMA0_INT_EN|
			//	   PPI_ERR_IRQ|
				    TIMER0_IRQ|
					   PFA_IRQ|
					   PFB_IRQ);//  DMA4_IRQ - SPORT1_TX_ISR; DMA3_IRQ - SPORT1_RX_ISR
    
	   *pUART_IER  = (ERBFI| ELSI);
  
    // configure interrupt
	//  register_handler( ik_ivg8, RTC_ISR2 ); // RTC ISR    -> IVG 8
    
}

void InitSDRAM(void)
{
//    SDRAM Refresh Rate Setting
*pEBIU_SDRRC = 0x304; //RDIV =((100 MHz x 64 ms)/8192) - (6+3) =772.25 =772 = 0x304 clock cycles
ssync();

//SDRAM Memory Global Control Register
 *pEBIU_SDGCTL = ~CDDBG & // Control disable during bus grant off
				 ~FBBRW & // Fast back to back read to write off
				 ~EBUFE & // External buffering enabled off
				 ~SRFS & // Self-refresh setting off
				 ~PSM & // Powerup sequence mode (PSM) first
				 ~PUPSD & // Powerup start delay (PUPSD) off
				 ~TCSR & // Temperature compensated self-refresh at 85
				 ~EMREN | // Extended mode register enabled on
				 PSS | // Powerup sequence start enable (PSSE) on
				 TWR_3 | // Write to precharge delay TWR = 2 (14-15 ns)
				 TRCD_2 | // RAS to CAS delay TRCD =3 (15-20ns)
				 TRP_2 | // Bank precharge delay TRP = 2 (15-20ns)
				 TRAS_5 | // Bank activate command delay TRAS = 4
				 PASR | // Partial array self refresh 
				 CL_3 | // CAS latency
				 SCTLE ; // SDRAM clock enable34;
ssync();

//SDRAM Memory Bank Control Register
 *pEBIU_SDBCTL = EBCAW_10 | //Page size 1024
				 EBSZ_64 | //64 MB of SDRAM
				 EBE; //SDRAM enable			 
}

void init_SPORT0 (unsigned int SPORT0_SCLK)  //инициализация канала SPORT0

{

short divider;
unsigned int SCLK_VALUE=100000000;

   *pSPORT0_TCR1 =  TFSR | ITFS | ITCLK; /* TSPEN  запишем позже! */ 
  // *pSPORT0_TCR1 = LATFS | LTFS | TFSR | ITFS | ITCLK; /* TSPEN  запишем позже! */  
   *pSPORT0_TCR2 = 31; /* длина передачи минус 1 */ 
   
   /*  Настраиваем регистр приёма, фаза 0 полярность 0  
    */
  
   *pSPORT0_RCR1 =  RCKFE  |  RFSR; /* RSPEN запишем позже! */ 	
   *pSPORT0_RCR2 = 31; /* 32 - 1; Длина приемника 32 бита - у нас такой АЦП */
     

    /* Расчитаем делитель и запишем его в регистры тактовой частоты приема и передачи */
    divider = SCLK_VALUE / (SPORT0_SCLK * 2 - 1);

    /* Делитель в оба регистра */
    *pSPORT0_TCLKDIV = divider;
    *pSPORT0_RCLKDIV = divider;
   

    /* Делители для кадровой синхронизации ??? */
    *pSPORT0_TFSDIV = 0;

}

void init_SPORT1 (unsigned int SPORT1_SCLK)  //инициализация канала SPORT0

{

short divider;
unsigned int SCLK_VALUE=100000000;

   *pSPORT1_TCR1 =  TFSR | ITFS | ITCLK |TLSBIT; /* TSPEN  запишем позже! */ 
   *pSPORT1_TCR2 = 10; /* длина передачи минус 1 */ 
   
   /*  Настраиваем регистр приёма, фаза 0 полярность 0  
    */
  
   *pSPORT1_RCR1 =  RCKFE  |  RFSR; /* RSPEN запишем позже! */ 	
   *pSPORT1_RCR2 = 10; /* 32 - 1; Длина приемника 32 бита - у нас такой АЦП */
   
   

    /* Расчитаем делитель и запишем его в регистры тактовой частоты приема и передачи */
    divider = SCLK_VALUE / (SPORT1_SCLK * 2 - 1);

    /* Делитель в оба регистра */
    *pSPORT1_TCLKDIV = divider;
    *pSPORT1_RCLKDIV = divider;
   

    /* Делители для кадровой синхронизации ??? */
    *pSPORT1_TFSDIV = 0;

}
