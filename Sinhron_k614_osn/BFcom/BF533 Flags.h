#ifndef  __BF533_FLAGS_DEFINED
  #define __BF533_FLAGS_DEFINED

/*-=-=-=--=-=-=-=-=-=-=-
   Header files
  =-=-=-=-=-=-=-=-=-=-*/
#include <sys\exception.h>

#include <cdefBF533.h>

/*=-=-=-=-=-=-=-=-=-=-=
   Symbolic constants
  -=-=-=-=-=-=-=-=-=-=-*/

// addresses for Port B in Flash A
#define pFlashA_PortB_Dir	(volatile unsigned char *)0x20270007
#define pFlashA_PortB_Data	(volatile unsigned char *)0x20270005

/*-=-=-=-=-=-=-=-=-=-=-=-=-
   Global variables
  =-=-=-=-=-=-=-=-=-=-=-=-=*/

extern short sLight_Move_Direction;

/*-=-=-=-=-=-=-
  Prototypes
  =-=-=-=-=-=-=*/
// in file Initialization.c
void Init_Flags(void);
void Init_Timers(void);
void Init_EBIU(void);
void Init_Flash(void);
void Init_Interrupts(void);
void Init_RTC (void);
void Init_SPI(void);
void Init_DMA(unsigned char);
void Init_PPI(unsigned char);


// in file ISRs.c
EX_INTERRUPT_HANDLER(Timer0_ISR);
EX_INTERRUPT_HANDLER(FlagA_ISR);
EX_INTERRUPT_HANDLER(FlagB_ISR);

EX_INTERRUPT_HANDLER(RTC_ISR2);
EX_INTERRUPT_HANDLER(UART_ISR);
EX_INTERRUPT_HANDLER(UART_DMA_ISR);
EX_INTERRUPT_HANDLER(UART_ERR_ISR);
EX_INTERRUPT_HANDLER(DMA0_PPI_ISR);
EX_INTERRUPT_HANDLER(SPI_DMA_ISR);
EX_INTERRUPT_HANDLER(SPORT1_TX_ISR);
EX_INTERRUPT_HANDLER(SPORT1_RX_ISR);
EX_INTERRUPT_HANDLER(PPI_ERROR_ISR);

#endif //__BF533_FLAGS_DEFINED

