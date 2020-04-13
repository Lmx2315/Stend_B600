
#include "BF533 Flags.h"

//#define       CORE_IDLE                       0x40
//#define       PLL_LOCKED                      0x20
#define       SLEEP_mode                      0x10
#define       DEEP_SLEEP_mode                 0x08
#define       ACTIVE_PLLDISABLED_mode         0x04
#define       FULL_ON_mode                    0x02
#define       ACTIVE_PLLENABLED_mode          0x01

  //  *pPLL_CTL;
  //  *pPLL_DIV
  //  *pVR_CTL
  //  *pPLL_STAT
  //  *pPLL_LOCKCNT
  //  *pSWRST
  // есть соотв. маски
  //    PLL_CTL Masks:
// #define    PLL_CLKIN           0x0      // Pass CLKIN to PLL
// #define    PLL_CLKIN_DIV2      0x1      // Pass CLKIN/2 to PLL
  //     PLL_OFF           //   0x2  Shut off PLL clocks
  //     STOPCK_OFF        //   0x8  Core clock off
  //     PDWN              //  0x20  Put the PLL in a Deep Sleep state
  //                       //  0x40  Input Delay 200 ps
  //                       //  0x80  Output Delay 200 ps
  //     BYPASS            // 0x100  Bypass the PLL
  // PLL_DIV Masks:
  //     SCLK_DIV(x)  (x)  //    SCLK = VCO / x
// #define   CCLK_DIV1         0x00 //  CCLK = VCO / 1   двигать на 4 влево!
  //       CCLK_DIV2       //  0x10   CCLK = VCO / 2
  //       CCLK_DIV4       //  0x20   CCLK = VCO / 4
  //       CCLK_DIV8       //  0x30   CCLK = VCO / 8
  //
  // SWRST Mask  - SYSTEM_RESET
  //       <<9           VCO Frequency
  //    MSEL[5:0]    PLL_CLKIN   PLL_CLKIN_DIV2 ( *pPLL_CTL )
  //      0              64x    32x
  //      1              1x     0.5x
  //      2              2x      1x
  //      N = 3Ц62       Nx      0.5Nx
  //      63             63x     31.5x
  //
  //
  //

  unsigned ppp;
  // ”становка тактовой частоты
  //  *pPLL_DIV = 0x0005; //CCLK = VCO /1, SCLK = VCO / 5
  //  *pPLL_CTL = 0x2C00; //MSEL[5:0](Multiplier Select) = 5 = 5*27= 594 ћ√ц
  void  CPUAccel(void)
   {; 
   	//*pPLL_CTL= ( 3 << 9 )|PLL_CLKIN;    // VCO= 27*3=81 MHZ
    //*pPLL_DIV= ( CCLK_DIV1 << 4 )| 0x5; // CCLK=VCO, SCLK=VCO/5 
   }
