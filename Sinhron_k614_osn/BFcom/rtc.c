#include "BF533 Flags.h"
#define  CLEAR_ALL_IRQS  0x807F      // Clears ALL RTC Interrupts

static unsigned statu;

extern unsigned CntDown; 
extern unsigned char DontConnect_flag;

//static unsigned day;
//static unsigned hour;
//static unsigned min1;
//static unsigned sec;
extern unsigned tested;
/*-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
  Initialize RTC wake-up and go to Deep Sleep Mode
 =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=*/
 void Init_RTC (void)
  {
	*pSIC_IWR = 0x80;     // ??? enable only RTC interrupt for wake-up event
	*pRTC_PREN = 0x1;     //  enable pre-scalar for 1 Hz RTC
    while ((*pRTC_ISTAT&0x8000)==0);    //wait for Write Complete

    *pRTC_SWCNT = 0x0010 ;          // RTC now operational at 1 Hz
    while ((*pRTC_ISTAT&0x8000)==0);   // wait for Write Complete
                            //а нафига?
    //*RTC_ICTL  |= 0x1;             // enable Stop-Watch interrupt
    //while (!*RTC_ISTAT&&0x8000);   // wait for Write Complete

    *pRTC_ICTL =  SIE | MIE | HIE | SWIE;// | AIE | DIE | DAIE | WCIE
    while ((*pRTC_ISTAT&0x8000)==0);  // wait for Write Complete

  }


 /*-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
   RTC interrupt - updates LED display
   LED4 Toggles Every Second, LED5 Every Minute
   LED6 Toggles Every Hour, LED7 Toggles Every Day
  =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-*/
  EX_INTERRUPT_HANDLER(RTC_ISR2)
   {
     statu=*pRTC_ISTAT;    // read IRQ Status
     // The register RTC_SWCNT can be programmed to any value between 0 and (2^16 – 1) seconds.
     // This is a range of 18 hours, 12 minutes, and 15 seconds.
     if ( statu&SWEF != 0 )
       {   ;
         //прочие действия по завершению обратного счета(секундомер)
       }
     // The RTC Alarm register (RTC_ALARM) is programmed by software for the
     // time (in hours, minutes, and seconds) the alarm interrupt occurs.
     // имеет тот же формат, что и  RTC_ISTAT
     if ( (statu&AEF) != 0 )
       {   ;
         //прочие действия системы по совпадению с будильником

       }
     if ( (statu&SEF) != 0 )
       { //sec= *pRTC_STAT&RTSEC;
         //прочие действия системы по истечении секунды
         if ( DontConnect_flag )
           CntDown--;
         if ( !CntDown )      //таймаут- зажигаем светодиод
           *pFlashA_PortB_Data = 0x1; //
       }
     if ( (statu&0x8) != 0 )  //MEF
       {// min= (*pRTC_STAT&RTMIN)>>6;

         tested=0;
         //прочие действия системы по истечении минуты


       }
     if ((statu&HEF) != 0 )
       { //hour= (*pRTC_STAT&RTHR)>>12;
         //прочие действия системы по истечении часа
       }
     if ((statu&DEF) != 0 )
       {
#ifdef Days_after2000
        ; //day= (*pRTC_STAT&RTDAY)>>17+DAFT2000;
#else
         ;//day= (*pRTC_STAT&RTDAY)>>17;
#endif
       }
     if ((statu&DAEF) != 0 )
       { ;
          //прочие действия системы по совпадению с будильником

       }
      *pRTC_ISTAT=0xf;
         while ((*pRTC_ISTAT&0x8000)==0);
         statu=*pRTC_ISTAT;

     statu=0;
	 *pRTC_ICTL=0;
	 while ((*pRTC_ISTAT&0x8000)==0);
   }


