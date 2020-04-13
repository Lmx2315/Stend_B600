
//"C:\VisualDSP Projects\Init_Code_BF533\Release\Init_Code_BF533.dxe"

/*-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
  (C) Copyright 2005 - 
   Developer:  Sergey Senzenist, e-mail:senzenist@mail.ru
   Pjoject Name:   OPAU
   Date Last Modified:  06/05/16
   Version:  Beta
   Compiled with:  VisualDSP++ 5.0
                   Product Version: 1.0.0.1
              
   Hardware:       ADSP-BF533 , CLKIN 20 MHZ
  =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-*/
#include <cdefBF532.h>
#include "BF533 Flags.h"
#include <ccblkfn.h>
#include <sysreg.h>
#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include <time.h>

#define dT_kalibrovka 304
#define dT_pomeha 512   
#define Test_delay 5
#define START_BYTE 0xAA;

#define UART_SPD_K615 256000
#define UART_SPD_K607 256000
//#define UART_SPD_K614 256000  
#define UART_SPD_K614 256000   
#define Number_FV 2



#define  u16 unsigned short
#define  u32 unsigned int   
#define  u64 unsigned long long 
#define  u8  unsigned char
//------------------------------------------------------------------------

#define  CPUacceler          1     //������ BF533
#define  UART
#define byte unsigned char

#define PF *pFIO_FLAG_D=*pFIO_FLAG_D


#define PF11_1  *pFIO_FLAG_D=*pFIO_FLAG_D|(PF11) //������� ������� �� PF10 
#define PF11_0  *pFIO_FLAG_D=*pFIO_FLAG_D&(~PF11) //������� ���� �� PF10 

#define PF10_1  *pFIO_FLAG_D=*pFIO_FLAG_D|(PF10) //������� ������� �� PF10 
#define PF10_0  *pFIO_FLAG_D=*pFIO_FLAG_D&(~PF10) //������� ���� �� PF10 

#define PF9_1  *pFIO_FLAG_D=*pFIO_FLAG_D|( PF9) //������� ������� �� PF10 
#define PF9_0  *pFIO_FLAG_D=*pFIO_FLAG_D&(~PF9) //������� ���� �� PF10 

#define PF8_0  *pFIO_FLAG_D=*pFIO_FLAG_D&(~PF8) //������� ���� �� PF8 
#define PF8_1  *pFIO_FLAG_D=*pFIO_FLAG_D|(PF8)  //������� ������� �� PF8 

#define PF6_0  *pFIO_FLAG_D=*pFIO_FLAG_D&(~PF6) //������� ���� �� PF6 
#define PF6_1  *pFIO_FLAG_D=*pFIO_FLAG_D|(PF6) //������� ������� �� PF6 


#define PF0_0  *pFIO_FLAG_D=*pFIO_FLAG_D&(~PF0) //������� ���� �� PF0
#define PF0_1  *pFIO_FLAG_D=*pFIO_FLAG_D|(PF0) //������� ������� �� PF0 

#define PF1_0  *pFIO_FLAG_D=*pFIO_FLAG_D&(~PF1) //������� ���� �� PF1
#define PF1_1  *pFIO_FLAG_D=*pFIO_FLAG_D|(PF1) //������� ������� �� PF1 


#define IN_PF5  (*pFIO_FLAG_D&PF5 ) //������� ��������� � ���� PF5 
#define IN_PF7  (*pFIO_FLAG_D&PF7 ) //������� ��������� � ���� PF7 
#define IN_PF10 (*pFIO_FLAG_D&PF10) //������� ��������� � ���� PF10    


#define SYNC_PPI_0  PF11_0
#define SYNC_PPI_1  PF11_1 

#define Master_BUS_0  PF6_0
#define Master_BUS_1  PF6_1    

#define CS_ctrl_TNC_TNO_on  PF0_0
#define CS_ctrl_TNC_TNO_off PF0_1    

#define RTS_485_on  PF10_1
#define RTS_485_off PF10_0

#define  CurYear          2018
#define  CurMonth           11
#define  CurDate            02

#define initial /* */
#define pSPORT0_RX16    ((volatile unsigned short *)SPORT0_RX)


#define TX_485 PF10_1  
#define RX_485 PF10_0   

#define POWER_OFF  0x7fffffff  //
#define POWER_ON  (0x7fffffff)&(u32)(~(0x1<<8))

#define ALL_OK    (0x7fffffff)&((u32)(~(0x1<<8)))&((u32)(~(0x1<<3)))&((u32)(~(0x1<<2)))

#define ERROR_sport (0x7fffffff)&(u32)(~(0x1<<8)) //���������� �� ������ SPORT ��� ������
//#define ERROR_sport 0x00000000 //���������� �� ������ SPORT ��� ������
#define TIMEOUT_UDP 2000u
#define OK_DELAY 1000u 
#define N_BUFF_SPORT 606
// #define N_BUFF_SPORT 320
  /**
 * The 8-bit signed data type.
 */
typedef char int8;
/**
 * The volatile 8-bit signed data type.
 */
typedef volatile char vint8;
/**
 * The 8-bit unsigned data type.
 */
typedef unsigned char uint8;
/**
 * The volatile 8-bit unsigned data type.
 */
typedef volatile unsigned char vuint8;

/**
 * The 16-bit signed data type.
 */
typedef short int16;
/**
 * The volatile 16-bit signed data type.
 */
//typedef volatile int vint16;
/**
 * The 16-bit unsigned data type.
 */
typedef unsigned short uint16;
/**
 * The volatile 16-bit unsigned data type.
 */
//typedef volatile unsigned int vuint16;
/**
 * The 32-bit signed data type.
 */
typedef int int32;
/**
 * The volatile 32-bit signed data type.
 */
//typedef volatile long vint32;
/**
 * The 32-bit unsigned data type.
 */
typedef unsigned int uint32;
/**
 * The volatile 32-bit unsigned data type.
 */
//typedef volatile unsigned long vuint32;
    
typedef uint8		    u_char;	/**< 8-bit value */
typedef uint16			u_short;	/**< 16-bit value */
typedef uint16			u_int;		/**< 16-bit value */
typedef uint32			u_long;		/**< 32-bit value */
typedef uint8 			SOCKET;	

//-----------------------------------------------------------------------------------------------------
      char Adress=0x31;      // ����� �������� ����� Adress=0x37; ������ Adress=0x31;
      char Master_flag=0x00; // ���� ������������ ������ ������� 0, 1- ��������������� �������������.
//-----------------------------------------------------------------------------------------------------

//--------------------------------------------------------
#define RX_BUFFER_SIZE0 256  
 extern volatile  unsigned int rx_wr_index0,rx_rd_index0,rx_counter0;   
 extern volatile  char rx_buffer0[RX_BUFFER_SIZE0];   
 
#define RX_BUFFER_SIZE1 650  
 extern volatile  unsigned int rx_wr_index1,rx_rd_index1,rx_counter1;   
 extern   char rx_buffer1[RX_BUFFER_SIZE1];
 extern volatile unsigned char rx_buffer_overflow1;  

 char FLAG_SPORT1_RX=0; 

// This flag is set on USART0 Receiver buffer overflow
 extern char rx_buffer_overflow0;
 
 
#define TX_BUFFER_SIZE0     4096u     //16384
#define TX_BUFFER_SIZE2     64u     //16384

volatile char     tx_buffer0 [TX_BUFFER_SIZE0];
volatile char     tx_buffer2 [TX_BUFFER_SIZE2];

   
 volatile  u16 tx_wr_index0;
 volatile  u16 tx_counter0;
 volatile  u8  tx_buffer_overflow0;
 volatile  u16 tx_rd_index0;

 volatile  u16 tx_wr_index2;
 volatile  u16 tx_counter2;
 volatile  u8  tx_buffer_overflow2;
 volatile  u16 tx_rd_index2;

 volatile  u16 TCP_tx_wr_index;
 volatile  u16 TCP_tx_counter;
 volatile  u8  TCP_tx_buffer_overflow;
 volatile  u16 TCP_tx_rd_index;

 //----------------------------------------
 // SPORT Transmitter buffer
#define   TX_BUFFER_SIZE1 64

volatile u8        tx_buffer1[TX_BUFFER_SIZE1];
volatile unsigned int tx_wr_index1=0,
          tx_rd_index1=0,tx_counter1=0;

//-------------------------------------------------

 unsigned char DataTr_flag=0;
 unsigned char Data_in_port=0;
 unsigned char DontConnect_flag=0;      // ���������� � PC ����������
 unsigned      CntDown = 0;             // ������������ ��� ������. ������� ��� ����. ������.-
 unsigned char CyclEnd_flag=0;          // ���� pRcv_Buf �������� ����� RcvBuf
                                       // 
 unsigned char BufIsRead_flag=0;        // ���������, ����� ������� ��� ����. ������
 
extern char window_tab;
extern float time_sekund;

#define buf_IO   32u 
#define buf_Word 32u 
#define buf_DATA_Word 200u 
#define BUFFER_SR 200u

    char    srt[BUFFER_SR+1];
    char  strng[buf_IO];
 //----------------------- IO ()  --------------------------------------   
unsigned int lenght=0;

       char      InOut[BUFFER_SR+1];
       char      Word [buf_Word+1];    //������ ���������� �����
       char DATA_Word [buf_DATA_Word+1];    //������ ����� - ������
       char DATA_Word2[buf_DATA_Word+1];    //������ ����� - ������
 
#define MAX_PL 157u
 
  unsigned     int index1=0;
  unsigned     char crc_ok=0;
  unsigned     char packet_ok=0;
  unsigned     char packet_flag=0;
  unsigned     int index=0; 
  unsigned     int index_word=0;
  unsigned     int index_data_word=0;
  unsigned     int index_data_word2=0;
  unsigned     int lenght_data=0;//������ ������
  unsigned     char data_flag=0;
  unsigned     char data_flag2=0;
  unsigned     char FLAG_lenght=0;//���� ���������� ����� - ������� ������
  unsigned     int sch_lenght_data=0;
  unsigned     char FLAG_DATA=0;
				u16 SCH_LENGHT_PACKET=0;
 
 unsigned char FLAG_CW=0;
 unsigned     int crc_input=0; 
 unsigned     int crc_comp=0;

 u8  FLAG_RS485_OBMEN =0;
 u8  FLAG_RS485_OBMEN1=0;
 u32 FLAG_SCH_RS485_PACKET=0;
 u32 FLAG_SCH_RS485_PACKET_MAX=0;
 u8  FLAG_CRC_OK=0;
 u32 FLAG_SCH_RS485_OK_PACKET=0;
 u32 FLAG_SCH_RS485_OK_PACKET_MAX=0;

 u8 FLAG_EVENT_K615_UP=0;
 u8 FLAG_PF10=0;
 u32 FLAG_SCH_CRC485_BAD=0;
 u32 FLAG_SCH_CRC485_BAD_MAX=0;
 
 u32 SCH_7E_PAKET=0;
 u32 SCH_7E_PAKET_MAX=0;
 
 u32 SCH_7k_PAKET=0;
 u32 SCH_7k_PAKET_MAX=0;
 
 u32 SCH_7ok_PAKET=0;
 u32 SCH_7ok_PAKET_MAX=0;
 u8 FLAG_TNO_CONTR_1=0;
 u32 Number_TNC=0;
 u32 TIMER_RS485_OBMEN=0;
 
 u64 Fcalibrovka=0;
 u64 Fpomehi=0;
 u64 DevFpomehi=0;
 
 u16 test_TNC=2001;
 u8 FLAG_OUTPORT=0;
 u8 FLAG_EVENT_K615_RZRV=0;
 u8 REZERV_M=0; //���������� �� ������� �������������� ����� ����� �615
 u8 FLAG_ERROR_INTERVALWORK=0;
 u8 FLAG_SEND1=0;
 u8 FLAG_SEND2=0;
 volatile u32 TIME_WORK_CONTROL;
 u8 FLAG_UPR_TKI=0;
 
 u8  FT_pit=0;
 u8  FT_pit_log=0;
 u8  FT_pit_log2=0;
 u16 FLAG_FT_pit=0;
 
 u8  FT_reg=0;
 u8  FT_reg_log =0;
 u8  FT_reg_log2=0;
 u16 FLAG_FT_reg=0;

//-----------------------------------------------------------------------------------


unsigned char lk;
unsigned short *buf_sdram1;
unsigned short *buf_sdram2;
unsigned int j_pack=0;
unsigned char packet[4][36];

extern unsigned int lsr_razmer;

#define RX_MAX_BUF_SIZE  200
#define TX_MAX_BUF_SIZE  200
#define ZX_MAX_BUF_SIZE  170

extern unsigned char RX_BUF[RX_MAX_BUF_SIZE];
extern unsigned char TX_BUF[TX_MAX_BUF_SIZE];
	   unsigned char ZX_BUF[ZX_MAX_BUF_SIZE];


unsigned char flag_clear=0;
//unsigned char ok[5];
unsigned int led_tick;

short sch_uart;
unsigned tested;

 char  sch_plis_ppi=0;
 char  flag_test_sync=0;

 u8 MASTER_CODE=0xa1;//��� ����������� �������� ������ �������

unsigned int  sch_packet_UDP_reciv=0;
unsigned int  sch_packet_UDP_reciv_max=0;

extern  unsigned char ERROR_status_DMA;
u8 FLAG_TST_UDP=0;
u8 PPI_reg = 0;
uint8 FLAG_REGIM=0; //���� ������ ������ :1 - ������, 2 - ��������.
u8 FLAG_REGIM_init=0;
extern u16 sch_tx_packet;
u16 sch_tx_packet_max=0;
u32 DELAY_RZV=0u;
u8 FLAG_MASTER_REZERV_DELAY=0;
u8 FLAG_MASTER_BR_OK=0;
u8 FLAG_BR_REM_OK=0;
u8 FLAG_RAM_BR=0;

u8 FLAG_ERR_TNI=0;
u8 FLAG_ERR_TKI=0;
u8 FLAG_ERR_TNP=0;
u8 FLAG_ERR_TKP=0;

u8 FLAG_BR_GBR_PROCESS=0; //���� �������� �������� ��������������
u32 TIMER_REZERV=0; //������ ������� ������� ��� ��������������
u8 FLAG_BR_GBR=0;   //���� �������� � ���
u8 FLAG_FIZL_ON=0;
u8 Metka_F=0;
u8 VCU_BOTTON=0;
//*************************************************************************
   	 
 char sch_obmen=0;
 unsigned  char   Process_code=0;
 char   Test_f_mono=0;
 int   flag_ERROR_Timp=0;
 int DISP_flag_ERROR_Timp=0;

volatile  unsigned int   sch_avariya=0;
   
 extern unsigned volatile int  time_uart; // ���������� �������� �������
 extern unsigned volatile int  tick_wait;
			
 unsigned char UDP_TCP_flag=0;
 unsigned char CRC_m[3][6]; //������ �������
 unsigned char K615_indik=0;	
 volatile       unsigned char K615_crc_sch=0;   
 volatile       unsigned char K615_crc_sch2=0;  
			
 unsigned  char Error_ethernet_obmen=0; //���������� �������� ������ ������
 volatile  char flag_event_sinhron=0 ;    //���� ������� ��������� � ��������������
 volatile  unsigned  char flag_pachka_TXT=0; //���� ������������ ��� ��� �������� ����� ������
 volatile    int sch_pachek_test=0; //������� ����������� �������  � �������� ������������ ��� ��� �������� ����� ������.
 volatile    int   sch_event_sinhron=0;// ������� ��������� ����������
    int   sch_event_sinhron_max=0;
    int   sch_event_sinhron_min=99999999;
unsigned  int sch_TNC_test=0;
unsigned volatile char  flag_K615_event;  //event �� �������� � ������� 615
volatile   unsigned char flag_Ethernet_packet_rcv=0;
volatile             int sch_UDP_pakets=0;
unsigned char flag_process=1;
unsigned char volatile flag_event_K615_run=0;
unsigned int  delay_process=50u;
unsigned char flag_uart_trcv=0;
unsigned char   sync_flag=0;
extern  unsigned volatile char tick_us;
unsigned char sinc_type=0;
volatile unsigned int   TNC_number_run=0;
unsigned int sch_sync_ethernet=0;
unsigned int sch_sync_ethernet_max=0;
   
            unsigned char  flag_form_packet_SDRAM=0;
            unsigned int tst_time1=0;
            unsigned int tst_time2=0;
	        unsigned int tst_time3=0;
            unsigned int tst_time4=0;
            unsigned int tst_time5=0;
            unsigned int tst_time6=0;
            unsigned int tst_time7=0;
            unsigned int tst_time8=0;
            unsigned int tst_time9=0;
            unsigned int tst_timeA=0;
            unsigned int tst_timeB=0;
  volatile  unsigned int timer_TNC1=0;
  volatile  unsigned int timer_TNC2=0;
  volatile  unsigned int Interval_TNC=0;
  volatile u32 timer_TOBM=0;
 
            u32 test_Ntin=1;
 			u32 test_Ntik=1;
 		    u32 test_Ntpn=3;
 			u32 test_Ntpk=3;
 			u32 TNC_test=0;

 unsigned int tst_time_max=0;
 unsigned int tst_time_delta=0;
 unsigned int TIMER_AVARIYA=0;
 unsigned int TIMER_UDP_LS_DOWN=0;//������� ������� �������� ������ ����� UDP ETHERNET
         char flag_ERROR_CRC_control_word=0;
         char flag_ERROR_END_packet=0;
    	 int sch_ERROR_CRC_control_word=0;

       unsigned char CODE_REZERV=0;
       unsigned char CODE_REZERV_soft=0;

       u32 TIMER_GBR_OK=0;

       u8 EVENT_REZERV=0;
	   
	   u32 FLAG_SCH_NEW_BUF    =0;
	   u32 FLAG_SCH_NEW_BUF_MAX=0;
	   u32 tst_time_KUK1=0;
	   u32 tst_time_KUK2=0;
	   u32 FLAG_ERROR_Nimp=0;


            unsigned int flag_ERROR_CRC_control_word2=0;
            unsigned int flag_FAIL_PPI=0;
			u32 flag_Avariya_TNC=0;
			unsigned char TNC0_packet=0;
					
	volatile		unsigned char FLAG_PACHKA_DELAY=0xff;
			unsigned char RESET_packet=0; //������� ������������ ������ ����� �������������� 
	volatile		unsigned char flag_first_TNO=0;
			
	volatile		unsigned char  FLAG_SYNC_PF8=0;
	volatile		unsigned char  FLAG_SYNC_PF11=0;

      
  volatile    unsigned int   TIME1_PPI_START=0;
  volatile    unsigned int   TIME2_PPI_START=0;
  volatile    unsigned int   TIME3_PPI_START=0;
  volatile    unsigned int   TIME_PPI_END=0;
  volatile    u32 TIME_PACKET_FORM = 0;//����� ������ ������� ���������� ������


  volatile    unsigned char  FLAG_PPI_OK=1;
  volatile    unsigned char  flag_PPI_sinc_D2=0;
  volatile    unsigned char  flag_PPI_sz1_D2=0;
  volatile    unsigned char  flag_PPI_sz2_D2=0;
              unsigned int  SPORT_VAR=0; 
              unsigned int  ERROR_FLAG = ALL_OK; 
			        unsigned char  BR_GBR_FLAG =0;
                       char  WORK_TU_FLAG = 'w'; 
		  	      unsigned char FLAG_UART_K607=0;
              unsigned char VKL_COM_FT=0;
              unsigned char REZERV_INT1=0; //���������� ������ ������� ������ �� �� - "1"
						
		extern	uint16 FLAG_UDP_EVENT;
		unsigned int FLAG_VCU_SYNC_ERROR=0u; //���� - ������� ����� ������ ������������� � ���
		unsigned int FLAG_VCU_SYNC_ERROR_max=0u;

		unsigned int DDS_delay;//  ��������� ��� ���������� ����������� (DDS) � ������ 
		unsigned int flag_UDP_OBMEN=0u; //���� ����������� ����� �� UDP
		unsigned char FLAG_TST_UDP_BUF=0;
		unsigned int TNC_actual_old=0;
		unsigned char FLAG_VCU_SYNC_UP=0;
		unsigned char FLAG_TEST_SEV=1;
		unsigned char  FLAG_ERROR_SYNC_VIEV=0;

		unsigned char  STATUS_B610    =0;//������ 610 ����� : ���\���� ��\���
    unsigned char  STATUS_B610_INF=0;//� ������ ���� ��� ���
    unsigned char  SYS_HELTH_B610 =0;//��������� 610 ����� 0 - ������
    unsigned char  FLAG_WORK_B610=0;
    u8 FLAG_TKP_TNO_TRUE=0;
    u32 FLAG_TIMER_UART_K614=0;
    u8 FLAG_INIT_UART=0;
    u32 FLAG_SCH_TX485=0;
	u32 FLAG_SCH_TX485_MAX=0;

	unsigned int TIME3_PPI_START_MAX=0;
  unsigned char  FLAG_ETHERNET_INIT=0;
u8 FLAG_MASTER_REZERV_disp=0;
u8 FLAG_START_OBZOR=0;

volatile u32 TIME_PPI_OK=0;
volatile u32 TIME_PPI_RUN=0;
volatile u32 DELTA_TIME_PPI=0;

#define DELAY_PPI_INTERVAL 4u  //���
#define TIMEOUT_UART 10u  //��

 //*************************************************************************    
volatile unsigned int Alfa =0;  //���������� ������� ��� ������������ ����� ���������������
volatile unsigned int Beta =0;
unsigned int Gamma=0;

volatile unsigned char flag_END_sync_packet=0;
volatile unsigned char FLAG_PACKET_SEND=0;
unsigned char flag_END_sync_packet_vsp=0;
unsigned char flag_TNO_TRUE=0;
unsigned char START_packet=0; //���� ������������ ������ ����� � ������, ��������� �����
unsigned char flag_NUMBER_pachki=0;
unsigned char flag_TNC_UP=0;
unsigned char flag_time_test=0;
unsigned char flag_STOP_ALL_WORK=0;


unsigned int   index_Packet_form=0;
unsigned int   index_END_TKP_form=0;
unsigned int   index_END_TKI_form=0;

unsigned int  TNO_work1=0;
unsigned int  TNO_work2=0;
unsigned int  sch_tst_pachek=0;
unsigned int  sch_tst_pachek_max=0;
unsigned int  sch_tst_pachek_min=0;
volatile u8 Event_word=0;
 unsigned int  Delta_TNC    =0xffffffff;
 unsigned int  Delta_TNC_old =0xffffffff;
 unsigned int  Delta_TNC_old2=0xffffffff;
 unsigned int  Delta_TNC_work=0xffffffff;
unsigned char displey=0u;
unsigned char FLAG_EVENT_to_K607=0;
unsigned char FLAG_SYNC_SEV=0;
unsigned char FLAG_DELAY_TNO=0;
unsigned char FLAG_K615_LED=0u;


unsigned int  tst_time_sev1=0;
unsigned int  tst_time_sev2=0;
unsigned int  tst_time_sev3=0;
unsigned int  tst_time_sev4=0;

unsigned int TNI_Timp=0;
unsigned int TKI_Timp=0;
unsigned int TNP_Timp=0;
unsigned int TKP_Timp=0;
unsigned int TNC_Timp=0;
unsigned int TNO_Timp=0;

unsigned int  TST_Dni=15;
unsigned int  TST_Dnp=14;
 u8  ERROR_TN_FLAG=0;
 u16 FLAG_ERROR_PPI=0;

 
unsigned int Time_before_TOBM_1=0; //���������� ������ ����� ����������� �������� ��������
unsigned int Time_before_TOBM_2=0;

unsigned int TIMER1_IZL=0; //������ ��������� 1
unsigned int TIMER2_IZL=0; //������ ��������� 2
unsigned int TIMER1_PRI=0; //������ ����� 1
unsigned int TIMER2_PRI=0; //������ ����� 2

unsigned int INTERVAL_IZL=0; //�������� ���������
unsigned int INTERVAL_PRI=0; //�������� �����

unsigned int INTERVAL_IZL_zad=0; //�������� ��������� �������
unsigned int INTERVAL_PRI_zad=0; //�������� ����� �������

unsigned int ERROR_SCH_IZL=0;
unsigned int ERROR_SCH_GET=0;

u8 FLAG_OK_DELAY=0;

#define N_ERROR 2u //����� ���������� ������ �� ������

unsigned char FLAG_DSP_text_CIKL=1;

#define DELAY_CONTROL_const 50u

unsigned int  DELAY_CONTROL = DELAY_CONTROL_const;

  volatile int  tick_PPI_wait=0;
  unsigned int  D_obzor=4;

#define Interval_upregleniya 500   //�������� ���������� ��� ����������� �������� ����������� ��������
#define Interval_Sync        1000000  //�������� ������������� ������� ��������������� � ���

//-----------------------------------------------------------------------------	
	
	u64 F0_FS_TST   =430000000u;//����������� ������� ����������� ���������
	u64 F0_FG_TST   =389000000u;//����������� ������� ����������� ���������
	u64 F1_FS_TST   =430000000u;//����������� ������� ����������� ���������
	u64 F1_FG_TST   =389000000u;//����������� ������� ����������� ���������
	u64 F2_FS_TST   =430000000u;//����������� ������� ����������� ���������
	u64 F2_FG_TST   =389000000u;//����������� ������� ����������� ���������
	
	u64 Fmax_tst =0;//��� �������� ������������ ������� ��������� 
	u64 F_tst    =0;
	
	u32 DEVmax_tst=0;
	u32 DEV_tst=0;
	
	u32 Dni_MIN =9999;

	u32 Dnp_MIN =9999;
	
	  u8  SYNC_PILA =0;//���� ���������� ����
      u8  SYNC_PILA2=0;//���� ���������� ����
      u8  SYNC_PILA3=0;//���� ���������� ����
	  u32 SYNC_PILA_TST=0;
	  
	u8 N_tempov=0;
	unsigned int DevF_TST    =1000000u;  //�������� ������� ������������
	unsigned int Timp_TST    =40000u;      //������������ ��������
  unsigned int TimpIZ_TST  =40000u;      //������������ ��������
  unsigned int TimpPR_TST  =40000u;      //������������ ��������
	unsigned int Nimp_TST    =1u;        //����� ��������� � �����,
	unsigned int Tinterv_TST =100u;   //������������ ���������

  
unsigned char Sintez1_ERROR=0; //flag ������ �����������
unsigned char Sintez2_ERROR=0; //flag ������ ����������
unsigned char    FOCH_ERROR=0; //flag ������ ���
unsigned char  ERROR64_FLAG=0; //���������� �� ������� ������ - ����������� ������ 64 ���

unsigned char  FLAG_MASTER_REZERV=0;//���������� �� ������� ��������������
unsigned char  TST_OUT_CODE = 0; 
	
unsigned int  tick_wait_LED_ERROR=0;
 		u8  FLAG_ERROR_UP=0;
 		u8  FLAG_OK_UP=0;
 extern u8 FLAG_UDP_INSTALL;

  u32 DELAY_ADR=0;
  
  u32 FLAG_SCH_SEV_pachka=0;
  u32 FLAG_SCH_KUK_pachka=0;
  
  	u8 TST_RX8 =0;
	u8 CRC_RX8 =0;
	u8 FLG_B610=0;
	u8 FLG_K601=0;//����� ��������� ������ ����� �610
	u8 FLG_K602=0;
	u8 FLG_K603=0;
	u8 FLG_K604=0;
	u8 FLG_K605=0;
	u8 FLG_K607=0;
	u8 FLG_K608=0;
	
	u8 FLG_K611  =0;//���
	u8 FLG_K612  =0;//���������
	u8 FLG_K613  =0;//���������
	u8 FLG_K614  =0;//�������������
	u8 FLG_K614_1=0;//��������� �������
	u8 FLG_K615  =0;//������������
	u8 FLG_K616  =0;//������� �������
	u8 FLG_CLK   =0;
	
	u8 FLAG_START_WORK=0;
	u32 TIME_LOCAL=0;
//-----------------------------------------------------------------------------
 
 //****************************DSP***********************************************   

  unsigned char   DSP_in1[64];

  unsigned int  Inf_A1[1]; // ������ ������ ���������� ���������� �� ��� 3  1�07��
  unsigned char Inf_A2[16];  // ������ ������ ���������� ���������  �� ��� 3  1�07��

  unsigned char Code_error=0;       //��� ������ D15?D12 � � 1�08�� �� ������������.
  unsigned char Norm_ohlagdeniya=0; //����� ���������� D11 � ����� ���������� - ���. �1� .

  unsigned char PriemNi=0;          //���. �2  �� D10 � ���������� � �������� ������ � �������,
// ��� ���. "0" � ������� D8 - ���������� ��� ���� ������, ��� ���.  �1�- ��� ������.
// D9 � ���������� � �������� ������ �� �2, ��� ���.
// "0" � ������� D8 -���������� ��� ���� ��-����, ��� ���. �1�- ��� ������.

  unsigned char Vikl=0;             //���.���. 
  unsigned char GBR=0;              //���.���. 
  unsigned char BR=0;               //���.���. 
  unsigned char CU_MU=0;            //���.���. 
  unsigned char T_norma=0;          // ����� ����������� ����������� ������������ 1�07�� (���. �1�).
  unsigned char Pred_avariya=0;     //���������� ����������� ������������ 1�07�� (���.  �1�).
  
  unsigned char Norma_amplifer=0;   //D13?D10 � ������� ������� � ����� �� �������� D10-D13,
// ������� � ���, ��� ������ ���� �� ��������� �� ������� ������. 
// ������ D10 ������������� 1 ������, ����������� ���.2, �����-���� �� � ���.6 (��. ������� 3.8).
//  � ������ ������������������� ��������� �� (� ���������-������ ���� ���������� ����) �� ������,
//   1�07�� ������������� �� ��������� ��� 1 ������.

  unsigned char Norma_pitaniyaFT=0;  //D9?D6 � ������� ������� ������� � ����� ������� ��������� ��� � ��������������� ����-��.
 //��� ��������� ��������� (���������� ������� �� �� ����� �� ���������� ��) �����-�� ����� ���� �� ���� ��������.
 
  unsigned char Avariya_blokov=0;  // �600  �605  �604  �603  �602  �601,������� ������ ����� 1�07�� (���.  �1�) .
  
  unsigned char Rezerv1=0;          //
  
  unsigned char Norma_IVE=0;       //����� ��� ����� 1�07�� - (���.  �1�).
  
  unsigned char Rezerv2=0;          //
  
  unsigned char Rezerv3=0;          //
  
  unsigned char Rezerv4=0;          //
  
  unsigned char Rezerv5=0;          //
  
  unsigned char Nomer_rezer_amplifer_FT=0;     //D3?D0 � ������ D0 ������������� ������, ����������� ���.2,
// ����.1 ��� � ���.6 (��. ����-��� 3.8).
// ������� ���� � ������ ������� ������� � ���, ��� �������� ������ ��������� �� ���-���� ������,
// �.�. �� ����� �� ����� � ����� 1 �������� �� ��������� ��������� ���. �����-����� � ��� ������ ��������.

//������:
//?	���� � ������� D10 ����� 02h �������, � � ������� D0 ����� 04h ����, �� ������ �������� ������� � ���, ��� �������� ��������� �� 1 ������. 
//?	���� � ������� D10 ����� 02h ����, � � ������� D0 ����� 04h �������, �� ������ �������� ������� � ���, ��� �������� ��������� ��� (��������� �� � ����������) 1 ������. 
//?	���� � ������� D10 ����� 02h ����, � � ������� D0 ����� 04h ����, �� ������ �������� ������� � ���, ��� �������� ��������� �� � ���. � ����� ������ ���� � ������� D6 ����� 02h ����, �� ��������� ����������� ��� 1 ������. ���� � ������� D6 ����� 02h �������, �� ��������� ������������ ����������� 1 ������.

//..................��� � �������-���������� ��� ������� ������ ����� � �������� 5 ����� (��. ������� 3.4)........................................

 unsigned char Knc_min=0;    //  ��� �����
 
 unsigned char Knc_10sec=0;  //  ��� �������� ������

 unsigned char Knc_sec=0;    //  ���  ������

 unsigned char Knc_100ms=0;  //  ��� ����� ��
 
 unsigned char Knc_10ms=0;   //  ��� �������� ��
 
 unsigned char Knc_ms=0;     //  ���  ��
 
 unsigned char Knc_100us=0;  //  ��� ����� ���
 
 unsigned char Knc_10us=0;   //  ��� �������� ���
 
 unsigned char Knc_us=0;     //  ���  ���

/* 
��� ����� � ��� ���������� ����� � ������� �����������.
��� �������� ������ � ��� ���������� �������� ������ � ������� ������.
��� ������ � ��� ���������� ������ � ������� �������.
��� ����� �� - ��� ���������� ������ �� � ������� �������.
��� �������� �� - ��� ���������� �������� �� � ������� �����.
��� ������ �� - ��� ���������� �� � ������� �������.
��� ����� ��� - ��� ���������� ������ �� � ������� ��.
��� �������� ��� - ��� ���������� �������� ��� � ������� �����.
��� ������ ���- ��� ���������� ��� � ������� �������.
  */

  //�������������� ��� �������� ���������� � ���������� ��� �������� ������� (������, ����, �����), ������������� �������.
  
 unsigned char Mypr_min=0;    //  ������
 
 unsigned char Mypr_hour=0;   //  ����
 
 unsigned char Mypr_day=0;    //  �����
 
 unsigned short CONTROL_CRC=0;// ����������� �����
 
 unsigned char Msg_ZAPRET_REZ=0; //��������� - ������ ��������������
 
 unsigned char LoK_WEB=0;// ��������� ���� : �������� / ��������� , �������.
 
 u8 NILS_REZERV=0;
 u8 RZV_LS=0;
 
 unsigned short KFK=0; //���� ��������������� ��������
 
 //..................................................................
 
 
  unsigned char NNI=0;        			 //������� ������� ���������� ���;
  
  unsigned char RC_KTV_T5M=0; 			 //��� 2 � ��������������� ����� ��� ������������ �5�; 
  
  unsigned char Tc_2sec=0;    			 //��� 3 � ��   2 ���. � ������������ ����� ������ 2 ���.;
  
  unsigned char SintV_nesootv_zadan=0;   //��� 4 � �������������� ��������� ������� �� ������������� ��������;
  
  unsigned char In_sys_Obmen_error=0;   //����� � 1��203 �������, �� �� ������������� �������� ���������;
  
  unsigned char Sboy_form_interval=0;   //��� 6 � ��������� ���� ������������ ����������;
  
  unsigned char Sboy_obmena_inform=0;   //��� 7� ��������� ���� ������ �����������.
  
  unsigned char FAPCH_1=0;   			//��� 0 - �������� ���� ���������� f� (1�-�605);
  
  unsigned char FAPCH_2=0;   			//��� 1 - �������� ���� ���������� f� (1�-�603);
  
  unsigned char Zakon_modulac_kontrol=0;//�������� ������� �� �������������� ������� ��������� (1�-�605, 1�-�606, 1�-�608);
  
  unsigned char FAPCH_3=0;   			//��� 3 - �������� ���� ���������� f� (1�-�606);
  
  unsigned char LCHM_osnv=0;   		    	//���0 � �������/���������� ������ ��� ��������� �������
  
  unsigned char LCHM_I_type =0;
  unsigned char LCHM_I_type2=0;
  unsigned char LCHM_I_type3=0;
  
  unsigned char LCHM_G_type =0;
  unsigned char LCHM_G_type2=0;
  unsigned char LCHM_G_type3=0;
  
  
  unsigned char Dop_interval=0;   		//���1 � �������/���������� ��������������� ���������
  
  unsigned char Type_pachki=0;   		//���2 1 � ����������� / 0 - �� ����������� (��� N>0) ����� ��������
  
  unsigned char LCHM_pomeha=0;   		//���3 � �������/���������� ��� � ������� �������
  
  unsigned char SYNC_T0Tnc=0;   		//���7 � �������/���������� �������������   ��  

  unsigned char LCHM_osnv2=1;   		    	//���0 � �������/���������� ������ ��� ��������� �������
  
  unsigned char Dop_interval2=0;   		//���1 � �������/���������� ��������������� ���������
  
  unsigned char Type_pachki2=0;   		//���2 1 � ����������� / 0 - �� ����������� (��� N>0) ����� ��������
  
  unsigned char LCHM_pomeha2=0;   		//���3 � �������/���������� ��� � ������� �������
  
  unsigned char SYNC_T0Tnc2=0;   		//���7 � �������/���������� �������������   ��  

  unsigned char LCHM_osnv3=1;   		    	//���0 � �������/���������� ������ ��� ��������� �������
  
  unsigned char Dop_interval3=0;   		//���1 � �������/���������� ��������������� ���������
  
  unsigned char Type_pachki3=0;   		//���2 1 � ����������� / 0 - �� ����������� (��� N>0) ����� ��������
  
  unsigned char LCHM_pomeha3=0;   		//���3 � �������/���������� ��� � ������� �������
  
  unsigned char SYNC_T0Tnc3=0;   		//���7 � �������/���������� �������������   ��  

  unsigned char TNO_reg=1;              //������� ������������ ������ ���
  
  //~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  
  unsigned int P0=0;  //������������ ������ (�������), ���������� �������� ������� ����� ��������� ���������� ��� , Do = ��-1
  unsigned int Pniu=0;  //�������� �������, 
//  ��������� ��� ���������� ����������� (DDS) � ������ 
//  (������������� ��������� �� ���������� ���������� �� ��������� ����������). 
//  ������ ��������� ������� ��� �� �����, ��� �� 8 ��� D��� = ����/8, D���<D��

  unsigned int Pni=0;  //�������� ������� ������������� ������������ ���������� �������� ���, 
//  ���� �� �������� ��� (��� ������� ��������� ��������� � ������ ������������ ��������������� ���������)
//  �� �������� ���, ������������ ������ ������ ��������� D�� = ���/8, D��>D���

 unsigned int Pii=0;  //�������� ������� �� ��� �� ���, � ������� �������� ���������� ��������� �������, D��� = ����/8
 
 unsigned int Pnpu=0;  //�������� �������, 
//  ��������� ��� ���������� ����������� (DDS) � ������ 
//  (������������� ��������� �� ���������� ���������� �� ��������� ����������). 
//  ������ ��������� ������� ��� �� �����, ��� �� 8 ��� D��� = ����/8, D���<D��

 unsigned int    Pnp=0;  //�������� ������� ����� ��� � ���, D�� = ���/8, D��>D���
 
 unsigned int    Pip=0;  //�������� ������, ������������ ������������ ������. ������ �������� ������� ����� ���������� ��� � ��� D�� = ���/8 - 16
 
 unsigned int Pdop=848;  //������������ ��������������� ���������
 
 unsigned int  Pnpk=16;  //�������� ����� ���������� ��� � ��� ����������
 
 unsigned int   Pk=304;   //������������ ��������� ����������
 
 unsigned int  Pnpp=16;  //�������� ����� ���������� ��� ���������� � ��� ������ ������
 
 unsigned int   Pp=512;  //������������ ��������� ������ ������
 
 unsigned char  Ntp=1;  //����� ������ �  ����� D�� = N�� , ������������ �������� = 8
 
 unsigned char   Nt=1;  //����� ����� � ����� D� = N�-1 , ������������ �������� = 3

 unsigned char  Ntc=1;  //����� ������ � �����

unsigned char  n1,n2,n3=1;  //����� n ��� ������� ������ ��� � ���������
 //  �� (��� ���(0) ������ ���� �����  �1�) 
 //  ������������ ��������� ��������� ������ ������������� �������:

//--------------------������� 2 -------------------------------------------------


  unsigned int Pniu2=0;  //�������� �������, 
//  ��������� ��� ���������� ����������� (DDS) � ������ 
//  (������������� ��������� �� ���������� ���������� �� ��������� ����������). 
//  ������ ��������� ������� ��� �� �����, ��� �� 8 ��� D��� = ����/8, D���<D��

  unsigned int Pni2=0;  //�������� ������� ������������� ������������ ���������� �������� ���, 
//  ���� �� �������� ��� (��� ������� ��������� ��������� � ������ ������������ ��������������� ���������)
//  �� �������� ���, ������������ ������ ������ ��������� D�� = ���/8, D��>D���

 unsigned int Pii2=0;  //�������� ������� �� ��� �� ���, � ������� �������� ���������� ��������� �������, D��� = ����/8
 
 unsigned int Pnpu2=0;  //�������� �������, 
//  ��������� ��� ���������� ����������� (DDS) � ������ 
//  (������������� ��������� �� ���������� ���������� �� ��������� ����������). 
//  ������ ��������� ������� ��� �� �����, ��� �� 8 ��� D��� = ����/8, D���<D��

 unsigned int    Pnp2=0;  //�������� ������� ����� ��� � ���, D�� = ���/8, D��>D���
 
 unsigned int    Pip2=0;  //�������� ������, ������������ ������������ ������. ������ �������� ������� ����� ���������� ��� � ��� D�� = ���/8 - 16
 
 unsigned int Pdop2=848;  //������������ ��������������� ���������
 
 unsigned int  Pnpk2=16;  //�������� ����� ���������� ��� � ��� ����������
 
 unsigned int   Pk2=304;   //������������ ��������� ����������
 
 unsigned int  Pnpp2=16;  //�������� ����� ���������� ��� ���������� � ��� ������ ������
 
 unsigned int   Pp2=512;  //������������ ��������� ������ ������
 
 unsigned char  Ntp2=1;  //����� ������ �  ����� D�� = N�� , ������������ �������� = 8
 
 unsigned char   Nt2=1;  //����� ����� � ����� D� = N�-1 , ������������ �������� = 3

 unsigned char  Ntc2=1;  //����� ������ � �����


//----------------------������� 3-----------------------------------

 
  unsigned int Pniu3=0;  //�������� �������, 
//  ��������� ��� ���������� ����������� (DDS) � ������ 
//  (������������� ��������� �� ���������� ���������� �� ��������� ����������). 
//  ������ ��������� ������� ��� �� �����, ��� �� 8 ��� D��� = ����/8, D���<D��

  unsigned int Pni3=0;  //�������� ������� ������������� ������������ ���������� �������� ���, 
//  ���� �� �������� ��� (��� ������� ��������� ��������� � ������ ������������ ��������������� ���������)
//  �� �������� ���, ������������ ������ ������ ��������� D�� = ���/8, D��>D���

 unsigned int Pii3=0;  //�������� ������� �� ��� �� ���, � ������� �������� ���������� ��������� �������, D��� = ����/8
 
 unsigned int Pnpu3=0;  //�������� �������, 
//  ��������� ��� ���������� ����������� (DDS) � ������ 
//  (������������� ��������� �� ���������� ���������� �� ��������� ����������). 
//  ������ ��������� ������� ��� �� �����, ��� �� 8 ��� D��� = ����/8, D���<D��

 unsigned int    Pnp3=0;  //�������� ������� ����� ��� � ���, D�� = ���/8, D��>D���
 
 unsigned int    Pip3=0;  //�������� ������, ������������ ������������ ������. ������ �������� ������� ����� ���������� ��� � ��� D�� = ���/8 - 16
 
 unsigned int Pdop3=848;  //������������ ��������������� ���������
 
 unsigned int  Pnpk3=16;  //�������� ����� ���������� ��� � ��� ����������
 
 unsigned int   Pk3=304;   //������������ ��������� ����������
 
 unsigned int  Pnpp3=16;  //�������� ����� ���������� ��� ���������� � ��� ������ ������
 
 unsigned int   Pp3=512;  //������������ ��������� ������ ������
 
 unsigned char  Ntp3=1;  //����� ������ �  ����� D�� = N�� , ������������ �������� = 8
 
 unsigned char   Nt3=1;  //����� ����� � ����� D� = N�-1 , ������������ �������� = 3

 unsigned char  Ntc3=1;  //����� ������ � �����

 
  //*****************����� ���������***********************************
  
 volatile unsigned char               Flag_K611=0;
 volatile unsigned char          Flag_init_K611=0;
 volatile unsigned char       Flag_control_K611=0;
 volatile unsigned char   Flag_control_sig_K611=0;
 volatile unsigned char   Flag_control_end_K611=0;
 volatile unsigned char    Flag_zahvat_sig_K611=0;
 volatile  unsigned char   Flag_zahvat_end_K611=0;
 volatile unsigned char              Qwant_K611=0;
 volatile unsigned char     Flag_zahvat_OK_K611=0;//����� ���� ������� �������� �������
 volatile unsigned char     Flag_signal_OK_K611=0;// ����� ���� ��� ��� ������� � �����
  
 volatile unsigned char                 Flag_K612=0;
 volatile unsigned char               Flag_init_K612=0;
 volatile unsigned char            Flag_control_K612=0;
 /*
  unsigned char         Flag_vkl_sintez_K612=0;
  unsigned char        Flag_vkl_LCHM_UP_K612=0;
  unsigned char      Flag_vkl_LCHM_DOWN_K612=0;
  unsigned char           Flag_SETUP_F0_K612=0;
  unsigned char        Flag_SETUP_F_low_K612=0;
  unsigned char       Flag_SETUP_F_high_K612=0;
  unsigned char         Flag_SDVIG_F_UP_K612=0;
  unsigned char       Flag_SDVIG_F_DOWN_K612=0;
  unsigned char      Flag_SDVIG_Faza_UP_K612=0;
  unsigned char    Flag_SDVIG_Faza_DOWN_K612=0;
  unsigned char         Flag_SDVIG_A_UP_K612=0;
  unsigned char       Flag_SDVIG_A_DOWN_K612=0;
  unsigned char          Flag_FFT_start_K612=0;
  unsigned char           Flag_FFT_stop_K612=0;
  unsigned char                   Qwant_K612=0;
  */
  
 volatile unsigned char                    Flag_K613=0;
 volatile unsigned char               Flag_init_K613=0;
 volatile unsigned char            Flag_control_K613=0;
 /*
  unsigned char         Flag_vkl_sintez_K613=0;
  unsigned char        Flag_vkl_LCHM_UP_K613=0;
  unsigned char      Flag_vkl_LCHM_DOWN_K613=0;
  unsigned char           Flag_SETUP_F0_K613=0;
  unsigned char        Flag_SETUP_F_low_K613=0;
  unsigned char       Flag_SETUP_F_high_K613=0;
  unsigned char         Flag_SDVIG_F_UP_K613=0;
  unsigned char       Flag_SDVIG_F_DOWN_K613=0;
  unsigned char      Flag_SDVIG_Faza_UP_K613=0;
  unsigned char    Flag_SDVIG_Faza_DOWN_K613=0;
  unsigned char         Flag_SDVIG_A_UP_K613=0;
  unsigned char       Flag_SDVIG_A_DOWN_K613=0;
  unsigned char          Flag_FFT_start_K613=0;
  unsigned char           Flag_FFT_stop_K613=0;
  unsigned char                   Qwant_K613=0;
  */
  
 volatile unsigned char                    Flag_K615=0;
 volatile unsigned char               Flag_init_K615=0;
 volatile unsigned char            Flag_control_K615=0;
 volatile unsigned char                   Qwant_K615=0;

 volatile unsigned char                    Flag_K614=0;
 volatile unsigned char               Flag_init_K614=0;
 volatile unsigned char            Flag_control_K614=0;
 volatile unsigned char                   Qwant_K614=0;
 volatile unsigned char              flag_event_K614=0;
 unsigned char  Flag_init_B610=0;
 unsigned char  Flag_B610=1;
  
 volatile unsigned char                  PROCESS=0;

  unsigned char   test1=0;
  unsigned char   test2=0;

 volatile unsigned char sys_life_k612=0;
 volatile unsigned char sys_life_k613=0;

volatile  unsigned int AVARIYA_flag=0u;

extern  volatile int  tick_process;
extern  volatile int  tick_process_K611;
extern  volatile int  tick_process_K615;
extern  volatile int  tick_process_K612;
extern  volatile int  tick_process_K613;
extern  volatile int  tick_process_OK;
extern  volatile int  tick_TCP;
extern  volatile int  tick_UDP;
 volatile int TIME_BR=0;

  
       unsigned  char flag_Ethernet;  //���� ���������� ��� ������ ����� �� ��������
       unsigned  char flag_Ethernet_Terminal=0;  //���� ���������� ��� �������� ����� � ��������� , �������.

     
   volatile unsigned    char flag_PPI_sz1 =0;
   volatile unsigned    char flag_PPI_sz2 =0;
   volatile unsigned    char flag_PPI_sinc=0;
   volatile unsigned    char flag_Packet_form=0;
    char tst_control_impuls_sch=0;
    char tst_control_impuls_flag_1=0;
    char tst_control_impuls_flag_2=0;
    int Command_Sync=0;

    unsigned char flag_START_PROCESS=1;  //���� ������������ ����� ������ ��� � ���

   unsigned char flag_TNI=0;
   unsigned char flag_TKI=0;
   unsigned char flag_TNP=0;
   unsigned char flag_TKP=0;
   unsigned char flag_TOBM=0;
   unsigned char flag_TNC=0;
   unsigned char flag_TNO=0;
   unsigned char flag_TNO_1hz_UP=0;

  	   unsigned char Test_PPI_flag1=0;
  	   unsigned char Test_PPI_flag2=0;
  	   unsigned char Test_PPI_flag3=0;

       unsigned char RESET_SINTEZ_flag=0;
       unsigned char flag_PPI_sintez_unsihron_start=0;

    

   volatile    unsigned int time_TNO=0;
   volatile    unsigned int time_TNC=0;

   volatile    unsigned int time_TNO_min=0;
   volatile    unsigned int time_TNC_min=0;

   volatile    unsigned int time_TNO_max=0;
   volatile    unsigned int time_TNC_max=0;

   volatile    unsigned char flag_1HZ_sync=0;
               unsigned char flag_START_pachka_SINTEZ=0;
			   unsigned char  flag_sync_ETHERNET_DISP=0;
			   
		unsigned  int ERROR_sch_PPI_wait=0;
		unsigned  int TNO_mem=0;
		unsigned  int TNO_width=0; //������������ ��� ������� � ��������
  extern   unsigned char flag_RX_UDP;
    char FLAG_SPORT1_TX;

  //-----------------------------------------------------------
  u8 NORM_PIT_2FT=0;
  u8 NORM_PIT_1FT=0;
  
  u8 AVARIYA_PIT_1_FT=0;
  u8 AVARIYA_PIT_2_FT=0;
  
  u8 RAB_KAN_1FT = 0;
  u8 RAB_KAN_2FT = 0;
  u8 RAB_KAN_3FT = 0;
  u8 RAB_KAN_4FT = 0;

  u8 AVARIYA_KAN_1_FT=0;
  u8 AVARIYA_KAN_2_FT=0;
  u8 AVARIYA_KAN_3_FT=0;
  u8 AVARIYA_KAN_4_FT=0;

  u8 NORMA_TEMP_1U07FI=0;
  u8 PA_1U07_FI=0;
  u16 TNC_sch=0;
  u16 TNC_sch_max=0;
  u8 FLAG_CONTROL=0;
  
   
  u32 tst_Kod_Dchi=0x00; // 
  u32 tst_Kod_Dchg=0x00; //f� 
  u32 tst_Kod_Dchp=0x00; //f�� 
  u32 tst_Kod_Dchk=0x00; //f�� 

  u32 tst_Kod_RAMRT_fi =0x00;
  u64 tst_Kod_Ddelta_fi=0x00; 
  u32 tst_Kod_RAMRT_fg =0x00;
  u64 tst_Kod_Ddelta_fg=0x00; 
  u32 tst_Kod_RAMRT_fp =0x00;
  u64 tst_Kod_Ddelta_fp=0x00;
  
  u32 tst_Kod_Dii;
  u32 tst_Kod_Dip;
  
  u8 AVARIYA_B610=0;
  u8 AVARIYA_B660=0;
  u8 KFK_610  =0;
  u8 KFK_660  =0;
  u8 TEMP_B610=0;
  u8 TEMP_B660=0;
  u8 FLG_RZV1 =0;
  u8 FLG_RZV2 =0;
  
  u8 FLAG_VCU_TST  =3;
  u8 FLAG_MU_TST   =3;
  u8 FLAG_BR_TST   =3;
  u8 FLAG_GBR_TST  =3;
  u8 FLAG_VIKL_TST =3;
  u8 FLAG_BLOCK_TST=0;
  
  u32 SCH_ERROR_delta_TNC=0;
  u32 SCH_ERROR_delta_TNC_max=0;
  
  u32 SCH_ERROR_delta_min_TNC=0;
  u32 SCH_ERROR_delta_min_TNC_max=0;
  
  u32 SCH_ERROR_delta_max_TNC=0;
  u32 SCH_ERROR_delta_max_TNC_max=0;
  
  u8  FLAG_Packet_FIND=0;
  u8  LSRZV=0;
  volatile  u32 TIMER_FINDER=0;
  u32 TIME_OF_SYS=0;
  u32 TIME_OF_TNO=0;
  u32 RX_resive_MAX=0;
  
  //-----------------------------------------------------------  
extern u8 NUMBER_BLOK;//����� ������ � ���� ��������������

   volatile    unsigned  char RS485=0;

  
  
  typedef struct                //flags
{
  u8 Kod_zameny     : 4;        //  ��� ������  4-�� ����
  u8 KCH_OZU        : 4;        //  ����������� ������ ��� 4-�� ����
  u8 Kol_error      : 2;        //  ���������� ������ 2-�� ����
  u8 Nomer_prov_cepi: 4;        //  ����� ����������� ���� 4-�� ����
  u8 Kod_error      : 4;        //  ��� ������ 2-�� ����

            u32    Nomer_TNC   :32;        // ����� ��������� ���
            u32    Nomer_TNO   :32;        // ����� ��������� ���
         double     Time_SEV1  ;        // ����� ��� , � ��������.
		 double     Time_SEV2  ;        // ����� ��� , � ��������.


/*
�������� ���������� - �������� ������ � ���������.
______________________________________________________________________________
D15 D14 D13 D12    D11 D10 D9 D8    D7  D6    D5  D4  D3  D2        D1  D0
  ��� ������    |    ������      |   ���.   | ����� �����������  | ��� ������
                                    ������         ����
��  2�  1�  0�     ��  2�  1�  0�   1�  0�    ��  2�  1�  0�        1�  0�
------------------------------------------------------------------------------

D15-D12- �������� ������ ������� ��� ������� �� �2 ��� ������ .
D7, D6 - ������� ������ � ���������� �� �������� ��� ������: 
��� 00 - ��� ������, ��� 01- ������ �� �2 � ������ ������� ������,
��� 10 - ������ �� �2 � ������ � ������ �������� ������,
��� 11 - ������ �� �2 � ���� �������� ������.
D5-D0 � � ������ 1�08�� �� ������������.


*/

  u8 Zadano_off     : 4;        //  ������ ����  , 4-�� ����
  u8 Zadano_GBR     : 4;        //  ������ ���   , 4-�� ����
  u8 Zadano_BR      : 4;        //  ������ ��    , 4-�� ����
  u8 Zadano_CU_MU   : 4;        //  ������ ��/�� , 4-�� ����
  u8 REZERV         : 4;        //   	   �������������� , 4-�� ����
  u8 Zapret_REZERV  : 4;        //  ������ �������������� , 4-�� ����
  
/*
�������� ���������� - ����� ������� � ����� ���������� ����� 1�07��.

D15 D14 D13 D12  D11 D10 D9  D8   D7  D6  D5  D4     D3  D2  D1  D0
����           |      ���       |       ��        |     ��/��
3�  2�  1�  0�  3�  2�  1�  0�    3�  2�  1�  0�      3� 2�  1�  0�

D15-D12, Dl 1-D8, D7-D4 - ������� ������� - ��� 0101,
 ������ ������� - ��� 1100, 
 ��� ����-����� - ��� 0000.
  D3-D0-��-��� 0101,
   ��-��� 1100.
   ��������� ���������� - ������ �������.

*/
 uint32 Kod_RAMRT_fp         : 8;       //  ��� ������� DDS AD9954 ��� ������� ����� ������
 
 uint32 Kod_Ddelta_fp        : 32;       //  ��� ���������� ������� DDS AD9954 ��� ������� ����� ������
 
 uint32 Kod_Ddelta_fi        : 32;       //  

 uint32 Kod_Ddelta_fg        : 32;       //  
 
 uint32 Kod_RAMRT_fg         : 8;       // 
 
 uint32 Kod_RAMRT_fi         : 8;       // 


 uint32 Kod_Ddelta_fi2       : 32;       //  

 uint32 Kod_Ddelta_fg2       : 32;       //  
 
 uint32 Kod_RAMRT_fg2        : 8;       // 
 
 uint32 Kod_RAMRT_fi2        : 8;       // 


 uint32 Kod_Ddelta_fi3       : 32;       //  

 uint32 Kod_Ddelta_fg3       : 32;       //  
 
 uint32 Kod_RAMRT_fg3        : 8;       // 
 
 uint32 Kod_RAMRT_fi3        : 8;       // 


 uint16 Kod_Dniu        : 16;       //  ��� D���
 
 uint16 Kod_Dniu2       : 16;       //  ��� D���
 
 uint16 Kod_Dniu3       : 16;       //  ��� D���

/*�������� ������� D��� ,
 ��������� ��� ���������� ����������� (DDS)
  � ������ (������������� ��������� �� ���������� ���������� �� ��������� ����������).
 16-��������� ��� ������������ ������������ ��������� ����� ������� ���������.
   ������ ��������� ������� ��� �� �����, ��� �� 8 ��� 
   ��������� �������:   D��� = ����/8, D���<D��
      */


 uint32 Kod_Dii         : 32;       //  ��� D��
 
 uint32 Kod_Dii2        : 32;       //  ��� D��
 
 uint32 Kod_Dii3        : 32;       //  ��� D��
 
 /*
 16 ��������� ��� ������������ ��������� ���������.
�������� ������� �� ��� �� ���, � ������� �������� ���������� ��������� �������.
������� : D��� = ����/8;  ���, ��� ; ����������� �������� 128 ��� , ������� 8 ���.

0A  |  ��� D��-���� 1 (����� 7) � ���.1  ��� D��-���� 2 (����� 6) � ���.1
    |  7�  6�  5�  4�  3�  2�  1�  0�    7�  6�  5�  4�  3�  2�  1�  0�


 */

uint16 Kod_Dni         : 16;       //  ��� D��

uint16 Kod_Dni2        : 16;       //  ��� D��

uint16 Kod_Dni3        : 16;       //  ��� D��

 /*

�������� ������� ���, ���  (������� ��������� 8 ���)
 ������������� 
 ������������ ���������� �������� ���,
  ���� �� �������� ��� (��� ������� ��������� ��������� � ������ ������������ ��������������� ���������)
   �� �������� ���, ������������ ������ ������ ���������

 */

 uint16 Kod_Dnp         : 16;       //  ��� D��
 
 uint16 Kod_Dnp2        : 16;       //  ��� D�� 
 
 uint16 Kod_Dnp3        : 16;       //  ��� D�� 

/*
16 ��������� ��� ������������ ��������� ����� ������� ������
���, ��� ����������� �������� 16 (������� ��������� 8 ���)
�������� ������� ����� ��� � ���
�������:D�� = ���/8, D��>D���
*/

 uint16 Kod_Dnpu        : 16;       //  ��� D���
 
 uint16 Kod_Dnpu2       : 16;       //  ��� D���
 
 uint16 Kod_Dnpu3       : 16;       //  ��� D���

/*
����, ���  (������� ��������� 8 ���)
�������� �������,
 ��������� ��� ���������� ����������� (DDS)
  � ������ 
  (������������� ��������� �� ���������� ���������� �� ��������� ����������). 
  ������ ��������� ������� ��� �� �����, ��� �� 8 ���

  �������: D��� = ����/8, D���<D��

*/

 uint16 Kod_DN         : 16;       //  ��� Dn
 
/*

8 ��������� ��� ����� ���������� �� ������������ ��������� � �����.
���������� ��������� � ����� ����� N+1 ;

  12              ������              ��� DN-���� 2 (����� 16)
  7�  6�  5�  4�  3�  2�  1�  0�  |  7�  6�  5�  4�  3�  2�  1�  0�
*/

 uint32 Kod_Dip         : 32;       //  ��� D��
 
 uint32 Kod_Dip2        : 32;       //  ��� D��
 
 uint32 Kod_Dip3        : 32;       //  ��� D��
 
/*
���, ���  (������� ��������� 8 ���), ����������� �������� 128
16 ��������� ��� ������������ ��������� ������.
 ������������ ������������ ������.
  ������ �������� ������� ����� ���������� ��� � ���
  �������: D�� = ���/8 - 16
*/

  u8 Kod_Kp_hour    : 8;        //  ��� �� - ����  (����� 21)  
  u8 Kod_Kp_day     : 8;        //  ��� �� - ����� (����� 20) 

/*
������������ � ������ ��, ������� ���� ���� ������ � ������ �� ������ ���� ��������� �0�.
*/

  u8 Kod_Dm         : 8;        //  ��� D�         (����� 19) 
  
/*
8 ��������� ��� ���������� ������ � �����.
��� ������ ���������� ������� �������, ��������� �� ���� ����������:
- ���������, �����������  N+1 ���������� ����������, ������������ ������ ���, ���, ���, ���, �N;
- ���������������, ������� ����� ���� ����� ���� ����, ���� 848 ���.
 ��������� ����� ��������� ������������ ���������� � � ���� ���.

 15         ��� D� (����� 19)
      7�  6�  5�  4�  3�  2�  1�  0�
*/

 u16 Kod_Do         : 16;        //  ��� Do         (����� 18) -

  /*
    ����������� �������� = 1 ���, ������������ 16 ���
    4 ��������� ��� ������������ ������ (���� 0, 1, 2, 3). ���� 4, 5, 6, 7 ��������.
   ������������ ������, ���������� �������� ������� ����� ��������� ���������� ���,
   (�������� ����������� ���������) - �� (� ��������), Do = ��-1 - ������� ������� 

  14        ��� D� (����� 18)
      7�  6�  5�  4�  3�  2�  1�  0�
   */

  u8 Kod_Dpp1        : 8;        //  ��� D��        (����� 29) � ���.1
  u8 Kod_Dpp2        : 8;        //  ��� D��        (����� 29) � ���.2
  u8 Kod_Dpp3        : 8;        //  ��� D��        (����� 29) � ���.3 
  
/*
8 ��������� ��� ������ ����� (1/0) (��� ���� ��������� ��������� � �����)

1B       ��� Dpp (����� 29)
      7�  6�  5�  4�  3�  2�  1�  0�
47       ��� Dpp (����� 29)
      7�  6�  5�  4�  3�  2�  1�  0�
67       ��� Dpp (����� 29)
      7�  6�  5�  4�  3�  2�  1�  0�

  ���0 � �������/���������� ������ ��� ��������� �������
  ���1 � �������/���������� ��������������� ���������
  ���2 � ����������� /�� ����������� (��� N>0) ����� ��������
  ���3 � �������/���������� ��� � ������� �������
  ���7 � �������/���������� �������������  T0 ��  Ti0
  ���� 4,5,6,7 ����� ���� (������������ � ������� ����������)
*/

  u8 Kod_Dn1         : 8;        //  ��� D�         (����� 28)
  u8 Kod_Dn2         : 8;        //  ��� D�         (����� 28)
  u8 Kod_Dn3         : 8;        //  ��� D�         (����� 28) 

/*
�������, ������������ ��������� ��������� ��������.
1A      ��� Dn (����� 28) � ��� 1
      7�  6�  5�  4�  3�  2�  1�  0�
46      ��� Dn (����� 28) � ��� 2
      7�  6�  5�  4�  3�  2�  1�  0�
66      ��� Dn (����� 28) � ��� 3
      7�  6�  5�  4�  3�  2�  1�  0�

8 ��������� ��� �����  n (��� ���� ��������� ��������� � �����).
��� ������� ������ ��� � ���������   �� (��� ���(0) ������ ���� �����  �1�)
 ������������ ��������� ��������� ������ ������������� �������:

 ��� ������� ������ ��� � ���������  2-10**6 �� (��� ���(0) ������ ���� �����  �1�)
  ������������ ��������� ��������� ������ ������������� �������:
 Tm=dT*2**i*n (���),
��� n=2,3,...255
 .
����� i  � n  ������������ ...n-1
 .
*/
  u8  Kod_Krp        : 8;        //  ��� ���        (����� 23) 
  u32 Kod_Kp         : 24;        //  ��� ��- ������ (����� 22) 
/*
16    ��� ��-���� 2 (����� 21)       ��� ��-���� 3 (����� 20)
      7�  6�  5�  4�  3�  2�  1�    0�  7�  6�  5�  4�  3�  2�  1�  0�
18    ��� ��� (����� 23)             ��� ��-���� 1 (����� 22)
      7�  6�  5�  4�  3�  2�  1�    0�  7�  6�  5�  4�  3�  2�  1�  0�
������������ � ������ ��, ������� ���� ���� ������ � ������ �� ������ ���� ��������� �0�.
*/
   
/*
����� ���� ��̻ ��������� � ������,
 ����� ��������� ����� ������ ������������ �������, �.�. ��� ������.
  � ���� ������ ���   ������ ���� ��� ����� �����  �1�.
����� ������ �������������� �����,
 ������� ������ ������ �� �������� ������� ������� ��������� ������������ �����,
  �������������� ���������� �� (�������� ��������� ����-��).

  1C      ��� D��-���� 5 (����� 33) � ���.1       ��� D��-���� 6 (����� 32) � ���.1
         7�  6�  5�  4�  3�  2�  1�              0�  7�  6�  5�  4�  3�  2�  1�  0�
  1E      ��� D��-���� 3 (����� 35) � ���.1       ��� D��-���� 4 (����� 34) � ���.1
         7�  6�  5�  4�  3�  2�  1�              0�  7�  6�  5�  4�  3�  2�  1�  0�
  20      ��� D��-���� 1 (����� 37) � ���.1       ��� D��-���� 2 (����� 36) � ���.1
         7�  6�  5�  4�  3�  2�  1�              0�  7�  6�  5�  4�  3�  2�  1�  0�
*/
 u32 Kod_Dchi        : 32;       //  ��� D�� (����� 39)(����� 38)(����� 40)
 u32 Kod_Dchi2       : 32;       //  ��� D�� (����� 39)(����� 38)(����� 40) 
 u32 Kod_Dchi3       : 32;       //  ��� D�� (����� 39)(����� 38)(����� 40) 
/*
24 ��������� ��� ��������� ������� ���������.
��������� ������� ��������� ������������ ����������:
 (430*10**6 + b*df)��,
���  df=10^7/2^10 ��. �������� 9765,625 ��.
����� �������, ��� ������������ ����   ���������� ���������� �����  :
 ,
��� ����  .
*/

 u32 Kod_Dchg        : 32;       //  ��� D�� (����� 56)(����� 55)(����� 54)
 u32 Kod_Dchg2       : 32;       //  ��� D�� (����� 56)(����� 55)(����� 54)
 u32 Kod_Dchg3       : 32;       //  ��� D�� (����� 56)(����� 55)(����� 54)
 /*
24 ��������� ��� ��������� ������� ������������� ������� �� ��������� ������.
������� ������������� ������� �� ��������� ������ ������������ ����������:
  (��), 

2A       ��� D��-���� 3 (����� 54) � ���.1 
         7�  6�  5�  4�  3�  2�  1�  0�                
2C       ��� D��-���� 1 (����� 56) � ���.1    ��� D��-���� 2 (����� 55) � ���.1
         7�  6�  5�  4�  3�  2�  1�  0�         7�  6�  5�  4�  3�  2�  1�  0�
*/
 u32 Kod_Dchp       : 32;       //  ��� D�� (����� 58)(����� 57)  
/*
24 ��������� ��� ������� ������������� ������� �� ��������� ������� 
���   ������ ���� ��������� ������  �1� (������� ��������������� ���������).
������� ������������� ������� �� ��������� ������� ������������ ����������:
*/
 u32 Kod_Dchk       : 32;       //  ��� D�� (����� 62)(����� 61)(����� 60)
/*
24 ��������� ��� ������� ������������� ������� �� ��������� �����������.
���   ������ ���� ��������� �  �1� (������� ��������������� ���������).

30       ���  D��-���� 3 (����� 60)  
       7�  6�  5�  4�  3�  2�  1�  0�                
32       ���  D��-���� 1 (����� 62)       ���  D��-���� 2 (����� 61)
       7�  6�  5�  4�  3�  2�  1�  0�    7�  6�  5�  4�  3�  2�  1�  0�
*/

} Inf_packet;

   
  typedef struct                //���������� ��������� ��������� ������ � ��������� �����
{
  u16 code_00h     : 16;
  
  u16 code_01h     : 16;  
/*
�������� ���������� - ����������� ��������� ���������� ����� 1�07��.

D15 D14 D13 D12        D11        D10 D9  D8       D7  D6      D5  D4      D3  D2      D1  D0
��� ������             ����.
                       ���.      ����� (��)         ����         ���        ��         ��/��
3�  2�  1�  0�                   ���. �2  ��       ���.���.    ���.���.    ���.���.    ���.���.

D15?D12 � � 1�08�� �� ������������.
D11 � ����� ���������� - ���. �1� .
D10 � ���������� � �������� ������ � �������,
 ��� ���. "0" � ������� D8 - ���������� ��� ���� ������, ��� ���.  �1�- ��� ������.
D9 � ���������� � �������� ������ �� �2, ��� ���.
 "0" � ������� D8 -���������� ��� ���� ��-����, ��� ���. �1�- ��� ������.
D7?D2 � ��������� ���������: ��� 11 - ������� ������ � ���������, 
��� 00 - ��� ������� � ��-�������� �������,
 ��� 01 - ��� ���������� �������, ��� 10 - ��� ������� �������.
Dl?D0 - ��� 11 - �� ����� � ��������,
 ��� 00 - �� ����� � ��������, ��� 01 - �� ��������,
  �� �����, ��� 10 - �� ��������, �� �����.
*/
 u16 code_02h   :16;
 /*
�������� ���������� - ����������� ��������� ����������

D15     D14           D13 D12 D11 D10        D9  D8  D7  D6         D5    D4    D3   D2    D1  DO
����.��              ����� ���. ������.     ����� ������� ��                 ������ ������
���� t  ��             4   3   2   1          4   3   2  1         �600  �605  �604  �603  �602  �601

D15 � ����� ����������� ����������� ������������ 1�07�� (���. �1�).
D14 � ���������� ����������� ������������ 1�07�� (���.  �1�).
D13?D10 � ������� ������� � ����� �� �������� D10-D13,
 ������� � ���, ��� ������ ���� �� ��������� �� ������� ������. 
 ������ D10 ������������� 1 ������, ����������� ���.2, �����-���� �� � ���.6 (��. ������� 3.8).
  � ������ ������������������� ��������� �� (� ���������-������ ���� ���������� ����) �� ������,
   1�07�� ������������� �� ��������� ��� 1 ������.
D9?D6 � ������� ������� ������� � ����� ������� ��������� ��� � ��������������� ����-��.
 ��� ��������� ��������� (���������� ������� �� �� ����� �� ���������� ��) �����-�� ����� ���� �� ���� ��������.
D5?D0 � ������� ������ ����� 1�07�� (���.  �1�) .
 */ 
 
  u16 code_03h   :16;
 
 /*
�������� ���������� - ����������� ��������� ����������

   D15 - D9        D8       D7 - D5                D3 - D0	
   ������      ���� ���    ������        ����� ��������� �����-����� ��
 

D8 � ����� ��� ����� 1�07�� - (���.  �1�).
D3?D0 � ������ D0 ������������� ������, ����������� ���.2,
 ����.1 ��� � ���.6 (��. ����-��� 3.8).
 ������� ���� � ������ ������� ������� � ���, ��� �������� ������ ��������� �� ���-���� ������,
 �.�. �� ����� �� ����� � ����� 1 �������� �� ��������� ��������� ���. �����-����� � ��� ������ ��������.

������:
?	���� � ������� D10 ����� 02h �������, � � ������� D0 ����� 04h ����, �� ������ �������� ������� � ���, ��� �������� ��������� �� 1 ������. 
?	���� � ������� D10 ����� 02h ����, � � ������� D0 ����� 04h �������, �� ������ �������� ������� � ���, ��� �������� ��������� ��� (��������� �� � ����������) 1 ������. 
?	���� � ������� D10 ����� 02h ����, � � ������� D0 ����� 04h ����, �� ������ �������� ������� � ���, ��� �������� ��������� �� � ���. � ����� ������ ���� � ������� D6 ����� 02h ����, �� ��������� ����������� ��� 1 ������. ���� � ������� D6 ����� 02h �������, �� ��������� ������������ ����������� 1 ������.

 */ 

 u16 code_04h   :16;
 u16 code_05h   :16;
 u16 code_06h   :16;
 u16 code_07h   :16;
 u16 code_08h   :16;

} Inf_sys_packet;

 
  typedef struct                //flags
{
  u8 byte1      : 8;        //  ��� ������  4-�� ����
  u8 byte2      : 8;        //  ����������� ������ ��� 4-�� ����
  u8 byte3      : 8;        //  ���������� ������ 2-�� ����
  u8 byte4      : 8;        //  ����� ����������� ���� 4-�� ����
  u8 byte5      : 8;        //  ��� ������ 2-�� ����
  u8 byte6      : 8; 

  u8  VCU  :2; // ������� ���
  u8   MU  :2; // ������� �� 
  
  u8  GBR  :2; // ������� ���
  u8   BR  :2; // ������� �� 
  u8 VYKL  :2; // ������� ����
  u8 Ohl   :2; // ��������� ����������
  u8 NIMAFK:2; // ��������� ������ ��������������� ��������
  u8   NILS:2; // ��������� ������ ��������� ����
  u8 ERROR_B610:2; // (������ 1�-�610)
  u8 ERROR_B660:2; // (������ 1�-�660)
  u8 OBMEN_B610:2; // (����� � ������ 1�-�610)
  
} Init_K615_struct;

#define BUFFER_p   131u
#define BUFFER_max (BUFFER_p-1)

  typedef struct                //
{  

   u32   TNI_a[BUFFER_p]; 
   u32   TKI_a[BUFFER_p];

   u32   TNP_a[BUFFER_p]; 
   u32   TKP_a[BUFFER_p];

   u32   index_Evnt_Izl; 
   u32   index_Evnt_Get;
   
   u8   FLAG_Evnt_Get;
   u8   FLAG_Evnt_Izl;

   u16 Event_IZL[3]; //����������� ������� ������������ ���������
   u16 Event_GET[5]; //����������� ������� ������������ ���������
   
    u8	 SI_cond [3];  //������   ��� c����������1
    u8	 SI_RamRT[3];  //������   ��� c����������1
   u32   SI_Delta[3];  //������   ��� c����������1
   u32   SI_F    [3];  //������   ��� c����������1
   u32   SI_Time [3];  //������   ��� c����������1
    
	u8	 SG_cond [5];  //������   ��� c����������2
   	u8	 SG_RamRT[5];  //������   ��� c����������2
   u32   SG_Delta[5];  //������   ��� c����������2
   u32   SG_F    [5];  //������   ��� c����������2
   u32   SG_Time [5];  //������   ��� c����������2
   
   u16 index_TNO;  //������� �������� ���������
   u16 index_TNC;
   u16 index_TNI;
   u16 index_TKI;
   u16 index_TNP;
   u16 index_TKP;
   u16 index_TOBM;
 
   u32 Delta_Work_TNC; // ���������  ������������ ���
   
   u32 FLAG_index_END_TNP;
   u32 FLAG_index_END_TNI;

   u32   TNO_a[1];
   u32   TNC_a[2];
   u32  TOBM_a[1];

 } Sintez_struct;


  Sintez_struct    Struk0;
//Sintez_struct    Struk1;   //��������� �������� ��������� � ������ ��� ��������������
  Sintez_struct    StrukREZ; //��������� �������� ��������� � ������ ��� ��������������

//Sintez_struct *  Sintez_str; //��������� �� ���������

 Inf_packet         Mem1 ; // �������� ��������� Mem1
 Inf_sys_packet     Mem_sys;
 Init_K615_struct   Mem_K615;// �������� ��������� ��� ������� �615

//----------------------------------------------------------------------------

 #define Index_BUF 120u  //������� �������� ������ ETHERNET

   typedef struct    
   {
   	  unsigned char  A[4][26]; //������ �������� �����
   	  unsigned int   	 TNC:32; //����� ��� �����
   	  unsigned int   	 TNO:32; //����� ��O �����
   	  unsigned int       SEV; //����� ��� �����
   	  char 		   condition; //��������� �����: 0 - � ��������; 1 - � ������; 2 - ����������;
   } Packet_struct;

   Packet_struct Pkt[Index_BUF]; //������ �������� ����������� �����
   Packet_struct Pkt_0[1]; //������ �������� ����������� �����

  volatile unsigned int index_wr_old=0; //������� ������ ������ � ��������� �����
  volatile unsigned int index_wr=0; //������� ������ ������ � ��������� �����
  volatile unsigned int index_rd=0; //������� ������ ������ �� ���������� ������
//----------------------------------------------------------------------------
char flag_packet_OK_for_read=0; //���� ���������� ���������� ��������� ��������� ����� ETHERNEt

unsigned int   TNC_actual  =0; //������� ���	
unsigned int   TNO_actual  =0; //������� ���
unsigned int   CEV_actual  =0; //������� ���

unsigned int   TNC_zad  =0; //������� ���	
unsigned int   TNO_zad  =0; //������� ���
unsigned int   CEV_zad  =0; //������� ���

unsigned char  FLAG_EXTRA_PACKET=0; //���� ���������� ��� ������ ������ �����, ���������� � ������.

unsigned int   Time_Preset =0; //����������������� ����� � ���

volatile unsigned char flag_dsp_ok=1;
 char flag_sync_ETHERNET=0;
 u32 F_izl=0;
 u32 delta_F_izl=0;
 u8 flag_error_fizl=0;
 u8 flag_error_k615=0;
 u8 flag_error_foch=0;
//-------------------------------------------------------------------------
    typedef struct    
   {
   	 unsigned char    Level_F; //������� �������� ��������,1/0
   	 unsigned char    Level_U; //������� ���������� ������� 1/0
   	 unsigned char       Temp; //����������� ������� 1/0
   	 unsigned char    TimeOUT; //������� ������� 0/1  ������� ������ �������� "0" ������� ����������� ��������, ��� 4 ��� �� ��������� �������� � ���������� ���������.
   	 unsigned char 	Condition; //��������� �������: 1/0
   } Life_Blok;

 Life_Blok K611;
 Life_Blok K612;   
 Life_Blok K613;
 Life_Blok K614;
 Life_Blok K615;
 Life_Blok B610;

   
//***********************���������� �������*********************************

unsigned char  C_t_day =0;  //������� 
unsigned char  C_t_hour=0;
unsigned char  C_t_min =0;
unsigned char  C_t_sec =0;

unsigned short C_t_ms  =0;
unsigned int   C_t_us  =0;


unsigned char  C_t_dayX =0; //����� ������������
unsigned char  C_t_hourX=0;
unsigned char  C_t_minX =0;
unsigned char  C_t_secX =0;

unsigned short C_t_msX  =0;
unsigned int   C_t_usX  =450;

//----------------------��������� �������-------------------

 void fillBuf  ( char* ptrBuf, unsigned short lengthBuf, unsigned char symb );
 void clearBuf ( char* ptrBuf, unsigned short lengthBuf );
 void zputs    ( char* s, unsigned  s_size );
 int  getStr   ( char* s, unsigned char* s_size );

extern void CPUAccel  (void);
extern void UART_init (int speed );
extern void Init_DMA  (unsigned char);
extern void Init_PPI  (unsigned char);

void spi_transf(u8* ,u8 );
void SPIInit (u16 , u16 );
void spi_cs(u8 );
void SPORT0_enable(void);
void SPORT0_disable(void); 
  u8 SPI(u8 );
void reverse(char *);
void itoa(int,char*);
void u_itoa(u64,char*);
void Menu1(char a);
void K615_work(u8);
void K615_test_indi(char );
void IO ( char* );
void func_TNO(void);
unsigned int Timer_INT2(char );
unsigned int Time_real(unsigned int );
void Time_control (void);
void control_TNC_TNO (void);
void Avariya_test(void);
void SDRAM_test(void);
void SDRAM_work(void);
void tabl_view(unsigned int,char);
void func_event_k615 (void);
void UART_control (void);
int UDP_test(void);
void fillBuf (char* , unsigned short , unsigned char  );
void zputs(char *, unsigned );
unsigned int leng ( char *) ;
void sendT ( char* );
void UART_DMA_TX  (void);
void UART_DMA_TX2 (void);
void Transf ( char* );
void Transf2( char* );
void ZTransf( char* ,unsigned char ) ;
void ZUTransf( u8* ,unsigned char ) ;
void UDP_TCP_setup(void);
void KUK_IO(unsigned char* ,unsigned int ); 
unsigned int packet_SORT(unsigned int ,unsigned int,unsigned char );
void packet_TRSL (unsigned char,Packet_struct * );
void pachka_monitor(void);
void SPORT_COM (void);
unsigned char Control_Impuls ( Sintez_struct * ) ;
void PPI_massiv(char ,  Sintez_struct * );
void massiv_time_setka( Sintez_struct *,unsigned char  );
void Packet_TNC1(unsigned int , Sintez_struct * );
void Str_print (  Sintez_struct *);
void VCU_sinh_form (void);
void MU_TEST(u8);
void Info_back_Ethernet (void);
void Control_bloka (void);
void Ethernet_MU (void);
void Synhron_section (void);
unsigned short strlen(const char *);
int strcmp (const char *, const char *);
//int sprintf(char *buf, const char *format, ...);
//int printf(char *buf, const char *format, ...);
void Init_Timers(void);
void Init_DMA(unsigned char );
void Init_UART_dma(void);
void Init_TxUART_DMA( char *, unsigned int );
void TxUART_en(void);
void TxUART_dis(void);
void Init_DMA_UART( char *, unsigned) ;
void Init_PPI(unsigned char );
void Init_Interrupts(void);
void InitSDRAM(void);
void init_SPORT0 (unsigned int );
void init_SPORT1 (unsigned int );
void Init_UART(void);
void Set_PLL(short , short ); 
void Init_SPI(void);
void Init_Flags(void);
void INIT_START_PACHKA (char);
void help (void);
void tst_SPI_BUF (void);
char Wait_PPI (void);
unsigned int  Event_Synhron_func(void);
void LED_ERROR(unsigned int );
void OFF_section (u8 );
void INF_ANALIZ (unsigned char *,u8,u16);
void INF_UART_SRV2 (u8 *,u8,u8);
void TNO_SYNC (void);
void Test_pachka (u8);
void packet_UPR (unsigned char ,Packet_struct * );
void loopback_tcps(SOCKET s, uint16 port);
void loopback_tcpc(SOCKET s, uint16 port);
void loopback_udp (SOCKET s, uint16 port,unsigned char);
void Set_network(void);
void spi_cs_SPI(u8 );  
void IND_DFK (unsigned int );
void FAZA (void);
void init_IP_adress (unsigned char ,unsigned char );
void TEST_INTERVAL_DISP (u16 );
unsigned int BUF_SEARCH(unsigned int ,unsigned int ,unsigned char );
void buff_SPORT (u16);
void COMMAND_ON (void);
void buf_txt (uint8 * ,u32 );
void test_inf (void);
void n_out (char s[],u32 );
void Packet_FORM (void);
//--------------------------------------------------------



u16 SPITxInProgress(void){
  return (*pSPI_STAT) & SPIF;
}

u16 SPITxFull(void){
  return (*pSPI_STAT) & TXS;
}

u16 SPIRxReady(void){
  return (*pSPI_STAT) & RXS;
}

void SPIPut(u16 data)
{
  while(!(*pSPI_STAT&0x0001));
  ssync();
  *pSPI_TDBR=data;
}

u16 SPIGet(void)
{
 while(!(*pSPI_STAT&0x0020));
 ssync();
 return *pSPI_RDBR;
}

/*
void SPIInit (u16 sclkDiv, u16 send16Bit){
  *pSPI_BAUD=sclkDiv;
  *pSPI_CTL=TDBR_CORE | SZ | (send16Bit ? SIZE : 0) | MSTR | SPE;
}
*/

 
   
  u8 SPI(u8 spi)
{
*pSPI_TDBR=spi;
ssync();
//while(!(*pSPI_STAT&0x0001));
while((*pSPI_STAT&0x0008));
while(!(*pSPI_STAT&0x0020));
return (u8)*pSPI_RDBR;
}


void spi_cs_SPI(u8 cs)   //��������� ������  ���������� ��� ���� SPI
{
   
   switch (cs) {

case 1:  *pSPI_FLG = (1<<1); break;
case 2:  *pSPI_FLG = (1<<2); break;
case 3:  *pSPI_FLG = (1<<3); break;
case 4:  *pSPI_FLG = (1<<4); break;

case 5:  *pSPI_FLG = (1<<5); break;
case 6:  *pSPI_FLG = (1<<6); break;
case 7:  *pSPI_FLG = (1<<7); break;

default: break;
   }
}

  

   void spi_cs(u8 cs)   //��������� ������������  ���������� ��� ���� SPI
{

   switch (cs) {

case 0:  *pFIO_FLAG_D=*pFIO_FLAG_D&(~PF3);   break;//������� ���� �� PF3  
case 1:  *pFIO_FLAG_D=*pFIO_FLAG_D|( PF3);   break;//������� ���� �� PF3  

default: break;

   }

}
  
	
void spi_transf(u8* command,u8 l)    
 
 {     
 // spi ��������

  unsigned i; 
  
   	  for (i=0;i<l;i++)
      
 	 {	 
	 	SPI(command[i]);
	  }
 	 
   }
   
  void SPORT0_enable(void)
  {
   ssync();
  *pSPORT0_TCR1 |= TSPEN; // Enable SPORT0 Transmitter
   ssync();
  *pSPORT0_RCR1 |= RSPEN; // Enable SPORT0 Transmitter
   ssync();
  }
   
    void SPORT0_disable(void)
  {
   ssync();
  *pSPORT0_TCR1 &= ~(TSPEN); // Enable SPORT0 Transmitter
   ssync();
  *pSPORT0_RCR1 &= ~(RSPEN); // Enable SPORT0 Transmitter
   ssync();
  }

  void SPORT1_enable(void)
  {
   *pSIC_IMASK |= 0x01000;
   ssync();
  *pSPORT1_TCR1 |= TSPEN; // Enable SPORT0 Transmitter
   ssync();
  *pSPORT1_RCR1 |= RSPEN; // Enable SPORT0 Transmitter
   ssync();
  }
   
    void SPORT1_disable(void)
  {
   ssync();
  *pSPORT1_TCR1 &= ~(TSPEN); // Enable SPORT0 Transmitter
   ssync();
  *pSPORT1_RCR1 &= ~(RSPEN); // Enable SPORT0 Transmitter
   ssync();
  }

   
u32 SPORT0_write_read(u32 data)
{ 
  volatile  u32 word;
  int temp_IMASK;           //Anomali err
 
    SPORT0_enable();
  
  while(!(*pSPORT0_STAT & TXHRE));
      *pSPORT0_TX32 = data;

   ssync();
       
  while(!(*pSPORT0_STAT & RXNE)); 
     
     temp_IMASK = cli();  //Anomali err
       word =*pSPORT0_RX32;
     sti(temp_IMASK);     //Anomali err
  
     ssync();
          
    SPORT0_disable(); 
  
    return word;
}

  
   
u32 SPORT1_write (u16 data)
{ 
  volatile  u32 word;
  u16 a=0;
  int temp_IMASK;           //Anomali err

  a = data<<2;
  data = (a|(0x01<<10))|0x1;  
  SPORT1_enable();

 //while(!(*pSPORT1_STAT & TXHRE));

    *pSPORT1_TX16 = data;
    
     return word;
}



  void put_char1(char c)
{
  // while (tx_counter1 == TX_BUFFER_SIZE1);
    *pSIC_IMASK &= ~0x01000;//��������� ���������� �� ��������
    ssync();
   if (c==0x08) Master_BUS_1; else Master_BUS_0;
    ssync();

   if (tx_counter1||((*pSPORT1_STAT & TXF))) //���� ����� �� ������ ��� FIFO �����
      {
         tx_buffer1[tx_wr_index1++]=c;
         if (tx_wr_index1 == TX_BUFFER_SIZE1) tx_wr_index1=0;
         ++tx_counter1;
		 ssync();
         *pSIC_IMASK |= 0x01000;//��������� ���������� �� ��������
         ssync();
      }
       else
       {
          SPORT1_write (c);
       }

}

void Zput_str1(char *s,u16 n)
   {
	   u16 i=0;
     for (i=0;i<n;i++) put_char1(s[i]);
   }

void put_str1(char *s)
   {
      //while (*s != 0)
      //put_char1(*s++);
	  Transf(s);
   }

void read_str1(u16 n)
   {
	   u16 i=0;
      for (i=0;i<n;i++)
      put_char1(0x08);//�������� - ����� �������� �� ��������
   }



  // reverse:  �������������� ������ s �� ����� 
 void reverse(char s[])
 {
     int i, j;
     char c;
 
     for (i = 0, j = strlen(s)-1; i<j; i++, j--) {
         c = s[i];
         s[i] = s[j];
         s[j] = c;
     }
 }

 /* itoa:  ������������ n � ������� � s */
 void itoa(int n,char s[])  //������� int �� u32 !!!! 05-11-16
 {
     int i, sign;
 
     if ((sign = n) < 0)  /* ���������� ���� */
         n = -n;          /* ������ n ������������� ������ */
     i = 0;
     do {       /* ���������� ����� � �������� ������� */
         s[i++] = n % 10 + '0';   /* ����� ��������� ����� */
     } while ((n /= 10) > 0);     /* ������� */
     if (sign < 0)
         s[i++] = '-';
     s[i] = '\0';
     reverse(s);
 }

 /* itoa:  ������������ n � ������� � s */
 void u_itoa(u64 n,char s[])  //������� int �� u32 !!!! 05-11-16
 {
     int i, sign;

     i = 0;
     do {       /* ���������� ����� � �������� ������� */
         s[i++] = n % 10 + '0';   /* ����� ��������� ����� */
     } while ((n /= 10) > 0);     /* ������� */
  
     s[i] = '\0';
     reverse(s);
 }
 
void u_out (char s[],u32 a)
{
   put_str1 (s);
   u_itoa (a,strng);
   put_str1(strng);
   put_str1 ("\r\n");
}

void x_out (char s[],u32 a)
{
   put_str1 (s);
   sprintf (strng,"%X",a);
   put_str1(strng);
   put_str1 ("\r\n");
}

void xn_out (char s[],u32 a)
{
   put_str1 (s);
   sprintf (strng,"%X",a);
   put_str1(strng);
   //put_str1 ("\r\n");
}

void d_out (char s[],double a)
{
   put_str1 (s);
//   sprintf (strng,"%lf",a);
   put_str1(strng);
   put_str1 ("\r\n");
}
 
 
char init_K611(void)

{
  Transf("\r\n");
	Transf("~6 init_K611;");
	Transf("\r\n");
	
	//TX_485;
	return 1;	
}

char control_K611(void)

{
    Transf("\r\n");
	Transf("~6 control_K611;");
	Transf("\r\n");
	
	//TX_485;
return 1;	
}

//---------------------------------------
 char init_K612(void)

{
    Transf("\r\n");  
	Transf("~3 ���_������;");
	Transf("\r\n");
	//TX_485;
	return 1;

} 

  char control_K612(void)

{
    Transf("\r\n"); 
	Transf("~3 ���������;");
	Transf("\r\n");
	//TX_485;
	return 1;
}

 char init_K613(void)

{  
  Transf("\r\n");  
	Transf("~4 ���_������;");
	Transf("\r\n");
	//TX_485;
	return 1;
} 

  char control_K613(void)

{
    Transf("\r\n");  
	Transf("~4 ���������;");
	Transf("\r\n");
	//TX_485;
	return 1;
} 

  char control_B610(void) //������ ��������� ����� �610

{
  Transf2("\r\n"); 
  Transf2("~0 INF;");
  Transf2("\r\n");
  return 1;
}

void func_STATUS_B610 (u8 a,u8 b)
{
  u8 FLAG_ERROR=0;
  u8 f601=0;
  u8 f602=0;
  u8 f603=0;
  u8 f604=0;
  u8 f605=0;
  u8 f608=0;
  u8 f_Temp=0;
  u8 f_OK_BP=0;

  if (FLAG_REGIM!=2) 
  {
    Mem_K615.ERROR_B610=0; 
    Mem_K615.OBMEN_B610=1;

    a = a>>2; //3 ��� ������� - ��� ��� ���, ������ ��� ���� - ����� ������ ����� �610  01 - ��, 10 - ���
    a = a>>1;

    if ((Mem_K615.GBR&0x01)==0x01) f601 = 1; else f601 = (b>>0)&0x01;
    if ((Mem_K615.GBR&0x01)==0x01) f602 = 1; else f602 = (b>>1)&0x01;

    f603 = (b>>2)&0x01;
    f604 = (b>>3)&0x01;

    if ((Mem_K615.GBR&0x01)==0x01)  f605 =1;  else f605 = (b>>4)&0x01;

    //f608 = (b>>5)&0x01;
    f608 = 1;

    f_OK_BP = (b>>6)&0x01;
    f_Temp  = (b>>7)&0x01;

  FLAG_ERROR=f_Temp  //FLAG_Temp_D1_STATUS � FLAG_Temp_D2_STATUS
            &f_OK_BP //FLAG_OK_BP
            &f608    //flag_life_k608
         // &f605    //flag_life_k605
            &f604    //flag_life_k604
            &f603    //flag_life_k603
            &f602    //flag_life_k602
            &f601;   //flag_life_k601


   if (FLAG_ERROR==0)  
     { 
       Mem_K615.ERROR_B610=1;                     
       ERROR_FLAG=ERROR_sport;
       AVARIYA_flag=700;
       STATUS_B610_INF=0;//������
	   put_str1("�����-�� ������ ����� �610!!!\r\n");
       //STATUS_B610_INF=1;
      } 
      else   STATUS_B610_INF=1;//�����������
  }
  
}

void K615_test_indi(char a)

{
  char s[6];
  int i;
  char crc[1];

  s[0]=0xff;
  s[1]=0xff;
  s[2]=0xff;
  s[3]=0xff;
  s[4]=0xff;
  s[5]=0xff;
  
  if (a<9) {s[2]=0x01;s[2]=s[2]<<a;s[2]=~s[2];}     else s[2]=~0x00;
  if (a>8) {s[3]=0x01;s[3]=s[3]<<(a-9);s[3]=~s[3];} else s[3]=~0x00;
  if (a==0){s[2]=(~0x01); s[3]=0xff;}

//		sendT ("a:");
//		sprintf(strng,"%u",a);
//    sendT(strng);
//    sendT("\r\n");
for (i=0;i<6;i++) 
  { 
    if ((s[i]=='~')||(s[i]==';')) s[i]=s[i]|0x80; 
   } 

 crc[0] = s[0]^s[1]^s[2]^s[3]^s[4]^s[5]; //������ ����������� �����
  
//  TX_485;
  ssync();
  Transf("\r\n");
  Transf("~5 OUTPORT:");
  ZTransf(s,6);
  Transf(".");
  ZTransf(crc,1);
  Transf(";");
  Transf("\r\n");
  Transf("\r\n");
//  sendT("\r\n");
/*			
  sendT("\r\n");
  sendT("~5 OUTPORT:");
  zputs(s,6);
  sendT(".");
  zputs(crc,1);
  sendT(";");
  sendT("\r\n");
  sendT("\r\n");
  */
	
	UART_DMA_TX (); 
}


char control_K615(void)
{
    TX_485;
    Transf("\r\n");
	Transf("~5 INPORT");
	//ZTransf(s,6);
	Transf(";");
	Transf("\r\n");
	Transf("\r");

 return 1;
}

void BUF_clear(void)
{
  unsigned int i=0u;
  unsigned int j=0u;
  unsigned int k=0u;

  for (i=0u;i<Index_BUF;i++)
    {                                            
       Pkt[i].SEV=0u;
       Pkt[i].TNC=0u;
       Pkt[i].TNO=0u;
       Pkt[i].condition=0u;

       for (j=0u;j<4u;j++)
        for (k=0u;k<32u;k++)
           Pkt[i].A[j][k] = 0u;                  
    }
}

void Event_SPORT_RUN (unsigned int a)
{
  SPORT0_write_read(a); //������ ������ ���� �����!!! , � �� ��������� ������ SPORT
  SPORT0_write_read(a);
}

void GBR_zad (void)
{
  Mem_K615.GBR=0x3; // ��� 11 - ������� ������ � ���������, ��� 00 - ��� ������� � ���������� �������,
  Mem1.Zadano_GBR = 0x5; 
  Mem_K615.BR =0;
  Mem1.Zadano_BR =0xc;
  Mem_K615.VYKL =0;
  FLAG_ERROR_UP=1;
  FLAG_OK_UP   =0;
  RESET_SINTEZ_flag=0;
                     
  DELAY_CONTROL=DELAY_CONTROL_const;
  ERROR_FLAG = ERROR_sport;
  Event_SPORT_RUN (ERROR_FLAG);//�������� ������ ������ ��� �615
  //if (Mem1.Zapret_REZERV==0xc) MASTER_CODE=0xff;
  FLAG_MASTER_REZERV=0;
  FLAG_MASTER_BR_OK=0;
  TIMER_GBR_OK=0;
  TIMER_AVARIYA=0;

  EVENT_REZERV = 0 ;
  REZERV_INT1  = 0;

  WORK_TU_FLAG = 'w';
  OFF_section (0);//�������� �����������
  put_str1("����� ����� ���\r");
  FLAG_MASTER_REZERV_disp=0;
  flag_sync_ETHERNET=0;
  FLAG_START_WORK=1;
}

void BR_zad (void)
{
  Mem_K615.BR =0x2;//  ��� 11 - ������� ������ � ���������, ��� 00 - ��� ������� � ���������� �������,
  Mem1.Zadano_BR =0x5;
  Mem_K615.GBR=0;
  Mem_K615.VYKL=0;
  FLAG_ERROR_UP=1;
  FLAG_OK_UP   =0;
  RESET_SINTEZ_flag=0;
  Mem1.Zadano_GBR = 0xc;
  DELAY_CONTROL=DELAY_CONTROL_const;
  ERROR_FLAG = ERROR_sport;
  Event_SPORT_RUN (ERROR_FLAG);//�������� ������ ������ ��� �615 
  //if (Mem1.Zapret_REZERV==0xc) MASTER_CODE=0xff;
  FLAG_MASTER_BR_OK=0;
   TIMER_GBR_OK=0;
   TIMER_AVARIYA=0;

  WORK_TU_FLAG = 'w';
  OFF_section (0);//�������� �����������
  put_str1("����� ����� ��\r");
  FLAG_MASTER_REZERV_disp=0;
  FLAG_MASTER_REZERV=0;
  flag_sync_ETHERNET=0;   
  FLAG_START_WORK=1;  
  //SINTEZ_RESET_off;
}

void FT_control (void)

{
	//-----------����������� ������� ������ ��------------------
 	NORM_PIT_2FT= Mem_K615.byte2>>7;
	NORM_PIT_1FT=(Mem_K615.byte2>>6)&0x1;
	
	AVARIYA_PIT_1_FT = Mem_K615.byte3&0x1;
	AVARIYA_PIT_2_FT = Mem_K615.byte6&0x1;
	
	RAB_KAN_1FT  = (Mem_K615.byte3>>1)&0x1;
	RAB_KAN_2FT  = (Mem_K615.byte3>>2)&0x1;
	RAB_KAN_3FT  = (Mem_K615.byte3>>3)&0x1;
	RAB_KAN_4FT  = (Mem_K615.byte3>>4)&0x1;
	
	AVARIYA_KAN_1_FT =  (Mem_K615.byte3>>5)&0x1;
	AVARIYA_KAN_2_FT =  (Mem_K615.byte3>>6)&0x1;
	AVARIYA_KAN_3_FT =  (Mem_K615.byte3>>7)&0x1;
	AVARIYA_KAN_4_FT =  (Mem_K615.byte4>>1)&0x1;
	
	NORMA_TEMP_1U07FI=  (Mem_K615.byte4>>5)&0x1;
	PA_1U07_FI		 =  (Mem_K615.byte4>>6)&0x1;
	//PA_1U07_FI		 =  0;
	ERROR_TN_FLAG    =  (Mem_K615.byte4>>2)&0x1;//������ �������� ��� � ��� � ������� �615
	
	FT_pit= (NORM_PIT_1FT    <<0)|
			(NORM_PIT_2FT    <<1)|
			(AVARIYA_PIT_1_FT<<2)|
			(AVARIYA_PIT_2_FT<<3);
	
	FT_reg=	(RAB_KAN_1FT<<0)|
			(RAB_KAN_2FT<<1)|
			(RAB_KAN_3FT<<2)|
			(RAB_KAN_4FT<<3)|
	   (AVARIYA_KAN_1_FT<<4)|
	   (AVARIYA_KAN_2_FT<<5)|
	   (AVARIYA_KAN_3_FT<<6)|
	   (AVARIYA_KAN_4_FT<<7);
	   
	   
//--------------------------------------
if (FT_pit!=FT_pit_log) {FT_pit_log=FT_pit;FLAG_FT_pit=0;}   else FLAG_FT_pit++;
if (FLAG_FT_pit>10)   FT_pit_log2=FT_pit_log;

if (FT_reg!=FT_reg_log) {FT_reg_log=FT_reg;FLAG_FT_reg=0;} else FLAG_FT_reg++;
if (FLAG_FT_reg>10)   FT_reg_log2=FT_reg_log;
//--------------------------------------	   

	
//----------------------------------------------------------
}

char  crc_outport[1];
char  str_command[6];

void K615_out (void)
{
  //TX_485;
  //ssync();
 // put_str1("outport();\r\n");
 
  FLAG_EVENT_K615_RZRV=0;
 
  Transf("\r\n");
  Transf("~5 OUTPORT:");
  ZTransf(str_command,6);
  Transf(".");
  ZTransf(crc_outport,1);
  Transf(";");
  Transf("\r\n");
  Transf("\r\n");
/*			
  Transf("\r\n");
  Transf("~5 OUTPORT:");
  ZTransf(str_command,6);
  Transf(".");
  ZTransf(crc_outport,1);
  Transf(";");
  Transf("\r\n");
  Transf("\r\n");
  */
}



void K615_work(u8 l)
{
   char  s[6];
   char  crc[1];
   char i;
   
   char a2=0xff,a3=0xff;
   char b2=0xff,b3=0xff;
   char c2=0xff,c3=0xff;
   char d2=0xff,d3=0xff;
   char e2=0xff,e3=0xff;
   char f2=0xff,f3=0xff;
   
   char g2=0xff,g3=0xff;
   char h2=0xff,h3=0xff;
   char k3=0xff;
   
   for (i=0;i<6;i++) s[i]=0xff;
   
   Transf("K615_work\r\n");
   
   if (l==0)
   
   {
	     if (((Mem_K615.byte1|(~0x1))==(~0x1)))  
			{
		  	 Mem_K615.VYKL=Mem_K615.VYKL|0x3;
			 RESET_SINTEZ_flag=1;// ��������� ���� ���������� ������ ��� ������ ������������
			 put_str1("����� �����  - ����������!!!\r\n");
			 Mem_K615.BR =0;
			 Mem_K615.GBR=0;
			 //Mem_K615.MU =0;
			 //Mem_K615.VCU=0;
			 Mem1.Zadano_GBR=0;
			 Mem1.Zadano_BR=0;
			 //Mem1.Zadano_CU_MU = 0;
			 FLAG_ERROR_UP=1;
			 FLAG_OK_UP   =0;
    		 OFF_section (1);
			 flag_START_pachka_SINTEZ=0;
			 Mem1.Zapret_REZERV=0xc; //��������� ��������������
			 FLAG_START_WORK=0;
		     									     			
			} 
						 
	     if ((Mem_K615.byte1|(~0x2)) ==(~0x2))   //���� ��� ������
            {
               	if ((Mem_K615.VYKL&0x1)==0x1) Mem_K615.MU =0x2;
								
        		 GBR_zad ();
			}	
																		

	     if ((Mem_K615.byte1|(~0x4)) ==(~0x4))  //���� �� ������
           {
				if ((Mem_K615.VYKL&0x1)==0x1) Mem_K615.MU =0x2;
                             		
            	 BR_zad ();
		    }

	     //if ((( Mem_K615.byte1|(~0x10)) ==(~0x10))&&(Mem_K615.VYKL==0))
		   if (( Mem_K615.byte1|(~0x10)) ==(~0x10))
               {
			     if (Mem_K615.VCU==0x2) 
                    { 
					FLAG_BLOCK_TST=1;//��������� ������ ����������
                    Mem_K615.VCU = Mem_K615.VCU |0x1; //��� 11 - ������� ������ � ���������, ��� 00 - ��� ������� � ���������� �������,
                    Mem_K615.MU  =0;
					if ((Mem_K615.VYKL&0x1)==0x1) GBR_zad (); 
                    flag_event_K614=1;
					sch_obmen=0; 
					VCU_BOTTON = Mem_K615.VCU;			
					flag_sync_ETHERNET=0;
					flag_sync_ETHERNET_DISP=0;
					put_str1("����� ����� ���\r");
                    //  BUF_clear();
					//	Set_network();
                
                    }
                                                               
                }    

	      // if ((( Mem_K615.byte1|(~0x8)) ==(~0x8))&&(Mem_K615.VYKL==0))  
		   if (( Mem_K615.byte1|(~0x8)) ==(~0x8)) 
              {
				if (Mem_K615.MU ==0x2) 
            		{	
					  Mem_K615.VCU =0;
            		  Mem_K615.MU  = Mem_K615.MU|0x3;
					  //Mem1.Zadano_GBR=0;
					  //Mem1.Zadano_BR =0; 
					  VCU_BOTTON = 0x00;
            		  flag_event_K614=1;
					  sch_obmen=0; 
            			sch_pachek_test=1;
            			index_wr=0;
            			FLAG_TST_UDP_BUF=0;
						FLAG_VCU_SYNC_UP=0;															  
						BUF_clear();
						FLAG_SYNC_SEV=0;
						TNC_actual  =0; //������� ���	
						TNO_actual  =0; //������� ���
						CEV_actual  =0;	
						FLAG_DSP_text_CIKL=1;
						flag_sync_ETHERNET=0;
						flag_sync_ETHERNET_DISP=0;
						D_obzor=4;
						FLAG_ERROR_SYNC_VIEV=0;
            			//-------------------------------------------
						ERROR_FLAG = ERROR_sport;
						Event_SPORT_RUN (ERROR_FLAG);//�������� ������ ������ ��� �615 - ���������� � ������ c ���������������. 
            			INIT_START_PACHKA ('M');
            			MU_TEST(0);
            			Packet_TNC1(Alfa,&Struk0);
						Packet_TNC1(0,&StrukREZ);
            			Timer_INT2('c');
						FLAG_TST_UDP=0;
						put_str1("����� ����� ��\r");
			        }
 		                 							 				
                } 
    }
//csync();
		Mem_K615.byte1 = 0xff;

    // tst_BR ("K615_work\r\n");

// 0xfb - ������ ��������� �� ����
// 0xfd - ������ ��������� �� ��
// 2 - ������ , 1 - ����������

    if ( Mem_K615.VYKL   ==1) a2=(~0x08); 	else if ( Mem_K615.VYKL==2) a2=(~0x10); else if ( Mem_K615.VYKL==3) a2=(~0x10)&(~0x08); 
    if (  Mem_K615.GBR   ==1) b2=(~0x20); 	else if ( Mem_K615.GBR ==2) b2=(~0x40); else if ( Mem_K615.GBR ==3) b2=(~0x40)&(~0x20);
    if (  Mem_K615.BR    ==1) c3=(~0x20);   else if ( Mem_K615.BR  ==2) c3=(~0x01); else if ( Mem_K615.BR  ==3) c3=(~0x01)&(~0x20); 
    if (  Mem_K615.VCU   ==1) d3=(~0x08);   else if ( Mem_K615.VCU ==2) d3=(~0x10); else if ( Mem_K615.VCU ==3) d3=(~0x10)&(~0x08); 
    if (  Mem_K615.MU    ==1) e3=(~0x02);   else if ( Mem_K615.MU  ==2) e3=(~0x04); else if ( Mem_K615.MU  ==3) e3=(~0x04)&(~0x02); 
//  if (  Mem_K615.Ohl   ==1) f2=(~0x01);   else f2=0xff;   //����������
	if (  Mem_K615.NIMAFK==1) g2=(~0x04);  	else g2=0xff;   //������ (������ 1�-�610)
	if (  Mem_K615.NILS  ==1) h2=(~0x02);   else h2=0xff;	//���C   (������ 1�-�660)
/*	
	if (  Mem_K615.ERROR_B610==1) 
	{
		g2=(~0x04);
		f2=0xff;   //����������
	}   	
	else 
	{
		f2=(~0x01); //����������
		g2=0xff;   //(������ 1�-�610)
	}
*/
	//if (  Mem_K615.ERROR_B660==1) h2=(~0x02);   else h2=0xff;	//(������ 1�-�660)
	if (  Mem_K615.OBMEN_B610==1) k3=(~0x40);   else k3=0xff;	//(����� � ������ 1�-�610)

  s[0] = VKL_COM_FT<<3;//������ ��������� ��
  s[1] = 0xff;
  s[2] = a2&b2&c2&d2&e2&f2&g2&h2;
  s[3] = a3&b3&c3&d3&e3&f3&g3&h3&k3;
  s[4] = MASTER_CODE;
  s[5] = MASTER_CODE;//��� ������������ ������ � ���� ��������������

  for (i=0;i<6;i++) 
    { 
      if ((s[i]=='~')||(s[i]==';')) s[i]=s[i]|0x80; 
    } 

   crc[0] = s[0]^s[1]^s[2]^s[3]^s[4]^s[5]; //������ ����������� �����
   
   for (i=0;i<6;i++) str_command[i]=s[i];//��������� ��������� ����� � ������������ ������
   crc_outport[0] = crc[0];
  /* 
   u_out("Mem_K615.GBR:",Mem_K615.GBR);
   u_out("Mem_K615.BR:",Mem_K615.BR);
   u_out("Mem1.Zadano_BR:",Mem1.Zadano_BR);
   u_out("Mem1.Zadano_GBR:",Mem1.Zadano_GBR);
  */
 
   FLAG_OUTPORT = 1;//����������� ������� ������ � ������� �615
   K615_out ();
}

void SIG_FT_IN (void)
{
   put_str1("\r\n");
   u_out("NORM_PIT_2FT:",NORM_PIT_2FT);
   u_out("NORM_PIT_1FT:",NORM_PIT_1FT);
   u_out("AVARIYA_PIT_1_FT:",AVARIYA_PIT_1_FT);
   u_out("AVARIYA_PIT_2_FT:",AVARIYA_PIT_2_FT);
   u_out("RAB_KAN_1FT:",RAB_KAN_1FT);
   u_out("RAB_KAN_2FT:",RAB_KAN_2FT);
   u_out("RAB_KAN_3FT:",RAB_KAN_3FT);
   u_out("RAB_KAN_4FT:",RAB_KAN_4FT);
   
   u_out("AVARIYA_KAN_1_FT:",AVARIYA_KAN_1_FT);
   u_out("AVARIYA_KAN_2_FT:",AVARIYA_KAN_2_FT);
   u_out("AVARIYA_KAN_3_FT:",AVARIYA_KAN_3_FT);
   u_out("AVARIYA_KAN_4_FT:",AVARIYA_KAN_4_FT);
   
   u_out("NORMA_TEMP_1U07FI:",NORMA_TEMP_1U07FI);
   u_out("PA_1U07_FI:",PA_1U07_FI);
   u_out("ERROR_TN_FLAG:",ERROR_TN_FLAG);//������ ������ ��� ��� ��� � ������� �615
   x_out("Norma_amplifer         :",Norma_amplifer);
   x_out("Norma_pitaniyaFT       :",Norma_pitaniyaFT);
   x_out("Nomer_rezer_amplifer_FT:",Nomer_rezer_amplifer_FT);
   x_out("Mem_sys.code_02h       :",Mem_sys.code_02h);
   x_out("Mem_sys.code_03h       :",Mem_sys.code_03h);
     put_str1("\r\n");  
}

void tst_out (unsigned int a)
{
	 char  s[6];
   char  crc[1];
   char i;
   
   char a2=0xff,a3=0xff;
   char b2=0xff,b3=0xff;
   char c2=0xff,c3=0xff;
   char d2=0xff,d3=0xff;
   char e2=0xff,e3=0xff;
   char f2=0xff,f3=0xff;
   
   char g2=0xff,g3=0xff;
   char h2=0xff,h3=0xff;
   
   
   for (i=0;i<6;i++) s[i]=0xff;
   

// 0xfb - ������ ��������� �� ����
// 0xfd - ������ ��������� �� ��
// 1 - ������ , 2 - ����������

    if ( a==1)  a2=(~0x08);	else if ( a== 2) a2=(~0x10); else if ( a== 3) a2=(~0x10)&(~0x08);// VYKL
    if ( a==4)  b2=(~0x20);	else if ( a== 5) b2=(~0x40); else if ( a== 6) b2=(~0x40)&(~0x20);// GBR
    if ( a==7)  c3=(~0x20); else if ( a== 8) c3=(~0x01); else if ( a== 9) c3=(~0x01)&(~0x20);// BR 
	if ( a==10) c3=(~0x02); else if ( a==11) c3=(~0x04); else if ( a==12) c3=(~0x80);
   
	s[2] = a2&b2&c2&d2&e2&f2&g2&h2;
	s[3] = a3&b3&c3&d3&e3&f3&g3&h3;

          for (i=0;i<6;i++) 
              { 
                if ((s[i]=='~')||(s[i]==';')) s[i]=s[i]|0x80; 
                
              } 

   crc[0] = s[0]^s[1]^s[2]^s[3]^s[4]^s[5]; //������ ����������� �����
  
  TX_485;
            Transf("\r\n");
            Transf("~5 OUTPORT:");
            ZTransf(s,6);
            Transf(".");
            ZTransf(crc,1);
            Transf(";");
            Transf("\r\n");
            Transf("\r");
		/*	
			      Transf("\r\n");
            Transf("~5 OUTPORT:");
            ZTransf(s,6);
            Transf(".");
            ZTransf(crc,1);
            Transf(";");
            Transf("\r\n");
            Transf("\r\n");
*/
UART_DMA_TX (); 
}

void MENU (void)
{/*
	int i=0;
	
	 char *txt[]=
	 {"--------------------------------\r\n",
	  "----------MENU 614--------------\r\n",
	  "\r\n",
	  "1 - ......\r\n",
	  "2 - ......\r\n",
	  "3 - ......\r\n",
	  "~1 help;\r\n",
	  "~1 UDP_control:1;\r\n",
	  "~1 extra_UDP;\r\n",
      "~1 Pachka_control:0;\r\n",
	  "~1 SPORT_data;\r\n",
	  "~1 FT_sig;\r\n",
	  "~1 help2;\r\n",
	  "~1 TST_out:1;\r\n",
	  "~1 dF_���:9000000;\r\n",
	  "~1 Timp:2000;\r\n",
	  "~1 FG:381000000;\r\n",
	  "~1 FS:435000000;\r\n",
	  };
	  

	 for (i=0;i<18;i++)  put_str1(txt[i]);
*/
}

  

void IO ( char* str)      // ������� ��������� ��������� ������
 
 {
      u16 y;  
 unsigned int i=0;
 unsigned int j=0;
 unsigned int l=0;
 unsigned int k=0;
 char sym1=0;

  i = lenght;//������ �������� �����
  if (lenght==0) i = leng(str);
  lenght = 0;
  j=i;
 
  index = 0;
  
  if ((time_uart>50u)||(SCH_LENGHT_PACKET>MAX_PL))
  {
	//-------------------
		packet_flag=0; 
	//-------------------
		time_uart=0u;  //��������� �������� ���� ����
		index1=0u; 
		crc_ok=0; 
		packet_ok=0; 
		index_word=0u; 
		index_data_word =1u;
		index_data_word2=1u;
		data_flag =0;
		data_flag2=0;
		FLAG_lenght=0u;
		lenght_data=0u;
		sch_lenght_data=0u;
		DATA_Word [0]=' ';
		DATA_Word2[0]=' ';
		FLAG_CW = 0u; //���� ������������ �����, ��������� ����� ����� ����������
		FLAG_DATA = 0u;
		SCH_LENGHT_PACKET=0;
  }
  
  while (i>0u)   //���������� ��������� ������ � ������ ��������� 
  {
	if ((str[index]==0x7e)&&(packet_flag==0))// ���������� ������ ������
	  {  
		//-------------------
		packet_flag=1; 
		//-------------------
		time_uart=0u;  //��������� �������� ���� ����
		index1=0u; 
		crc_ok=0; 
		packet_ok=0; 
		index_word=0u; 
		index_data_word =1u;
		index_data_word2=1u;
		data_flag =0;
		data_flag2=0;
		FLAG_lenght=0u;
		lenght_data=0u;
		sch_lenght_data=0u;
		DATA_Word [0]=' ';
		DATA_Word2[0]=' ';
		FLAG_CW = 0u; //���� ������������ �����, ��������� ����� ����� ����������
		FLAG_DATA = 0u;
		SCH_LENGHT_PACKET=0;		
	  }

	 InOut[index1]=str[index];
	 SCH_LENGHT_PACKET++;//������������ ������ ������
		 
	if (( InOut[index1]==';')&&(FLAG_DATA==0u)&&(packet_flag==1))  {packet_flag=0;packet_ok=1u;FLAG_CW=1u;}
    
	if (((InOut[index1]=='=')||(InOut[index1]==':'))&&(data_flag==0)) {data_flag=1u;FLAG_CW=1u;}

	if (( InOut[index1]=='.')&&(data_flag2==0)&&(FLAG_DATA==0))   {data_flag2=1u; FLAG_CW=1u;}
	
	if (( InOut[index1]=='$')&&(FLAG_lenght==0u)) {FLAG_lenght=2u;FLAG_CW=1u;}
    
	if ((index1>2u)&&(InOut[2]==' ')&&(FLAG_CW==0u)&&(FLAG_lenght<2u))  
            {
                             if   (data_flag!=1u) {Word[index_word]=InOut[index1];} // ��������� ��������� �����
                      
                             if  ((data_flag==1u)&&(data_flag2==0u))     DATA_Word[index_data_word]=InOut[index1];// ���������  ����� ������1
                             if  ((data_flag==1u)&&(data_flag2==1u))     DATA_Word2[index_data_word2]=InOut[index1]; // ���������  ����� ������2
                    
                             if  (data_flag!=1u)
                                     {if (index_word<buf_Word) index_word++;} 
                                   else 
                                            {
                                             if ((data_flag==1u)&&(data_flag2==0u)) if (index_data_word<buf_DATA_Word)  {index_data_word++;sch_lenght_data++;}
                                            
                                             if ((data_flag==1u)&&(data_flag2==1u)) if (index_data_word2<buf_DATA_Word) index_data_word2++;
                                            }
			}
	
		if ((FLAG_lenght==2u)&&(FLAG_CW==0u)) {lenght_data = (u8)(InOut[index1]);FLAG_lenght=1u;} //���������� ������ ������ ������ ����� ":"
	
		if ((sch_lenght_data<lenght_data)&&(FLAG_lenght==1u)) FLAG_DATA = 1u; else {FLAG_DATA = 0u;}
	 
		if (index1<BUFFER_SR)  index1++;
		if (index <BUFFER_SR)  index ++;
		i--;
		FLAG_CW=0u;
		// put_str1(".");
  }
 

if (packet_ok==1u) 
  {

   SCH_7ok_PAKET++;
   //put_str1("��\r\n");
     
      if (InOut[0]==0x7e)   crc_ok=crc_ok|0x1;   // �������� ������� ������� ������ - ������ ������
      if (InOut[1]==Adress) crc_ok=crc_ok|0x2;   // �������� ������� ������� ������ - ������� ����������
 
 
  if (crc_ok==0x3)  //��������� ������ ��������� ������� �������� ������ 
      {
		  
		   if (strcmp(Word,"INPORT" )==0)     //������� ����� ������� 615
                          { 
                              crc_comp =DATA_Word[1]^
                                        DATA_Word[2]^
                                        DATA_Word[3]^
                                        DATA_Word[4]^
                                        DATA_Word[5]^
										DATA_Word[6];
										
										crc_input = DATA_Word[7];
										
                                     //u_out ("������ INPORT:",crc_comp); 
                          //   if (crc_input==crc_comp)
                                      {
										 //Transf ("CRC:OK");   
										 Mem_K615.byte1=((u8)DATA_Word[1])|(~0x18);
										 
										if ((FLAG_EVENT_K615_UP==1)&&(FLAG_BLOCK_TST!=1))
										{
											Mem_K615.byte1=(u8)DATA_Word[1];
											FLAG_EVENT_K615_UP=0;	
										}
								                                         
                                         Mem_K615.byte2=(u8)DATA_Word[2];
                                         Mem_K615.byte3=(u8)DATA_Word[3];
                                         Mem_K615.byte4=(u8)DATA_Word[4];
                                         Mem_K615.byte5=(u8)DATA_Word[5];
                                         Mem_K615.byte6=(u8)DATA_Word[6];
												
                                         Flag_control_K615=1;
                                         tick_process=0;
                                         Flag_K615=0;
                                         sch_obmen=0;
                                         tick_process_K615=0;
										 FT_control ();
										 if (WORK_TU_FLAG=='t') TIMER_RS485_OBMEN=0;
										 K615_work(0);
                                      }
                          } else  
							  
		  	if (strcmp(Word,"INF")==0) //
          {						
			//INF_ANALIZ (DATA_Word+1,lenght_data,DATA_Word2[1]);
            
					   
          } else
		 		
				if (strcmp(Word,"inf_to_serv")==0) //
            {
			    crc_comp =atoi(DATA_Word);
						           						
            	INF_UART_SRV2 (TX_BUF,160,1);//���������� ������������ ����� � ��������� �������
						
			} else
				
				if (strcmp(Word,"sdram_wr")==0) //
            {
				crc_comp =atoi(DATA_Word);
				crc_input=atoi(DATA_Word2);  
				u_out ("������ sdram_wr:",crc_comp);
				u_out ("�����:",crc_input);
				buf_sdram1[crc_input]=crc_comp;
                       
            } else
					   
	/*		
					   
			if (strcmp(Word,"sdram_rd")==0) //
         {
						crc_comp =atoi(DATA_Word);
                        //crc_input=atoi(DATA_Word2);  
           put_str1 ("������ sdram_rd:\r\n");
           u_out ("�����:",crc_comp);
				   u_out ("������:",buf_sdram1[crc_comp]);                      
          } else
             
			if (strcmp(Word,"sdram_tst")==0)                     

				  {
				   put_str1 ("������ sdram_tst\r\n"    );
				   put_str1("\r\n");  
				   SDRAM_test();
				 
				  } else
			  
			 if (strcmp(Word,"OFF")==0)                     

              {
               put_str1 ("������ OFF\r"    );
               put_str1("\r");  
               OFF_section (1);//��������� �����������
			         } else
    */	
            if (strcmp(Word,"help")==0)                     

              {
               put_str1 ("������ help\r"    );
               put_str1("\r");  
               help ();
			   test_inf ();
			         } else
		    if (strcmp(Word,"help2")==0)                     

              {
               put_str1 ("������ help\r"    );
               put_str1("\r");  
               test_inf ();
			         } else
						 
			 if (strcmp(Word,"menu")==0)                     

              {
               put_str1 ("������ menu\r"    );
               put_str1("\r");  
               MENU ();
			         } else			 
					 
	/*	  
    	  if (strcmp(Word,"buff")==0)                     

              {
               put_str1 ("������ buff\r"    );
               put_str1("\r");  
               buff_SPORT(128);
			         } else
          
              
           if (strcmp(Word,"menu")==0)                      

              {
               put_str1 ("������ menu\r"    );
               put_str1("\r");  
               Menu1(1);
          
              } else

            if (strcmp(Word,  "UDP_IP"      )==0)      
                              { 
                                crc_comp=atoi(DATA_Word);
                                put_str1 ("������ UDP_IP:\r\n" );
                                put_str1 (DATA_Word);
                                put_str1 ("\r\n");
                              }  else 
						  
			if (strcmp(Word,  "Test_���"      )==0)      
                              { 
                                crc_comp=atoi(DATA_Word);
                                put_str1 ("������ Test_���:\r\n" );
                                put_str1 (DATA_Word);
                                put_str1 ("\r\n");
								
								IND_DFK(crc_comp); //������� ��������� ����� ���
								
                              } else
	*/	
           if (strcmp(Word,  "ID_rezerv"      )==0)      
                              { 
                                crc_comp=atoi(DATA_Word);
                                put_str1 ("������ ID_rezerv:" );
                                put_str1 (DATA_Word);
                                put_str1 ("\r\n");

                                if ((crc_comp==1)||(crc_comp==4)) CODE_REZERV = 0x01;
                                if ((crc_comp==2)||(crc_comp==5)) CODE_REZERV = 0x02;
                                if ((crc_comp==3)||(crc_comp==6)) CODE_REZERV = 0x03;

                                CODE_REZERV_soft = CODE_REZERV;

                                  /*
                                  TX_485;
                                  ssync();
                                  csync();

                                  Transf("~7 ID_rezerv:");//�������� ������ ��� ���������� �����
                                  sprintf(strng,"%d",crc_comp);
                                  Transf(strng);
                                  Transf (";\r\n");
                                    */
                               // init_IP_adress (Master_flag,crc_comp); //������������� ������� � IP ��������
                                FLAG_ETHERNET_INIT=1;
                              }  else 

                              
/*
           if (strcmp(Word,"delay")==0)                     

              {
               DELAY_CONTROL=2000u;
               put_str1 ("������ delay\r"    );
               put_str1("\r");  
               help ();
          
              } else

            if (strcmp(Word,"SPORT_data" )==0)      //
			
                      { 
						crc_comp=atoi(DATA_Word);
						put_str1 ("������ SPORT_data: \r\n" );
					    SPORT_COM ();            
                       }  else

*/
          if (strcmp(Word,  "out"      )==0)      
                              { 
                                crc_comp=atoi(DATA_Word);
                                put_str1 ("������ out:\r\n" );
                                put_str1 (DATA_Word);
                                put_str1 ("\r\n");

                                tst_out (crc_comp);
                                
                              }  else 
	/*		
          if (strcmp(Word,  "fizl_error"      )==0)      
                              { 
                                crc_comp=atoi(DATA_Word);
                                put_str1 ("������ fizl_error:\r\n" );
								put_str1 (DATA_Word);
                                put_str1 ("\r\n");
                                FLG_K612=1;
								flag_error_fizl=crc_comp;
                                
                              }  else 
								  
			if (strcmp(Word,  "foch_error"      )==0)      
                              { 
                                crc_comp=atoi(DATA_Word);
                                put_str1 ("������ foch_error:\r\n" );
								put_str1 (DATA_Word);
                                put_str1 ("\r\n");
                               
								flag_error_foch=crc_comp;
                                
                              }  else 
								  
			if (strcmp(Word,  "k615_error"      )==0)      
                              { 
                                crc_comp=atoi(DATA_Word);
                                put_str1 ("������ k615_error:\r\n" );
								put_str1 (DATA_Word);
                                put_str1 ("\r\n");
                                
								flag_error_k615=crc_comp;
                                
                              }  else 	
         
                    
            if (strcmp(Word,  "�������������1"    )==0)      
                    
                    {  put_str1 ("������ �������������1\r\n"  ); 

                      INIT_START_PACHKA ('M');  //������������� ������ ��� ������ ����� �������������
                       sch_packet_UDP_reciv=0;
                       Mem_K615.VCU =0;
                       Mem_K615.MU  =1;
                                                 
                       flag_event_K614=1;
                         sch_obmen=0; 
                       sch_pachek_test=1;
                       WORK_TU_FLAG = 'w';
                       MU_TEST(0);
                       Packet_TNC1(Alfa,&Struk0);
                       Timer_INT2('c');            
                     }  else    

            if (strcmp(Word,  "sync_1"    )==0)      
                    
                    { 
                     put_str1 ("������ sync_1\r\n"  ); 
					              
                        sync_flag=1;
                        sch_pachek_test=2;
                        sch_obmen=2;
                        control_TNC_TNO();
                     }  else   
					 					 
			if (strcmp(Word,  "Delay_TNO"      )==0)      
                              {
                                crc_comp=atoi(DATA_Word);
                                put_str1 ("������ Delay_TNO\r\n" );
                                FLAG_DELAY_TNO=crc_comp;
                                } else
									*/
            if (strcmp(Word,  "UDP_control"      )==0)      
                              {
                                crc_comp=atoi(DATA_Word);
                                put_str1 ("������ UDP_control\r\n" );
                                tabl_view(crc_comp,0);
                                u_out ("index_wr:",index_wr );
                              } else
			 if (strcmp(Word,  "extra_UDP"      )==0)      
                              {                                
                                put_str1 ("������ extra_UDP\r\n" );
                                tabl_view(0,2);
                                put_str1 ("\r\n");
                                } else
             if (strcmp(Word,  "List_UDP"      )==0)      
                              {
                                crc_comp=atoi(DATA_Word);
                                put_str1 ("������ List_UDP\r\n" );
                                tabl_view(crc_comp,3);
                                u_out ("index_wr:",index_wr );
                              } else
            if (strcmp(Word,  "Pachka_control"      )==0)      
                              { 
                              	index_wr=0;
                              	FLAG_TST_UDP_BUF=1;//!!!! ���������� ��������� �����!!!!
								//FLAG_DSP_text_CIKL=0;	
								//flag_START_pachka_SINTEZ=0; //������������� ������ ��������������							
                                crc_comp=atoi(DATA_Word);
                                put_str1 ("������ Pachka_control\r\n" );
                                pachka_monitor();
                              } else

            if (strcmp(Word,  "Control_TNC"      )==0)      
                              {
                                crc_comp=atoi(DATA_Word);
                                u_out ("������ Control_TNC:",crc_comp );
								test_TNC = crc_comp;
                                TNC_test = crc_comp;
								if (crc_comp>0u) FLAG_ERROR_SYNC_VIEV=1; else FLAG_ERROR_SYNC_VIEV=0;
                              }   else               
             if (strcmp(Word,  "WORK" )==0) { put_str1 ("������ �������_�����\r\n" );FLAG_REGIM_init = 1;} else  
			 
			 if (strcmp(Word,  "FAZA" )==0) { put_str1 ("������ FAZA\r\n" );FAZA();}  else

             if (strcmp(Word,  "���_��" )==0) {                                                 
                                                 crc_comp=atoi(DATA_Word);
                                                 u_out ("������ ���_��:",crc_comp );
                                                 VKL_COM_FT=crc_comp;
                                                  //K615_work(1);
                                               } else  
			 if (strcmp(Word,  "FT_sig" )==0) { put_str1 ("������ FT_sig\r\n" ); SIG_FT_IN ();} else 

       
          
//-------------------------------------�������� �����-----------------------------------------------------------
          if (strcmp(Word,  "���_���"      )==0)      
                              { 
                                put_str1 ("������ ���_���:");
                                itoa(Alfa,strng);
                                put_str1(strng);
                                put_str1 (" (���)\r");
                                
                              }  else

   //       if (strcmp(Word,  "ERR_TNI" )==0)    { put_str1 ("������ ERR_TNI\r\n" );   FLAG_ERR_TNI = 1;} else
   //       if (strcmp(Word,  "ERR_TKI" )==0)    { put_str1 ("������ ERR_TKI\r\n" );   FLAG_ERR_TKI = 1;} else
   //       if (strcmp(Word,  "ERR_TNP" )==0)    { put_str1 ("������ ERR_TNP\r\n" );   FLAG_ERR_TNP = 1;} else
   //       if (strcmp(Word,  "ERR_TKP" )==0)    { put_str1 ("������ ERR_TKP\r\n" );   FLAG_ERR_TKP = 1;} else

          if (strcmp(Word,  "TEST" )==0) { put_str1 ("������ ����   �����\r\n"); FLAG_REGIM_init = 2;} else   
         
		      if (strcmp(Word,  "Dop_INTR"      )==0)      
                              { 
                                crc_comp=atoi(DATA_Word);
                                u_out ("������ Dop_INTR:",crc_comp );
                                Dop_interval=crc_comp;
								//Test_pachka(0);
                              } else 
        

            if (strcmp(Word,  "D_obzor"      )==0)      
                              { 
                                D_obzor=atoi(DATA_Word);
                                u_out ("������ D_obzor:",D_obzor );
                                
                              }  else 
			if (strcmp(Word,  "���"      )==0)      
                              { 
						        //flag_K615_event=1;
                                //FLAG_VCU_TST=1;
								//FLAG_MU_TST =0;
								TIMER_RS485_OBMEN=0;
								Mem1.Zadano_CU_MU = 0x5;
                                u_out ("������ ������ ���:",1 );
                                
                              }  else 
			if (strcmp(Word,  "��"      )==0)      
                              {
								//flag_K615_event=1;  
								//FLAG_VCU_TST=0;
								//FLAG_MU_TST =1;
								TIMER_RS485_OBMEN=0;
								Mem1.Zadano_CU_MU = 0xc;
                                u_out ("������ ������ ��:",1 );
                                
                              }  else 
			if (strcmp(Word,  "��"      )==0)      
                              {
								//flag_K615_event=1;
								FLAG_BR_TST  =1;
								FLAG_GBR_TST =0;
                                u_out ("������ ������ ��:",1 );
                                
                              }  else 
			if (strcmp(Word,  "���"      )==0)      
                              {
								//flag_K615_event=1;  
								FLAG_BR_TST  =0;
								FLAG_GBR_TST =1;
                                u_out ("������ ������ ���:",1 );
                                
                              }  else 
			if (strcmp(Word,  "����"      )==0)      
                              {
								//flag_K615_event=1;  
								FLAG_VIKL_TST  =1;
								
                                u_out ("������ ������ ����:",1 );
                                
                              }  else 
			if (strcmp(Word,  "����_���"      )==0)      
                              {
								// flag_K615_event=1; 
								FLAG_BLOCK_TST=atoi(DATA_Word);
							    u_out ("������ ������ ����_���:",FLAG_BLOCK_TST );
                                
                              }  else 									  

             if (strcmp(Word,  "FS"      )==0)      
                              { 
                                F0_FS_TST=atoi(DATA_Word);
                                u_out ("������ ����������_FS:",F0_FS_TST );
                      			//D_obzor=2000; 
								//Test_pachka(0);
						       } else
              if (strcmp(Word,  "FG"      )==0)      
                              { 
                                F0_FG_TST=atoi(DATA_Word);
                                u_out ("������ ����������_FG:",F0_FG_TST );
                               	//D_obzor=2000;
								//Test_pachka(0);
						       } else
			  if (strcmp(Word,  "mono"      )==0)  //��������� ��� ������ ������ �����������   
                              { 
                                Metka_F=atoi(DATA_Word);
                                u_out ("������ MONO:",Metka_F );
								D_obzor=2000;
                              } else

              if (strcmp(Word,  "dev_F"      )==0)      
                              { 
                                DevF_TST=atoi(DATA_Word);
                                u_out ("������ ����������_��������_���:",DevF_TST );
                               	//D_obzor=2000;
				                //Test_pachka(0);
                              } else

              if (strcmp(Word,  "Timp"      )==0)      
                              { 
                                Timp_TST=atoi(DATA_Word);
							    if (Timp_TST==0) Timp_TST = 999999999;
                                put_str1 ("������ ������������_��������_T���:" );
                                put_str1(DATA_Word);
                                put_str1 ("\r");
                              //D_obzor=2000;
								//Test_pachka(0);
								               } else
              if (strcmp(Word,  "Delay_TNP"      )==0)      
                              { 
                                TST_Dnp=atoi(DATA_Word);
								TST_Dnp=TST_Dnp/8;
                                u_out ("������ Delay_TNP:",TST_Dnp );
                  
                              } else
			  if (strcmp(Word,  "Delay_TNI"      )==0)      
                              { 
                                TST_Dni=atoi(DATA_Word);
								TST_Dni=TST_Dni/8;
                                u_out ("������ Delay_TNI:",TST_Dni );
                  
                              } else

              if (strcmp(Word,  "N_impuls"      )==0)      
                              { 
                                Nimp_TST=(unsigned int)atoi(DATA_Word);
                                u_out ("������ �����_���������_�_�����:",Nimp_TST );
                               	//D_obzor=2000;
                              } else
								  
			  if (strcmp(Word,  "N_tempov"      )==0)      
                              { 
                                N_tempov=(unsigned int)atoi(DATA_Word);
                                u_out ("������ �����_������_�_�����:",N_tempov );
                               	//D_obzor=2000;
                              } else
							  
			if (strcmp(Word,  "���"      )==0)      
                              { 
                                LCHM_I_type=(unsigned int)atoi(DATA_Word);
								LCHM_G_type=LCHM_I_type;
                                u_out ("������ ���:",LCHM_G_type );
                               	//D_obzor=2000;
                              } else
            if (strcmp(Word,  "SYNC_PILA"      )==0)      
                              { 
                                SYNC_PILA=(unsigned int)atoi(DATA_Word);
                                u_out ("������ SYNC_PILA:",SYNC_PILA );
                               } else

              if (strcmp(Word,  "TST_out"      )==0)      
                              { 
                                //0 - TNC �     IntI;
                                //1 - TNO � TNC                ;
                                //2 - TNC �             TNP|TKP;
                                //3 - TNC �     TNI|TKI        ;
                                //4 - TNC �     TNI|Error        ;
                                //5 - TNC �         TKI|Error      ;
                                //6 - TNC �             TNP    ;
                                //7 - TNC �                 TKP;
                
                                TST_OUT_CODE=atoi(DATA_Word);
                                put_str1 ("������ TST_out:" );
                                put_str1(DATA_Word);
                                put_str1 ("\r\n");
                              } else         
//--------------------------------------------------------------------------------------------------------------------          
      //      if (strcmp(Word,  "tst_SPI_BUF"   )==0)      { Transf ("������ tst_SPI_BUF\r\n" );  tst_SPI_BUF();} 
/*
            if (strcmp(Word,  "STATUS_B610"   )==0) //������ 610 �����
            {
                  //put_str1 ("������ STATUS_B610:" );
                  crc_comp=atoi(DATA_Word); //���������� ���� ��/��� ��� 610 �����
                  crc_input=atoi(DATA_Word2);
                  
                   if (crc_comp==crc_input)
                  {
                  	//x_out("",crc_comp);
                    STATUS_B610     = crc_comp>>8;
                    SYS_HELTH_B610  = crc_comp;
                    func_STATUS_B610 (STATUS_B610,SYS_HELTH_B610);
                  }
                  
            } else
*/
            if (strcmp(Word,  "ERROR"      )==0)      
                              { 
                                if (atoi(DATA_Word)==1) 
								{
									AVARIYA_flag=900;
									ERROR_FLAG=ERROR_sport;
								}
								else ERROR_FLAG=ALL_OK;
								
                                put_str1 ("������ ERROR:" );
                                put_str1(DATA_Word);
                                put_str1 ("\r\n");
							    
                              }  else

		
                      if (strcmp(Word,  "Zapret_REZERV"   )==0)      
                                        { 
                                          put_str1 ("������ Zapret_REZERV" );
                                          put_str1(DATA_Word);
                                          put_str1 ("\r\n");
                                          Mem1.Zapret_REZERV = atoi(DATA_Word);
                                        } else
/*
					  if (strcmp(Word,  "PPI612"   )==0)      { Transf ("������ PPI612\r\n" ); flag_dsp_ok=1; PPI_massiv('s',&Struk0);}
                      if (strcmp(Word,  "PPI613"   )==0)      { Transf ("������ PPI613\r\n" ); flag_dsp_ok=1; PPI_massiv('g',&Struk0);}
                      if (strcmp(Word,  "PPI614"   )==0)      { Transf ("������ PPI614\r\n" ); flag_dsp_ok=1; massiv_time_setka(&Struk0,Event_word);}
*/  
					  if (strcmp(Word,  "STOP"             )==0)      { put_str1 ("������ STOP\r\n"       ); flag_START_pachka_SINTEZ=0; DELAY_CONTROL=3000; flag_event_sinhron=0;}  else
                           
  
                      if (strcmp(Word,"OUTPORT" )==0)      //�������� ����� ������� 615
                          { 
                                 Flag_init_K615=1;
                                 tick_process=0;
                                 Flag_K615=0;
                                 sch_obmen=0;
                                 tick_process_K615=0;
                        } else
                      					  
						   if (strcmp(Word,  "TNC"      )==0)      
                              { 
                                Number_TNC=(unsigned int)atoi(DATA_Word);
                                u_out ("������ ����� ���:",Number_TNC );
                               
                              } else


				if (strcmp(Word,"POWER_OFF")==0) //��������� ������������� �� ����� ���������� ������� �������������
                      { 
						            put_str1 ("\r\n ������ POWER_OFF  \r\n"  );
						            Event_SPORT_RUN(POWER_OFF); //������ ���� �����!!! ��� ��������� ������ ���������
	                     }  else
					  
			   if (strcmp(Word,"POWER_ON")==0) //��������� ������������� �� ����� ���������� ������� �������������
                      { 
						            put_str1 ("\r\n ������ POWER_ON  \r\n"  );
                        Event_SPORT_RUN(POWER_ON);
                      }  else
   /*                   
		    if (strcmp(Word,"init_K611")==0) //��������� ������������� �� ����� ���������� ������� �������������
                      { 
                        put_str1 ("\r\n ������ init_K611  \r\n"  );
                        Flag_init_K611=1;
                        Flag_K611=0;
                        tick_process=0;
                        sch_obmen=0;
                        tick_process_K611=0;
                      }  else
                      
                    if (strcmp(Word,"���������_�611")==0) //��������� ������������� �� ����� ���������� ������� �������� ���������
                      {
                         crc_comp =atoi(DATA_Word);
                         crc_input=atoi(DATA_Word2);  

                         if (crc_comp==crc_input)
                                     {
                                          SYS_control(&K611,crc_comp);
                                          u_out ("������ ��������� �611:",crc_comp);
                                      Flag_control_K611=1;
                                      Flag_K611=0;
                                      tick_process=0;
                                      sch_obmen=0;
                                      tick_process_K611=0;
                                     }
              }  else
                                 
                        
                    if (strcmp(Word,"���������_K612")==0)//��������� ������������� �� ����� ���������� ������� ���������
                      {
                              crc_comp =atoi(DATA_Word);
                              crc_input=atoi(DATA_Word2);  

                          if (crc_comp==crc_input)
                                     {
                                            SYS_control(&K612,crc_comp);
                                          u_out ("\r\n ������ ��������� �612:",crc_comp);
                       
                                        Flag_control_K612=1;
                                        Flag_K612=0;
                                        tick_process=0;
                                        sch_obmen=0;
                                        tick_process_K612=0;
                                     }
                      }  else
            
                        
                        
                    if (strcmp(Word,"���������_K613")==0)//��������� ������������� �� ����� ���������� ������� ���������
                      {
                              crc_comp =atoi(DATA_Word);
                              crc_input=atoi(DATA_Word2);  

                          if (crc_comp==crc_input)
                                     {
                                            SYS_control(&K613,crc_comp);
                                          u_out ("\r\n ������ ��������� �613:",crc_comp  );
                       
                                        Flag_control_K613=1;
                                        Flag_K613=0;
                                        tick_process=0;
                                        sch_obmen=0;
                                        tick_process_K613=0;
                                     }
                       }  else
*/

                    if (strcmp(Word,"ERROR_B610")==0)//��������� ������������� �� ����� ���������� ������� ���������
                      {
                        put_str1("������ ��������� �610:");
                        crc_comp =atoi(DATA_Word);

                        if (crc_comp==0) {put_str1("������!\r\n");}
                        if (crc_comp==1) {put_str1("OK\r\n");}
                       
                       }  
      } 
      for (i=0u;i<buf_Word;i++)             Word[i]      =0x0;
      for (i=0u;i<(buf_DATA_Word+1);  i++)  DATA_Word [i]=0x0;
      for (i=0u;i<(buf_DATA_Word+1);  i++)  DATA_Word2[i]=0x0;  
      for (i=0u;i<BUFFER_SR;i++)  
      {
        InOut[i]     =0x0;
      }  
      
	  time_uart=0;  //��������� �������� ���� ����
      packet_flag=0; 
      index1=0u; 
      crc_ok=0; 
      i=0;
      packet_ok=0; 
      index_word=0u; 
      index_data_word=0u;
      data_flag=0;
      index_data_word2=0u;
      data_flag2=0;
      index =0u;
      FLAG_lenght=0u;
      lenght_data=0u;
      sch_lenght_data=0u;
      FLAG_CW = 0u; //���� ������������ �����, ��������� ����� ����� ����������
      FLAG_DATA = 0u;	  
      	  
      DATA_Word [0]=' ';
      DATA_Word2[0]=' ';
	  SCH_LENGHT_PACKET=0;
  }

  if ((packet_ok==1)&&(crc_ok==0x1))     //��������� ������ ��������� ������� �������� �����

  {
    
    if (Master_flag==0)

      {            
          FLAG_UART_K607=1;
         // TX_485;
          ssync();
          Transf("\r\n");
          ZTransf (InOut,index1);
		  Transf("\r\n");

           rx_wr_index0=0u;
           rx_rd_index0=0u;
           rx_counter0 =0u;
      }
  }
         
 } 

 void func_TNO(void)

 {
 	unsigned int time1=0;

 	time1 = Timer_INT2('c');
	flag_event_K615_run=0;

	//flag_STOP_ALL_WORK=1;
 		
   //������������� ������������� �������� � ����� ��������� ������ ���������
   flag_END_sync_packet=0;
   flag_first_TNO=1;

   Alfa =0; //����� ������ ������ �����
   flag_Packet_form=0u;
   flag_TNC_UP=0;
   flag_event_sinhron=0; 
   flag_dsp_ok=1;
   flag_START_pachka_SINTEZ=1;
   START_packet=1; //���� ������������ ������ ����� ������
   TNC0_packet=1;   //������ ����� �����
   flag_NUMBER_pachki=0;
   TNO_work1=0;

   if (Mem_K615.VCU&0x1==1) VCU_sinh_form(); else
   if (Mem_K615.MU&0x1 ==1)  MU_TEST(1);

   Packet_TNC1(Alfa,&Struk0);
   
   RESET_packet=0;

   flag_event_K614=1;
   
   FLAG_PACHKA_DELAY=0xFF;//�������� ����� �� ����
   flag_PPI_sintez_unsihron_start=0;
   tst_time_max=0;
   flag_ERROR_CRC_control_word=0;
   flag_FAIL_PPI=0;
   flag_Avariya_TNC=0;
  
   Event_word=0xff; //����� ���� ������� � ����
   
   	flag_TKP=0;	
	flag_TKI=0;
	flag_TNP=0;
	flag_TNI=0;
	flag_TOBM=0;
	flag_TNO=0;

	   sch_pachek_test=0;
       sch_TNC_test=0;
       sch_tst_pachek=0;

  
      flag_PPI_sz1 =0;
      flag_PPI_sz2 =0;
      flag_PPI_sinc=1;
         
      flag_1HZ_sync=0;
		
	 time_TNC_max=0;
	 time_TNC_min=99999999;

	 time_TNO_max=0;
	 time_TNO_min=99999999;
	 
	
	
 
 }

 void tst_SPI_BUF (void)

{

}
   

 unsigned int Timer_INT2(char e)  //������� �������� ������� �� ���������� INT2
{
	unsigned int a;

	 a=*pTIMER2_COUNTER; 
	 
	 if (e=='c') //����� �������
	 {
		*pTIMER_DISABLE=(0x4); //��������� 2-� ������ ����� �������� ��� ������� �������

		*pTIMER2_CONFIG		= 0x0007;  //����� �������� ���������
		*pTIMER2_PERIOD		= 0xffffffff;
		*pTIMER2_WIDTH		= 0x0000;

		*pTIMER_ENABLE		= 0x4; //�������� ������

     TIME_PPI_END     = 0x00;
	 }	
	   return a; 

}

 unsigned int Time_real(unsigned int time_setup)  //������� ������������ ������� ����� � �����������
{
	unsigned int a;

	 a=(*pTIMER2_COUNTER)+time_setup;  //     ������� ����� ������� �� ������� ������� 
	 									   //	+ �������������� ������� ��� ������������� T5��� 
	 									   //	+ ����������� ��������
	return a; 

}

void Time_control (void)

{
	unsigned int time_real=0;
	
	time_real=Time_real(Interval_upregleniya);
}



 void control_TNC_TNO (void)
 {	
  
//  if (FLAG_START_WORK==1) COMMAND_ON();//������ ������� ���. �610
  
  if (FLAG_DSP_text_CIKL==1) 
	 {       			 	
     u_out("� ������:",NUMBER_BLOK);
	 put_str1("\r\n-------\r\n");
//	 put_str1("\r\nv230916_3\r\n");
	 if  (FLAG_MASTER_BR_OK==1)  put_str1("��\r\n"); else put_str1("���\r\n");
     u_out("���     :",CEV_actual );
	 u_out("TNC     :",time_TNC );
	 u_out("TNC_max :",time_TNC_max );
	 u_out("TNC_min :",time_TNC_min );
 	 u_out("T5min   :",time_TNO );
   	 u_out("TNO     :",TIME_OF_TNO );
    // u_out("time_TNO_max:",time_TNO_max );
	// u_out("time_TNO_min:",time_TNO_min );
	put_str1("\r\n");
     u_out("TIME    :",TIME_LOCAL );	
	
	if (FLAG_ERROR_INTERVALWORK>0) u_out("error Imp:",FLAG_ERROR_INTERVALWORK);
    FLAG_ERROR_INTERVALWORK=0;	
	if (SCH_ERROR_delta_TNC_max>0) u_out("error ���:",SCH_ERROR_delta_TNC_max); 
	//u_out("< ������� ������������  ��� :",SCH_ERROR_delta_min_TNC_max); 
	//u_out("> ������� ������������  ��� :",SCH_ERROR_delta_max_TNC_max);
	
	u_out("nsync UDP:",FLAG_VCU_SYNC_ERROR_max); 
	u_out(" sync UDP:",sch_sync_ethernet_max); 
//	u_out("new   BUF:",FLAG_SCH_NEW_BUF_MAX);
	u_out("��  RS485:",FLAG_SCH_RS485_OK_PACKET_MAX);
//	u_out("��������     RS485 ������   :",FLAG_SCH_RS485_PACKET_MAX);
//	u_out("������������ RS485 ������   :",FLAG_SCH_TX485_MAX);
	u_out("rsv   UDP:",sch_packet_UDP_reciv_max); 
//  u_out("������������ ���������      :",sch_tx_packet_max);
if (RX_resive_MAX  !=120 ) u_out("MAX UDP packet:",RX_resive_MAX);
if (TST_RX8        !=0xff) x_out("�610:",TST_RX8);
if (FT_reg_log2!=0x0f) x_out("    FT:",FT_reg_log2);
if (FT_pit_log2!=0x0f) x_out("���.��:",FT_pit_log2);

if (ERROR_TN_FLAG==1)    u_out("!!!ERROR_TN_FLAG:",ERROR_TN_FLAG);
//if (NORM_PIT_2FT==0)     u_out("!!!NORM_PIT_2FT:",NORM_PIT_2FT);
//if (NORM_PIT_1FT==0)     u_out("!!!NORM_PIT_1FT:",NORM_PIT_1FT);
//if (AVARIYA_PIT_1_FT==0) u_out("!!!AVARIYA_PIT_1_FT:",AVARIYA_PIT_1_FT);
//if (AVARIYA_PIT_2_FT==0) u_out("!!!AVARIYA_PIT_1_FT:",AVARIYA_PIT_2_FT);

//	u_out("F   ��������� MAX:",Fmax_tst); 
//	u_out("DEV ��������� MAX:",DEVmax_tst); 
//  u_out("Dni_MIN             :",Dni_MIN); 
//  u_out("Dnp_MIN             :",Dnp_MIN); 
if (DEVmax_tst>1000000)  put_str1("������� ���������!!! WARNING!!!\r\n");
if (SYNC_PILA_TST!=0) u_out("SYNC_PILA:",SYNC_PILA_TST);
	SYNC_PILA_TST=0;
if (FLAG_ERROR_Nimp>0) u_out("!!!���������� ��� ����� ���������:",FLAG_ERROR_Nimp);
	FLAG_ERROR_Nimp=0;
	
if  (sch_ERROR_CRC_control_word!=0)   u_out("!!!ERROR_CRC_control_word:",sch_ERROR_CRC_control_word);
sch_ERROR_CRC_control_word=0;
	
//	u_out("FLAG_ERROR_PPI:",FLAG_ERROR_PPI);
	
	DEVmax_tst=0;
	Fmax_tst = 0;
	Dni_MIN  = 9999;
	Dnp_MIN  = 9999;
	
	if ((TST_RX8&(0x01<<0))==0) put_str1("������ �601! - ��������� ��������� \r\n");
	if ((TST_RX8&(0x01<<1))==0) put_str1("������ �602! - ��������� ����������\r\n");
	if ((TST_RX8&(0x01<<2))==0) put_str1("������ �603! - ��������� ������� F160 ���\r\n");
	if ((TST_RX8&(0x01<<3))==0) put_str1("������ �604! - ��������� ������� F64  ���\r\n");
	if ((TST_RX8&(0x01<<4))==0) put_str1("������ �605! - �������� ���������� ��������\r\n");
	if ((TST_RX8&(0x01<<5))==0) put_str1("������ �607! - �������� � ������\r\n");
	if ((TST_RX8&(0x01<<6))==0) put_str1("������ �608! - ������� �������� �������\r\n");

	
	if (FLG_K612==1)  put_str1("������ �612! - ������� ������� ���������\r\n");
	if (FLG_K613==1)  put_str1("������ �613! - ������� ������� ����������\r\n");
	if (FLG_K611==1)  put_str1("������ �611! - ������� ���\r\n");
	if (FLG_CLK ==1)  put_str1("������ ������� ���!\r\n");
	put_str1("\r\n");	
	
	
	FLG_K612 = 0;//����� ������ ������
	FLG_K613 = 0;//����� ������ ������
	FLG_K611 = 0;
	
  time_TNC_max=0;
  time_TNC_min=99999999;

  time_TNO_max=0;
  time_TNO_min=99999999;
  RX_resive_MAX=0;          
 		}
} 
 
 void TNC_ERROR(void)
 {
	 u32 alfa_error=0;
	 alfa_error=*pTIMER2_COUNTER; 
	 
	 //------------

     FLAG_SYNC_PF8=0;
     FLAG_SYNC_PF11=0;
      
    TIME1_PPI_START=0;
    TIME2_PPI_START=100;
    TIME3_PPI_START=1000;

    FLAG_PPI_OK=1;

     PF&(~PF11);  //��������� ������� �������� FS1 � ����
     PF&(~PF8 );  //��������� ������� �������� FS1 � ����
 

   flag_END_sync_packet=0;
   flag_packet_OK_for_read=1;
   flag_Packet_form=0u;
   flag_TNC_UP=0;
   flag_event_sinhron=0;
   flag_dsp_ok=1;
   flag_START_pachka_SINTEZ=1;
  
   flag_NUMBER_pachki=0;

   //sinc_type=2; //� �������������� ���������� � �������������� ��� �� ���
 
//--------------------------------------------------					   
					
    flag_PPI_sintez_unsihron_start=0;
    flag_ERROR_CRC_control_word=0;
    flag_FAIL_PPI=0;
    flag_Avariya_TNC=0;
				
    Event_word=0xff; //����� ���� ������� � ����
					
		flag_TKP=0;	
		flag_TKI=0;
		flag_TNP=0;
		flag_TNI=0;
		flag_TNO=0;

//-----------------------------------------------
   
     flag_PPI_sz1 =0;
     flag_PPI_sz2 =0;
     flag_PPI_sinc=1;
                               
     flag_1HZ_sync=0;
	 flag_STOP_ALL_WORK=0;
	 //-------------
	 
	 Alfa = alfa_error+50000;

	 MU_TEST(0);
     Packet_TNC1(Alfa,&Struk0);
     massiv_time_setka(&Struk0,Event_word);
	 n_out ("TNC_ERROR:",Alfa);
 }

 void Avariya_test(void)
{
	if (flag_Avariya_TNC==1)
	{
	  flag_Avariya_TNC++;
	  put_str1 ("\r\n" ); 
	  n_out(">>>���! ",Interval_TNC);
	  put_str1("���\r\n" );
	  put_str1(">" );
	  n_out("",Delta_TNC_old);
	  put_str1("���\r\n" );
	  put_str1("\r\n" );
	//AVARIYA_flag=77;
	  SPORT_COM();
	  TNC_ERROR();
	}
}


 void SDRAM_test(void)

 {
  unsigned int i=0;
  unsigned int k=1000;

  for (i=k;i<(k+100);i++)
  {
    buf_sdram1[i] = (unsigned short) i;
  }

   for (i=k;i<(k+100);i++)
  {
    // Transf(">" );
    u_out(" ",buf_sdram1[i]);
  }


 }


  void SDRAM_work(void)

 { } 

 
 void pachka_monitor(void)
 {

	//...���������� ��������.....
	
unsigned char u=0;

double f1,f2,fn,ft1,fpr1,fpr2;
double Dev;
double v1,v2,v3;

double dFo=0;
double N_step=0;
double delta_F=0;
double ratio=0;
u8 RAMRT=1;
unsigned int fP,fN;
u64 FS = 400000000;

u64 L1=0;
u64 L2=0;
u64 F1=0;
u64 F2=0;

	F1 = (Mem1.Kod_Dchk*FS/0xFFFFFFFF) + 360000000;
	u_out("F�:",F1);
	F1 = (Mem1.Kod_Dchp*FS/0xFFFFFFFF) + 360000000;
	u_out("F�:",F1);
	F1 = (Mem1.Kod_Dchg*FS/0xFFFFFFFF) + 360000000;
	u_out("F�:",F1);
	F1 = (Mem1.Kod_Dchi*FS/0xFFFFFFFF) + 400000000;
	u_out("F�:",F1);
	put_str1("\r\n");		
	
	x_out("��� Ddelta��:",Mem1.Kod_Ddelta_fp);
	x_out("��� Ddelta��:",Mem1.Kod_Ddelta_fi);
	x_out("��� Ddelta��:",Mem1.Kod_Ddelta_fg);
	put_str1("\r\n");
	x_out("��� RAMRT�� :",Mem1.Kod_RAMRT_fp);
	x_out("��� RAMRT�� :",Mem1.Kod_RAMRT_fi);
	x_out("��� RAMRT�� :",Mem1.Kod_RAMRT_fg);
	put_str1("\r\n");
	x_out("��� Kod_Dchk:",Mem1.Kod_Dchk);
	x_out("��� Kod_Dchp:",Mem1.Kod_Dchp);
	x_out("��� Kod_Dchg:",Mem1.Kod_Dchg);
	x_out("��� Kod_Dchi:",Mem1.Kod_Dchi);
	
	put_str1("\r\n");
	u_out("��� D��:",Mem1.Kod_Dii);
	//	Transf(" �������� ������� �� ��� �� ���\r\n"); 
	u_out("��� D��:",Mem1.Kod_Dni);
	 //	Transf(" �������� ������� ������������� ������������ ���������� �������� ���, ���� �� �������� ���\r\n"); 
	u_out("��� D��:",Mem1.Kod_Dnp);
	 //	Transf(" �������� ������� ����� ��� � ���\r\n");
	u_out("��� DN :",Mem1.Kod_DN);
	 //	Transf(" ��� ����� ���������� �� ������������ ��������� � ����� N+1 \r\n"); 
	u_out("��� D��:",Mem1.Kod_Dip);
	// 	Transf(" �������� ������, ������������ ������������ ������. \r\n"); 
	u_out("��� D� :",Mem1.Kod_Dm);
	u_out("������ D�:",Mem1.Kod_Do);

				//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
				
	x_out("��� D��: ",Mem1.Kod_Dpp1   );

	if ((Mem1.Kod_Dpp1&0x01)==0x01) put_str1("����� ��� ��������� �������\r\n"); else put_str1("��� ���\r\n");
	if ((Mem1.Kod_Dpp1&0x02)==0x02) put_str1("�������������� ��������\r\n");     else put_str1(".....\r\n");
	if ((Mem1.Kod_Dpp1&0x04)==0x04) put_str1("����������� ����� ��������\r\n"); else put_str1("�� ����������� ����� ��������\r\n");
	if ((Mem1.Kod_Dpp1&0x08)==0x08) put_str1("����� ��� � ������� '������'\r\n");else put_str1(".....\r\n");
	if ((Mem1.Kod_Dpp1&0x10)==0x10) put_str1("�������� ���� F�\r\n");   else put_str1("������ ���� F�\r\n");
	if ((Mem1.Kod_Dpp1&0x20)==0x20) put_str1("�������� ���� F�\r\n");   else put_str1("������ ���� F�\r\n");
	put_str1("\r\n");
	put_str1("\r\n");
			
		   if (Mem1.Kod_Dm>0u)  
	{	   
				
		put_str1("~~~~~~~~~~~~������� �2~~~~~~~~~~\r\n");
		

	x_out("��� Ddelta��:",Mem1.Kod_Ddelta_fi2);
	 // 	Transf(" �������� �������, ��������� ��� ���������� ����������� (DDS) � ������\r\n"); 

	x_out("��� Ddelta��:",Mem1.Kod_Ddelta_fg2);
	 // 	Transf(" �������� �������, ��������� ��� ���������� ����������� (DDS) � ������\r\n"); 

	x_out("��� RAMRT�� :",Mem1.Kod_RAMRT_fg2);
	 // 	Transf(" �������� �������, ��������� ��� ���������� ����������� (DDS) � ������\r\n"); 

	x_out("��� RAMRT�� :",Mem1.Kod_RAMRT_fi2);
	 // 	Transf(" �������� �������, ��������� ��� ���������� ����������� (DDS) � ������\r\n"); 
	put_str1("\r\n");

	  u_out("��� D��: ",Mem1.Kod_Dii2  );
	  u_out("��� D��: ",Mem1.Kod_Dni2 );
	  u_out("��� D��: ",Mem1.Kod_Dnp2);

	//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	  x_out("��� D��: ",Mem1.Kod_Dpp2);

	if ((Mem1.Kod_Dpp2&0x01)==0x01) put_str1("����� ��� ��������� �������\r\n"); else put_str1(".....\r\n");
	if ((Mem1.Kod_Dpp2&0x02)==0x02) put_str1("�������������� ��������\r\n");     else put_str1(".....\r\n");
	if ((Mem1.Kod_Dpp2&0x04)==0x04) put_str1("����������� ����� ��������\r\n"); else put_str1("�� ����������� ����� ��������\r\n");
	if ((Mem1.Kod_Dpp2&0x08)==0x08) put_str1("����� ��� � ������� '������'\r\n");else put_str1(".....\r\n");
	if ((Mem1.Kod_Dpp2&0x10)==0x10) put_str1("�������� ���� F�\r\n");   else put_str1("������ ���� F�\r\n");
	if ((Mem1.Kod_Dpp2&0x20)==0x20) put_str1("�������� ���� F�\r\n");   else put_str1("������ ���� F�\r\n");
	//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

	u_out("��� D��:",Mem1.Kod_Dip2 );
	x_out("��� D��:",Mem1.Kod_Dchi2  );
	x_out("��� D��:",Mem1.Kod_Dchg2  );

	}
	
  if (Mem1.Kod_Dm>1u)
	{  
	   //--------------------------------------------------------------   
	  put_str1("~~~~~~~~~~~~������� �3~~~~~~~~~~\r\n");
	  

	x_out("��� Ddelta��:",Mem1.Kod_Ddelta_fi3);
	x_out("��� Ddelta��:",Mem1.Kod_Ddelta_fg3);
	x_out("��� RAMRT�� :",Mem1.Kod_RAMRT_fg3);
	x_out("��� RAMRT�� :",Mem1.Kod_RAMRT_fi3);

	  u_out("��� D��:",Mem1.Kod_Dii3);
	  u_out("��� D��:",Mem1.Kod_Dni3);
	  u_out("��� D��:",Mem1.Kod_Dnp3 );
	//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
				
		x_out("��� D�� : ",Mem1.Kod_Dpp3  );

	 if ((Mem1.Kod_Dpp3&0x01)==0x01) put_str1("����� ��� ��������� �������\r\n"); else put_str1(".....\r\n");
	 if ((Mem1.Kod_Dpp3&0x02)==0x02) put_str1("�������������� ��������\r\n");     else put_str1(".....\r\n");
	 if ((Mem1.Kod_Dpp3&0x04)==0x04) put_str1("����������� ����� ��������\r\n"); else put_str1("�� ����������� ����� ��������\r\n");
	 if ((Mem1.Kod_Dpp3&0x08)==0x08) put_str1("����� ��� � ������� '������'\r\n");else put_str1(".....\r\n");
	 if ((Mem1.Kod_Dpp3&0x10)==0x10) put_str1("�������� ���� F�\r\n");   else put_str1("������ ���� F�\r\n");
  	 if ((Mem1.Kod_Dpp3&0x20)==0x20) put_str1("�������� ���� F�\r\n");   else put_str1("������ ���� F�\r\n");
	//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~         	

	u_out("��� D��:",Mem1.Kod_Dip3);
	x_out("��� D��:",Mem1.Kod_Dchi3);
	x_out("��� D��:",Mem1.Kod_Dchg3);

	put_str1("\r\n");
	put_str1("\r\n");
	  
					
				//--------------------------------------------------------      
	 }	
	put_str1("\r\n");
   	put_str1("\r\n");
	u_out("��� ������ ����:",Mem1.Zadano_off);
	u_out("��� ������ ���:",Mem1.Zadano_GBR);
	u_out("��� ������  ��:",Mem1.Zadano_BR);
	u_out("��� ������ ��/��:",Mem1.Zadano_CU_MU);
 }

 u8 a[620];
 u8 z[150];
 
void buff_SPORT (u16 n)
{ 
	
	int i=0;
	int j=0;
	u16 crc_rcv=0;
	
  for (i=0;i<620;i++) 
  {
	  a[i] = rx_buffer1[i];
	  rx_buffer1[i] = 0x00;
  }
  
  //put_str1("\r\n");
  //u_out("TNC:",TNC_actual);
  //buf_txt (a,n);
  //Zput_str1(a,n);//����� �������� ������ SPORT1
  //put_str1("\r\n");
   //--------------------
   
    tx_wr_index1=0;
	tx_rd_index1=0;
	tx_counter1 =1;
  
  for (i=0;i<N_BUFF_SPORT;i++)
	{
		if (j<150) z[j] = a[i];		
		
		if (j==146) 
			{
				crc_rcv = (z[j-1]<<8) + z[j]; //����������� �����
				INF_ANALIZ (z,144,crc_rcv);
			  if (TNC_actual == test_TNC)
			  {
				 buf_txt(z,147);
				//u_out("CRC:",crc_rcv);  
			  }
				
			}
			
		j++;
		
		if ((i== 11)|| //�������������� � ������� ������ 1-� �����
		    (i==160)|| //................................ 2-� �����
		    (i==309)|| //................................ 3-� �����
		    (i==458))  j=0;
	}
} 

void help (void)
{
  u16 z=0;
  u16 i=0;
  
  x_out("��� ��������� �610:",TST_RX8);	
//x_out("Mem1.Kod_zameny    :",Mem1.Kod_zameny);
  x_out("Mem1.Zapret_REZERV :",Mem1.Zapret_REZERV);
//x_out("Mem1.Kol_error     :",Mem1.Kol_error );
  x_out("Mem1.Zadano_off    :",Mem1.Zadano_off );
  x_out("Mem1.Zadano_BR     :", Mem1.Zadano_BR );
  x_out("Mem1.Zadano_GBR    :",Mem1.Zadano_GBR);
  x_out("Mem1.Zadano_CU_MU  :", Mem1.Zadano_CU_MU);
		
// x_out("��� �������       :",CODE_REZERV);
// x_out("��� ������� SOFT  :",CODE_REZERV_soft);
// x_out("������ ���        :",MASTER_CODE); 
// x_out("������ �������    :",Mem1.Zapret_REZERV); 
// u_out("TIMER_GBR_OK      :",TIMER_GBR_OK); 

// u_out("REZERV_M               :",REZERV_M); 
// u_out("FLAG_MASTER_BR_OK      :",FLAG_MASTER_BR_OK); 
// u_out("FLAG_MASTER_REZERV     :",FLAG_MASTER_REZERV);
// u_out("FLAG_MASTER_REZERV_disp:",FLAG_MASTER_REZERV_disp);
 put_str1("\r\n");

 u_out("FLAG_SYNC_SEV        :",FLAG_SYNC_SEV); 
 u_out("flag_RX_UDP          :",flag_RX_UDP);
 u_out("FLAG_UDP_EVENT       :",FLAG_UDP_EVENT);
 u_out("FLAG_UDP_INSTALL     :",FLAG_UDP_INSTALL);
 u_out("FLAG_EXTRA_PACKET    :",FLAG_EXTRA_PACKET);
 u_out("flag_sync_ETHERNET   :",flag_sync_ETHERNET);
 
// u_out("FLAG_SCH_RS485_PACKET        :",FLAG_SCH_RS485_PACKET_MAX);
// u_out("FLAG_SCH_CRC485_BAD          :",FLAG_SCH_CRC485_BAD_MAX);
// u_out("FLAG_SCH_RS485_OK_PACKET_MAX :",FLAG_SCH_RS485_OK_PACKET_MAX);
// u_out("FLAG_SCH_SEV_pachka          :",FLAG_SCH_SEV_pachka);
// u_out("FLAG_SCH_KUK_pachka          :",FLAG_SCH_KUK_pachka);
 u_out("FLAG_SCH_NEW_BUF     :",FLAG_SCH_NEW_BUF_MAX);
//u_out("SCH_7E_PAKET_MAX             :",SCH_7E_PAKET_MAX);
//u_out("SCH_7k_PAKET_MAX             :",SCH_7k_PAKET_MAX);
//u_out("SCH_7ok_PAKET_MAX            :",SCH_7ok_PAKET_MAX); 
  
  FLAG_SCH_SEV_pachka = 0;
  FLAG_SCH_KUK_pachka = 0;

  //u_out("FLAG_SCH_TX485               :",FLAG_SCH_TX485_MAX);
  //u_out("sch_packet_UDP_reciv         :",sch_packet_UDP_reciv);
 // u_out("Interval_TNC                 :",Interval_TNC);
  

  //FLAG_SCH_RS485_OK_PACKET=0;
  //FLAG_SCH_TX485=0;
	
  put_str1("*************\r\n");
  u_out("������� UDP ��������:",TIMER_UDP_LS_DOWN); 
  u_out("Mem_K615.NILS       :",Mem_K615.NILS); 
  u_out("Mem_K615.VCU        :",Mem_K615.VCU); 
  u_out("Mem_K615.MU         :",Mem_K615.MU); 
  u_out("Mem_K615.GBR        :",Mem_K615.GBR); 
  u_out("Mem_K615.BR         :",Mem_K615.BR); 
  put_str1("*************\r\n");

//x_out("ERROR_FLAG  :",ERROR_FLAG);
  u_out("AVARIYA_flag:",AVARIYA_flag);
//u_out("REZERV_INT1 :",REZERV_INT1);
//u_out("EVENT_REZERV:",EVENT_REZERV);
//u_out("DELAY_RZV   :",DELAY_RZV);
//u_out("DELAY_ADR   :",DELAY_ADR);
  put_str1("\r\n");
 
//  x_out("STATUS_B610    :",STATUS_B610);
//  x_out("SYS_HELTH_B610 :",SYS_HELTH_B610);
//  x_out("STATUS_B610_INF:",STATUS_B610_INF); 
//  put_str1("\r\n");

//  z = ((*pPPI_STATUS)>>13)&0x01;

//  x_out("*pPPI_STATUS   :",*pPPI_STATUS);
//  x_out("Underrun_STATUS:",z);

  put_str1("*************\r\n");
//  u_out("rx_buffer_overflow0:",rx_buffer_overflow0);
  
//  u_out("FLAG_PF10                     :",FLAG_PF10); 
  FLAG_PF10 = 0;
//  u_out("ERROR_status_DMA              :",ERROR_status_DMA); 
  u_out("flag_FAIL_PPI                 :",flag_FAIL_PPI); 
  u_out("sch_ERROR_CRC_control_word    :",sch_ERROR_CRC_control_word); 
  u_out("������ ������������ ����������:",DISP_flag_ERROR_Timp); 
//  u_out("�������� �����           :",INTERVAL_PRI); 
//  u_out("�������� ���������        :",INTERVAL_IZL); 
  u_out("����� ������������� ������:",TIMER_AVARIYA); 
  u_out("��� �������:",CEV_actual); 
  u_out("������� ���:",TNC_actual); 
  u_out("����� ��� � ������:",TNC_sch_max); 
  put_str1("\r\n");
  DISP_flag_ERROR_Timp=0;
  FLAG_SPORT1_TX=0; 
  tst_time_delta=tst_time_KUK2-tst_time_KUK1;         
  u_out("time_delta_KUK:",tst_time_delta); 
	  	
 if (sch_tst_pachek_max<sch_tst_pachek)      sch_tst_pachek_max=sch_tst_pachek;
 if (sch_event_sinhron_max<sch_event_sinhron)      sch_event_sinhron_max=sch_event_sinhron;
					
 sch_tst_pachek=0;
 sch_event_sinhron=0;
 sch_event_sinhron_max=0;
 sch_event_sinhron_min=99999;

 sch_tst_pachek_max=0;
 sch_tst_pachek_min=999999;
					
 tst_time_delta=tst_time5-tst_time4;         

 u_out("time_delta_PACKET_TNC:",tst_time_delta); 

 tst_time_delta=tst_time7-tst_time6;         
 u_out("time_delta_packet_TRSL:",tst_time_delta); 
 tst_time_delta=tst_time9-tst_time8;         
 u_out("time_delta_VCU_sinh_form:",tst_time_delta); 
 tst_time_delta=tst_timeB-tst_timeA;         
 u_out("time_delta_UDP:",tst_time_delta); 
 put_str1("---------------\r\n");
// u_out("FLAG_SPORT1_RX:",FLAG_SPORT1_RX); 
 
 TIME3_PPI_START_MAX=0;
 						
 flag_uart_trcv=0;
 rx_buffer_overflow0=0;
												
}

void COMMAND_ON (void)
{
	Transf2("~0 ���_B610;\r\n"); //���������� ������ ������� ������ �610
	Transf2("~0 WORK_START;\r\n");
}

void OFF_section (u8 a)
{
  
   if (Mem1.Zapret_REZERV==0xc) MASTER_CODE=0xff;  

	if (a==1)
	{
		ERROR_FLAG = ERROR_sport;
		Event_SPORT_RUN (ERROR_FLAG);//�������� ������ ������ ��� �615 
		TIMER_AVARIYA=0;
		Transf2("~0 ����_B610;\r\n"); //���������� ������ ������� ������ �610
		Transf2("~0 ����_B610;\r\n"); //���������� ������ ������� ������ �610
		//Transf("~0 reset;\r\n"); //���������� ������ ������� ������ �610
		//Transf2 ("~0 ID_rezerv;\r\n");//����������� ������� ����� � ���� ��������������
   
		//IO("~1 ERROR:1;"); // ������ ������!
		//IO("~1 BR_GBR:1;"); //���� ��� ������� �607 ����� �610 - ������� � ���!!!
		//IO("~1 POWER_OFF;"); //����� ����� �� �����������
		//IO("~1 POWER_ON;"); //������� ����� � ������������
		//start_init();
      FLAG_TST_UDP=0;

	}
	else 
		if (a==0)
		{
			TIMER_AVARIYA=0;
	       
			COMMAND_ON();

			IO("~1 POWER_ON;"); //������� ����� � ������������
			//Transf2 ("~0 ID_rezerv;\r\n");//����������� ������� ����� � ���� ��������������
                 
	  }
     
}

void tabl_view(unsigned int index, char r)
{
		 unsigned int k,l;
		  if (r==2)
		{
			 put_str1("--------������� ������ 144 �����--------\r\n");
				 
					for (k=0;k<(32u);k++)
				   { 	
					  for (l=0;l<4u;l++)
						{
							 sprintf(strng,"%X",Pkt_0[0].A[l][k]);
							 put_str1(strng);
						  
							if (Pkt_0[0].A[l][k]>15u) put_str1(".."); else put_str1("..."); 
								
							if (l==3u) {put_str1("\r\n");}
					
						  }

					}

		u_out("����� ���:", Pkt_0[0].TNC );
		u_out("����� ���:", Pkt_0[0].TNO );
		u_out("����� ���:",Pkt_0[0].SEV  );
		
			
		} 
		 if (r==0)
		{
			 put_str1("--------������� ������ 144 �����--------\r\n");
				 
					for (k=0;k<(32u);k++)
				   { 	
					  for (l=0;l<4u;l++)
						{
							 sprintf(strng,"%X",Pkt[index].A[l][k]);
							 put_str1(strng);
						  
							if (Pkt[index].A[l][k]>15u) put_str1(".."); else put_str1("..."); 
								
							if (l==3u) {put_str1("\r\n");}
					
						  }

					}

			u_out("����� ���:",Pkt[index].TNC );
			u_out("����� ���:",Pkt[index].TNO );
			u_out("����� ���:", Pkt[index].SEV  );
			u_out("index_rd:",index_rd);
	

		} 

	if (r==3)
	{
		for (k=index;k<Index_BUF;k++)
			{
			  put_str1("-------------\r");
				
				u_out("index_rd:",k);
				u_out("����� ���:", Pkt[k].TNC);
				u_out("����� ���:", Pkt[k].TNO);
				u_out("����� ���:", Pkt[k].SEV);
			}       
	}	
 } 

void func_event_k615 (void)
{
 	flag_STOP_ALL_WORK=0;
	  
  if ((IN_PF7>0x0)&&(flag_event_K615_run==0))   
        {
          flag_event_K615_run=1;
          flag_K615_event=1;
		  FLAG_EVENT_K615_UP=1;  //���� ��� ������ ����� �� �615
		  FLAG_EVENT_K615_RZRV=1;
	      } 
        else 
          if ((IN_PF7==0x0)&&(flag_event_K615_run==1)) {flag_event_K615_run=0;}    //��������� ���������� �� ������� �615
 }  

void func_event_RZV (void)//������� ��������� ����� DSP �� ������� ���������� �� ������� ��������������
{/*
 	if (IN_PF10>0) 
 	{
 		FLAG_PF10 = 1;
 		REZERV_INT1=1;
 	}
	*/
}


char txchar0(void)
{
  char data;
  //while (tx_counter0==0);
  data=tx_buffer0[tx_rd_index0];
  if (++tx_rd_index0 == TX_BUFFER_SIZE0) tx_rd_index0=0;
  --tx_counter0;
   return data;
} 

char txchar2(void)
{
  char data;
  //while (tx_counter2==0);
  data=tx_buffer2[tx_rd_index2];
  if (++tx_rd_index2 == TX_BUFFER_SIZE2) tx_rd_index2=0;
  --tx_counter2;
   return data;
} 


char getchar0(void)
{
  char data;
  //while (rx_counter0==0u);
  data=rx_buffer0[rx_rd_index0];
  if (++rx_rd_index0 == RX_BUFFER_SIZE0) rx_rd_index0=0;
  --rx_counter0;
   return data;
}



void UART_control (void)
{
  u16 i=0u;
  u16 j=0u;
  u8 FLAG_IO=0u;

 if (rx_counter0!=0u)
  {   
    if (rx_counter0<BUFFER_SR) j = rx_counter0; else j=BUFFER_SR;
	
	//put_str1(".");

    for (i=0u;i<j; i++) 
     {
      srt[i]=getchar0();
      lenght=i+1;  
      if (srt[i]==';') {FLAG_IO=1;i=j;break;}
     }
	srt[lenght]=0x00;
	IO (srt);	
  };
}


 int UDP_test(void)
{  
   int a;

  if (UDP_TCP_flag==1)
  {
    //loopback_tcps(1, 5000);
      loopback_udp (0, 3001,1);
    //loopback_udp (7, 3002); 
    
    //loopback_tcps(1, 5001);
    //loopback_tcps(2, 5002);
    //loopback_tcps(1, 5003);   
    //loopback_tcpc(4, 5004);              
    //loopback_udp (5, 3000);
    //  TELNETS(1, 23); 
      a=1;
  } else a=0;
     
      return 1;  
}
 
   
void zputs( char *s, unsigned l) 
{
   	  unsigned i; 
   	  for (i=0;i<l;i++) {
   	  	 *pUART_THR = s[i];
   	  	 while (!(*pUART_LSR & 64))
		 
			{/* if((flag_Ethernet==1)&&(flag_Ethernet_Terminal==0)) break;*/
			
				}  //�������� ��� �� ethernet �� ������ �����, ���� �� - �� �������!!! 
   	  }	 
}

      

  unsigned int leng ( char *s) //������� ����������� ������� ������� ��������������� ��� �������� � UART
  
  {  
    	int i=0;
  	
     while ((s[i]!='\0')&&(i<512)) { i++;}
   	
     return i;	
  
  } 

 
 void sendT ( char* s)  // ��������� �������� ������ �������� � ���� UART
 
 { 
    zputs(s,leng(s));
  }
  
char buf_DMA_uart[TX_BUFFER_SIZE0+10];

void UART_DMA_TX (void) //��� �������� ������ �� 485 ����

{
  
  u16  i=0;
  u16 tx_flag=0;


if (flag_pachka_TXT==0)
{   
 
  
while (tx_counter0!=0)  
       {       
          buf_DMA_uart[i]=txchar0(); 
           i++;
           tx_flag=1;
        }
 
     if (tx_flag==1)
     {
        TX_485;
        ssync();
        ssync();

       buf_DMA_uart[i]=0x00;
       i++;
       buf_DMA_uart[i]=0x00;
       i++;
       buf_DMA_uart[i]=0x00;
       i++;
       buf_DMA_uart[i]=0x00;
       i++;
       buf_DMA_uart[i]=0x00;

      ssync();
      Init_TxUART_DMA(buf_DMA_uart,i);
      ssync();
      TxUART_en();
      ssync();

          flag_pachka_TXT=1; //������������� ���� ��������
     }
   
  }

}

void UART_DMA_TX2 (void) //��� �������� ������ �� �� 485 ����

{
  
  u16  i=0;
  u16 tx_flag=0;


if (flag_pachka_TXT==0)
{   
 
  
while (tx_counter2!=0)  
       {       
          buf_DMA_uart[i]=txchar2(); 
           i++;
           tx_flag=1;
        }
 
     if (tx_flag==1)
     {
       RX_485;
       ssync();
       ssync();
       buf_DMA_uart[i]=0x00;
       i++;
       buf_DMA_uart[i]=0x00;
       i++;
       buf_DMA_uart[i]=0x00;
       i++;
       buf_DMA_uart[i]=0x00;
       i++;
       buf_DMA_uart[i]=0x00;

      ssync();
      Init_TxUART_DMA(buf_DMA_uart,i);
      ssync();
      TxUART_en();
      ssync();

          flag_pachka_TXT=1; //������������� ���� ��������
     }
   
  }

}

 void Transf2( char* s)  // ��������� �������� ������ �������� � ���� �� �� 485 ����
{
     u16 i=0;
     u16 l=0;

    l=strlen(s);
  //--------------------
  for (i=0;i<l;i++)
  {
       tx_buffer2[tx_wr_index2]=s[i];
    
   if (++tx_wr_index2 == TX_BUFFER_SIZE2) tx_wr_index2=0;
   if (++tx_counter2 == TX_BUFFER_SIZE2)
     {
      tx_counter2=0;
      tx_buffer_overflow2=1;
     }
  }
}

	
 void Transf( char* s)  // ��������� �������� ������ �������� � ���� �� 485 ����
{
     u16 i=0;
     u16 l=0;

   	l=strlen(s);
  //--------------------
  for (i=0;i<l;i++)
  {
       tx_buffer0[tx_wr_index0]=s[i];
    
   if (++tx_wr_index0 == TX_BUFFER_SIZE0) tx_wr_index0=0;
   if (++tx_counter0 == TX_BUFFER_SIZE0)
     {
      tx_counter0=0;
      tx_buffer_overflow0=1;
     }
  }
}
   

 void ZTransf( char* s,unsigned char a)  // ��������� �������� ������ �������� � ���� 
 {
     unsigned  short l;
     unsigned  short i;
	 unsigned  short x=0;
    
	for (i=0;i<a;i++)
  {
     tx_buffer0[tx_wr_index0]=s[i];
   if (++tx_wr_index0 == TX_BUFFER_SIZE0) tx_wr_index0=0;
   if (++tx_counter0  == TX_BUFFER_SIZE0)
     {
      tx_counter0=0;
      tx_buffer_overflow0=1;
     }    
      
   }
 }

   void ZUTransf( u8* s,unsigned char a)  // ��������� �������� ������ �������� � ���� 
 {
     unsigned  short l;
     unsigned  short i;
            
          for (i=0;i<a;i++)
  {
     tx_buffer0[tx_wr_index0]=s[i];
   if (++tx_wr_index0 == TX_BUFFER_SIZE0) tx_wr_index0=0;
   if (++tx_counter0 == TX_BUFFER_SIZE0)
     {
      tx_counter0=0;
      tx_buffer_overflow0=1;
     }   
      
  }
 }

void UDP_TCP_setup(void)
{   
//------------------------------TCP_UDP------------------------------------------
  Set_network();
  UDP_TCP_flag=1;
//--------------------------------------------------------------------------------	
}
 
 void Time_SEV_INF(unsigned char* sr,unsigned int lsr) //��������� ��������� ����� � ����� ��� � ��������� �����
 {
  
unsigned int i,l=0,k=0,m=0,j=0;
unsigned char m1,m2;
unsigned int time_sev_s =0;
unsigned int time_sev_ns=0;
	
	time_sev_s  = (sr[0]<<24)+(sr[1]<<16)+(sr[2]<<8)+(sr[3]<<0);
	time_sev_ns = (sr[4]<<24)+(sr[5]<<16)+(sr[6]<<8)+(sr[7]<<0);
	
	//u_out("�������� ���:",time_sev_s);

	FLAG_TEST_SEV=1;
	/*
	u_out("������� ���: ",TNC_zad);
    u_out("������� ���: ",CEV_zad);
   */
	time_sev_s  = time_sev_s - TNO_width*FLAG_DELAY_TNO;

	if (CEV_actual!=time_sev_s) 
		{
			CEV_actual = time_sev_s;
			FLAG_SYNC_SEV=1;
           
		}
	
	// tabl_view(index_wr_old,0);
 }

 void n_out (char s[],u32 a)
{
   put_str1 (s);
   itoa (a,strng);
   put_str1(strng);
   put_str1 (" ");
}

 
 void KUK_IO(unsigned char* sr,unsigned int lsr) //��������� ��������� ����� � ����� ��� � ��������� �����
 {
  
unsigned int i,l=0,k=0,m=0,j=0;
unsigned char m1,m2;
unsigned int time_sev_s=0;
unsigned int time_sev_ns=0;
u32 index_sort=0;
u8 FLAG_sort=0;

 tst_time_KUK1=*pTIMER2_COUNTER;
          
  for (i=0u;i<lsr;i++)
            {                      
				m=3-l;
                packet[m][k]=sr[i];
                l=l+1;  
                if (l==4) {l=0; k=k+1;}
            }
			
  for (i=0u;i<30u;i++)  //������������ ������ �� �������� �������
            {
        		m1=packet[0][i];
        		m2=packet[2][i];
        				
        		packet[2][i]=packet[1][i];
        		packet[0][i]=packet[3][i];
        				
        		packet[3][i]=m1;
        		packet[1][i]=m2;
			}
 
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

    TNO_zad =(packet[2][2]<< 8)+(packet[3][2]<< 0)+(packet[0][2]<<16)+(packet[1][2]<<24);
    TNC_zad =(packet[2][3]<< 8)+(packet[3][3]<< 0)+(packet[0][3]<<16)+(packet[1][3]<<24);
	
    CEV_zad     = (sr[0]<<24)+(sr[1]<<16)+(sr[2]<<8)+(sr[3]<<0);
	time_sev_ns = (sr[4]<<24)+(sr[5]<<16)+(sr[6]<<8)+(sr[7]<<0);
	
	
	//time_sev_s  = (sr[0]<<24)+(sr[1]<<16)+(sr[2]<<8)+(sr[3]<<0);
	//n_out(" ",TNC_zad);
	
	//---------�������� ��� ������ ������ ��� � ������ ----------
	if ((CEV_zad>CEV_actual)||(CEV_zad==CEV_actual)) index_sort=BUF_SEARCH(CEV_zad,TNC_zad,0); //����� ������ � ������
	else {index_sort=0;/*u_out("������ ���!:",CEV_zad);*/}
	
	if (index_sort<Index_BUF) 
	{
		FLAG_sort=0;  //���� ����� ����� � ������
		//u_out("�����:",TNC_zad);
	}
	else FLAG_sort=1;						//������ ����� �����
	
	//FLAG_sort=1;	
	//-----------------------------------------------------------
	/*	
	if (FLAG_TNO_CONTR_1==Number_TNC)
	{
		//FLAG_TNO_CONTR_1=0;
		Transf("------------\r\n");
		//u_out ("FLAG_sort :",FLAG_sort);
		//u_out ("TNO_zad   :",TNO_zad);
		u_out ("TNC_zad   :",TNC_zad);
		u_out ("CEV_zad   :",CEV_zad);
		u_out ("TNC_actual:",TNC_actual);
		u_out ("CEV_actual:",CEV_actual);
		//u_out ("index_wr  :",index_wr);
	}		
	*/	
		
	if (TNC_zad==0xffffffff) //���� ������ ������ �����
	{

    FLAG_EXTRA_PACKET = 1;

		Pkt_0[0].TNC = TNC_zad;
		Pkt_0[0].TNO = TNO_zad;
		Pkt_0[0].SEV = CEV_zad;
		
		for (k=0u;k<26u;k++) //���������� ������ � ������������ ���� �600 ������� (�������� ���,��� � ���)
			{
			 Pkt_0[0].A[0][k]=packet[0][k+4];
			 Pkt_0[0].A[1][k]=packet[1][k+4];
			 Pkt_0[0].A[2][k]=packet[2][k+4];
			 Pkt_0[0].A[3][k]=packet[3][k+4];
			}

		TNC_zad = 0;
			
		packet_UPR (0,Pkt_0);	
		
	} else if (FLAG_sort==1)
	{
		FLAG_SCH_NEW_BUF++;
		Pkt[index_wr].TNO = TNO_zad;
		Pkt[index_wr].TNC = TNC_zad; //��������� �������� ���
		Pkt[index_wr].SEV = CEV_zad; //��������� �������� ���
		/*
		//-----------------
		if (FLAG_ERROR_SYNC_VIEV==1)//�������� ����� ��������� �������
		{
			if (TNC_zad>79) 
				{
				  put_str1("-------\r\n");
				  u_out("���[]		:",Pkt[index_wr].TNC);
				  u_out("���[]		:",Pkt[index_wr].SEV);
				  u_out("index_wr	:",index_wr);
				  u_out("���_�������:",CEV_actual);
				  put_str1("-------\r\n");
				}
		}
		//-----------------
		*/
		
		for (k=0u;k<26u;k++) //���������� ������ � ������������ ���� �600 ������� (�������� ���,��� � ���)
			{
			 Pkt[index_wr].A[0][k]=packet[0][k+4];
			 Pkt[index_wr].A[1][k]=packet[1][k+4];
			 Pkt[index_wr].A[2][k]=packet[2][k+4];
			 Pkt[index_wr].A[3][k]=packet[3][k+4];
			}
			
		index_wr_old = index_wr;
		
		packet_UPR (0,Pkt);	

		if (FLAG_TST_UDP_BUF==0) //���� "1" - ���������� ��������� �����
			{
				if (index_wr<(Index_BUF-1))	index_wr=index_wr+1; else index_wr=0; //������ � ��������� �����
			} else 
			{
				if (index_wr<(Index_BUF-1))	index_wr=index_wr+1; 
			}
	}	

	//if (((Mem_K615.VYKL&0x1)==0x1)||((Mem_K615.MU&0x1)==0x1)) packet_UPR (index_wr,Pkt);


	tst_time_KUK2=*pTIMER2_COUNTER;
 
 }
 
u32 F_comp_tst (u32 fcode)
{
	u64 FS = 400000000;
	u64 l=0;
	u32 F_tst=0;
	
	l = fcode*FS/0xFFFFFFFF + 400000000;
	F_tst = l;
	
	if (F_tst>Fmax_tst) Fmax_tst = F_tst;
	
	return F_tst;
}

u32 DEV_comp_tst (u32 ramrt,u32 delta,u32 dii)
{
  double	dFo = 0; // ������� ������
  double   N_step=0;
  u32 DEV_tst=0;
   
  N_step = (dii * 100);// ���������� ����� ������������

  dFo = (delta/ramrt/10.73741824)*N_step;
  
  DEV_tst = (u32) dFo;
  
  if (DEV_tst>DEVmax_tst) DEVmax_tst = DEV_tst;
  
  return DEV_tst;
  
}

void packet_TRSL (unsigned char index,Packet_struct * Pkt)
{

unsigned int k=0;
unsigned char m1,m2;
unsigned long long l0,l1,l2,l3,l4;
u8 code8=0;

 tst_time6=*pTIMER2_COUNTER;

for (k=0u;k<26u;k++) //���������� ������ ��� ���������
			{
				 packet[0][k]=Pkt[index].A[0][k];
				 packet[1][k]=Pkt[index].A[1][k];
				 packet[2][k]=Pkt[index].A[2][k];
				 packet[3][k]=Pkt[index].A[3][k];
			}
		 
            k=0;
         			
         	//---------------�����������-----------------------
			
			
			Mem1.Kod_zameny        	= packet[0][0]>>4      ; //[�������][���] 
			     	  code8 		= packet[0][0]    &0x0f; //Mem1.Zapret_REZERV
			
			if ((code8==0x05)||(code8==0x0c)) Mem1.Zapret_REZERV = code8;
			
			Mem1.Kol_error         	= packet[1][0]>>6      ;
			Mem1.Nomer_prov_cepi   	=(packet[1][0]>>2)&0x0f;
			Mem1.Kod_error         	=(packet[1][0]   )&0x03;
			
			code8        	        =(packet[2][0]>>4)     ;
			if ((code8==0x05)||(code8==0x0c)) Mem1.Zadano_off = code8;
			
			Mem1.Zadano_GBR        	= packet[2][0]    &0x0f;
			Mem1.Zadano_BR         	=(packet[3][0]>>4)     ;
			
			Mem1.Zadano_CU_MU      	= packet[3][0]    &0x0f;
			
			Mem1.Kod_RAMRT_fp	 	= packet[0][1] 	       ;	
			Mem1.Kod_Dm            	= packet[1][1];
		    Mem1.Kod_Do	            = packet[2][1]+1;
			Mem1.Kod_DN            	= packet[3][1];
			
			TNO_width               = Mem1.Kod_Do;//������������ �������� ���
			
			Mem1.Kod_Dchk          	=(packet[3][2]<< 0)+(packet[2][2]<< 8)+(packet[1][2]<<16)+(packet[0][2]<<24);
			Mem1.Kod_Dchp          	=(packet[3][3]<< 0)+(packet[2][3]<< 8)+(packet[1][3]<<16)+(packet[0][3]<<24); 
			Mem1.Kod_Ddelta_fp		=(packet[3][4]<< 0)+(packet[2][4]<< 8)+(packet[1][4]<<16)+(packet[0][4]<<24); 
			
			Mem1.Kod_Dii            =(packet[0][5]<<8)+(packet[1][5]<<0);
			Mem1.Kod_Dni            =(packet[2][5]<<8)+(packet[3][5]<<0);//!
			Mem1.Kod_Dip            =(packet[0][6]<<8)+(packet[1][6]<<0);
			Mem1.Kod_Dnp            =(packet[2][6]<<8)+(packet[3][6]<<0);//!
			
			
			Mem1.Kod_Dchi           =(packet[3][ 7]<< 0)+(packet[2][ 7]<< 8)+(packet[1][ 7]<<16)+(packet[0][ 7]<<24);//revers
			Mem1.Kod_Ddelta_fi	    =(packet[3][ 8]<< 0)+(packet[2][ 8]<< 8)+(packet[1][ 8]<<16)+(packet[0][ 8]<<24); 
			Mem1.Kod_Dchg           =(packet[3][ 9]<< 0)+(packet[2][ 9]<< 8)+(packet[1][ 9]<<16)+(packet[0][ 9]<<24); 
			Mem1.Kod_Ddelta_fg	    =(packet[3][10]<< 0)+(packet[2][10]<< 8)+(packet[1][10]<<16)+(packet[0][10]<<24); 
			Mem1.Kod_Dpp1           = packet[1][11];
			
			Mem1.Kod_RAMRT_fg	 	= packet[2][11];
			Mem1.Kod_RAMRT_fi	 	= packet[3][11];
			
	//		F_comp_tst (Mem1.Kod_Dchi);//��������� ��������������� ������� ���������
	//		DEV_comp_tst (Mem1.Kod_RAMRT_fi,Mem1.Kod_Ddelta_fi,Mem1.Kod_Dii);
			if (Mem1.Kod_Dni<Dni_MIN) Dni_MIN = Mem1.Kod_Dni;
		    if (Mem1.Kod_Dnp<Dnp_MIN) Dnp_MIN = Mem1.Kod_Dnp;
			
//~~~~~~~~~~~~~~~~~~~~~~~~~~2-� �������~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

			Mem1.Kod_Dii2           =(packet[0][12]<<8)+(packet[1][12]<<0);
			Mem1.Kod_Dni2           =(packet[2][12]<<8)+(packet[3][12]<<0);
			Mem1.Kod_Dip2           =(packet[0][13]<<8)+(packet[1][13]<<0);
			Mem1.Kod_Dnp2           =(packet[2][13]<<8)+(packet[3][13]<<0);
          	Mem1.Kod_Dchi2          =(packet[3][14]<<0)+(packet[2][14]<<8)+(packet[1][14]<<16)+(packet[0][14]<<24);
			Mem1.Kod_Ddelta_fi2	    =(packet[3][15]<<0)+(packet[2][15]<<8)+(packet[1][15]<<16)+(packet[0][15]<<24); 
			Mem1.Kod_Dchg2          =(packet[3][16]<<0)+(packet[2][16]<<8)+(packet[1][16]<<16)+(packet[0][16]<<24); 
			Mem1.Kod_Ddelta_fg2	    =(packet[3][17]<<0)+(packet[2][17]<<8)+(packet[1][17]<<16)+(packet[0][17]<<24); 
	
			Mem1.Kod_Dpp2           = packet[1][18];
			
			Mem1.Kod_RAMRT_fg2	 	= packet[2][18];
			Mem1.Kod_RAMRT_fi2	 	= packet[3][18];
			
	//		if (Mem1.Kod_Dm>0) F_comp_tst (Mem1.Kod_Dchi2);
	//		if (Mem1.Kod_Dm>0) DEV_comp_tst (Mem1.Kod_RAMRT_fi2,Mem1.Kod_Ddelta_fi2,Mem1.Kod_Dii2);
			if (Mem1.Kod_Dni2<Dni_MIN) Dni_MIN = Mem1.Kod_Dni2;
		    if (Mem1.Kod_Dnp2<Dnp_MIN) Dnp_MIN = Mem1.Kod_Dnp2;
//~~~~~~~~~~~~~~~~~~~~~~~~~~3-� �������~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          	
          	Mem1.Kod_Dii3           =(packet[0][19]<<8)+(packet[1][19]<<0);
			Mem1.Kod_Dni3           =(packet[2][19]<<8)+(packet[3][19]<<0);
			Mem1.Kod_Dip3           =(packet[0][20]<<8)+(packet[1][20]<<0);
			Mem1.Kod_Dnp3           =(packet[2][20]<<8)+(packet[3][20]<<0);
          	Mem1.Kod_Dchi3          =(packet[3][21]<<0)+(packet[2][21]<<8)+(packet[1][21]<<16)+(packet[0][21]<<24);
			Mem1.Kod_Ddelta_fi3	    =(packet[3][22]<<0)+(packet[2][22]<<8)+(packet[1][22]<<16)+(packet[0][22]<<24); 
			Mem1.Kod_Dchg3          =(packet[3][23]<<0)+(packet[2][23]<<8)+(packet[1][23]<<16)+(packet[0][23]<<24); 
			Mem1.Kod_Ddelta_fg3	    =(packet[3][24]<<0)+(packet[2][24]<<8)+(packet[1][24]<<16)+(packet[0][24]<<24); 
	
			Mem1.Kod_Dpp3           = packet[1][25];
			
			Mem1.Kod_RAMRT_fg3	 	= packet[2][25];
			Mem1.Kod_RAMRT_fi3	 	= packet[3][25];
			
	//	if (Mem1.Kod_Dm>1) F_comp_tst (Mem1.Kod_Dchi3);
    //  if (Mem1.Kod_Dm>1) DEV_comp_tst (Mem1.Kod_RAMRT_fi3,Mem1.Kod_Ddelta_fi3,Mem1.Kod_Dii3);  
	    if (Mem1.Kod_Dni3<Dni_MIN) Dni_MIN = Mem1.Kod_Dni3;		
		if (Mem1.Kod_Dnp3<Dnp_MIN) Dnp_MIN = Mem1.Kod_Dnp3;
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
			if ((Mem1.Kod_Dpp1&0x01)==0x01) {LCHM_osnv   =1;   } else      LCHM_osnv=0;
          	if ((Mem1.Kod_Dpp1&0x02)==0x02) {Dop_interval=1;   } else   Dop_interval=0; 
          	if ((Mem1.Kod_Dpp1&0x04)==0x04) {SYNC_PILA   =0;   } else {  SYNC_PILA  =1;  }  //����������� ��� ��� �����
          	if ((Mem1.Kod_Dpp1&0x08)==0x08) {LCHM_pomeha =0;   } else    LCHM_pomeha=1;		//������� ��� ���������� ��� � ������� "������"
          	if ((Mem1.Kod_Dpp1&0x10)==0x10) {LCHM_I_type =0;   } else    LCHM_I_type=1;		//����������� ���� ��� ���������
			if ((Mem1.Kod_Dpp1&0x20)==0x20) {LCHM_G_type =0;   } else    LCHM_G_type=1;		//����������� ���� ��� ���������

            if ((Mem1.Kod_Dpp2&0x01)==0x01) {LCHM_osnv2   =1;   } else      LCHM_osnv2=0;
          	if ((Mem1.Kod_Dpp2&0x02)==0x02) {Dop_interval2=1;   } else   Dop_interval2=0; 
          	if ((Mem1.Kod_Dpp2&0x04)==0x04) {SYNC_PILA2   =0;   } else {  SYNC_PILA2 =1;  }
          	if ((Mem1.Kod_Dpp2&0x08)==0x08) {LCHM_pomeha2 =0;   } else    LCHM_pomeha2=1;
          	if ((Mem1.Kod_Dpp2&0x10)==0x10) {LCHM_I_type2 =0;   } else    LCHM_I_type2=1;		//����������� ���� ��� ���������
			if ((Mem1.Kod_Dpp2&0x20)==0x20) {LCHM_G_type2 =0;   } else    LCHM_G_type2=1;		//����������� ���� ��� ���������

          	if ((Mem1.Kod_Dpp3&0x01)==0x01) {LCHM_osnv3   =1;   } else      LCHM_osnv3=0;
          	if ((Mem1.Kod_Dpp3&0x02)==0x02) {Dop_interval3=1;   } else   Dop_interval3=0; 
          	if ((Mem1.Kod_Dpp3&0x04)==0x04) {SYNC_PILA3   =0;   } else {    SYNC_PILA3=1;  }
          	if ((Mem1.Kod_Dpp3&0x08)==0x08) {LCHM_pomeha3 =0;   } else    LCHM_pomeha3=1;
           	if ((Mem1.Kod_Dpp3&0x10)==0x10) {LCHM_I_type3 =0;   } else    LCHM_I_type3=1;		//����������� ���� ��� ���������
			if ((Mem1.Kod_Dpp3&0x20)==0x20) {LCHM_G_type3 =0;   } else    LCHM_G_type3=1;		//����������� ���� ��� ���������

            //-------------------------------------------------
              
if (SYNC_PILA==1) SYNC_PILA_TST = SYNC_PILA;			  
              
if (LCHM_I_type==0)  put_str1("LCHM_I_type =0\r\n");		 
if (LCHM_I_type2==0) put_str1("LCHM_I_type2=0\r\n");		
if (LCHM_I_type2==0) put_str1("LCHM_I_type3=0\r\n");		 
           
 tst_time7=*pTIMER2_COUNTER;		   

}

void packet_UPR (unsigned char index,Packet_struct * Pkt)
{

unsigned int k=0;
unsigned char m1,m2;
unsigned long long l0,l1,l2,l3,l4;
u8 code8=0;

for (k=0u;k<2u;k++) //���������� ������ ��� ���������
      {
         packet[0][k]=Pkt[index].A[0][k];
         packet[1][k]=Pkt[index].A[1][k];
         packet[2][k]=Pkt[index].A[2][k];
         packet[3][k]=Pkt[index].A[3][k];
      }
 k=0;
              
 //---------------�����������-----------------------
                    
      Mem1.Kod_zameny         = packet[0][0]>>4      ; //[�������][���] 
           	  code8 		  = packet[0][0]    &0x0f; //Mem1.Zapret_REZERV
	  if ((code8==0x05)||(code8==0x0c)) Mem1.Zapret_REZERV = code8;
    
      Mem1.Kol_error          = packet[1][0]>>6      ;
      Mem1.Nomer_prov_cepi    =(packet[1][0]>>2)&0x0f;
      Mem1.Kod_error          =(packet[1][0]   )&0x03;
      code8        	          =(packet[2][0]>>4)     ;// Mem1.Zadano_off
			if ((code8==0x05)||(code8==0x0c)) Mem1.Zadano_off = code8;
			
      Mem1.Zadano_GBR         = packet[2][0]    &0x0f;
      Mem1.Zadano_BR          =(packet[3][0]>>4)     ;
      Mem1.Zadano_CU_MU       = packet[3][0]    &0x0f;
 
}


void SPORT_COM (void)
{
  unsigned int Z_sum=0;									                
 //Z_sum=SPORT0_write_read(SPORT_VAR);

 //u_out("dTNO:",Z_sum&0x3FFFFFF);
 //u_out("REZERV_M:",Z_sum>>31);
 //u_out("ERROR64:",((Z_sum>>30)&0x1));
 //u_out("INT_SZ2:",((Z_sum>>29)&0x1));
 //u_out("INT_SZ1:",Z_sum>>28);
 //u_out("INT_���:",Z_sum>>27);
 //Z_sum=SPORT0_write_read(SPORT_VAR);
 //u_out("dTNC:",(Z_sum&0x3fffff));
 //u_out("flag:",Z_sum>>22);
   put_str1("*************\r\n"); 
// u_out("Event_word:",Event_word); 
   u_out("Alfa:",Alfa);
   u_out("TNC_actual  :",TNC_actual);
   u_out("TNC_sch  :",TNC_sch);
   
   u_out("Time_before_TOBM_2:",Time_before_TOBM_2); 
   u_out("TIME_PACKET_FORM  :",TIME_PACKET_FORM); 
   u_out("timer_TOBM  :",timer_TOBM); 
 
   u_out("flag_1HZ_sync:",flag_1HZ_sync); 
// u_out("flag_NUMBER_pachki:",flag_NUMBER_pachki); 
// u_out("TNO_work1:",TNO_work1); 
   u_out("flag_END_sync_packet:",flag_END_sync_packet); 
   u_out("flag_TOBM:",flag_TOBM); 
   u_out("flag_TNC_UP:",flag_TNC_UP); 
   u_out("flag_PPI_sinc:",flag_PPI_sinc); 
   u_out("MAX UDP packet:",RX_resive_MAX);       								
   u_out("flag_Packet_form:",flag_Packet_form); 
   u_out("ERROR_status_DMA:",ERROR_status_DMA); 
   u_out("flag_FAIL_PPI:",flag_FAIL_PPI); 
   u_out("FLAG_PPI_OK  :",FLAG_PPI_OK);
   u_out("flag_dsp_ok  :",flag_dsp_ok);
   u_out("sch_ERROR_CRC_control_word:",sch_ERROR_CRC_control_word); 
   u_out("ERROR_Timp:",DISP_flag_ERROR_Timp); 
   DISP_flag_ERROR_Timp=0;
   tst_time_delta=tst_time7-tst_time6;         
   u_out("time_delta_packet_TRSL:",tst_time_delta); 
   tst_time_delta=tst_time9-tst_time8;         
   u_out("time_delta_VCU_sinh_form:",tst_time_delta); 
   tst_time_delta=tst_timeB-tst_timeA;         
   u_out("time_delta_UDP:",tst_time_delta); 
}

void ERROR_IMP(void)
{
	//x_out("flag:",(flag&0xfff));
    //Str_print (&Struk0);
	u_out("\r\n!!! ������ ������� ����������:",DISP_flag_ERROR_Timp);
	FLAG_ERROR_INTERVALWORK=1;
   // u_out ("sch_INT      :",sch_INT);
   // u_out ("S->index_TKI :",S->index_TKI);
   // u_out ("S->index_TNI :",S->index_TNI);
   // u_out ("S->index_TNP :",S->index_TNP);
   // u_out ("S->index_TKP :",S->index_TKP);
   // u_out ("flag_PPI_sinc:",flag_PPI_sinc);
   // u_out ("flag_TKI     :",flag_TKI);
   // u_out ("TEST_TKI     :",TEST_TKI);
   // u_out ("flag_TNI     :",flag_TNI);	
}

u8 TEST_TKI=0;
u8 sch_INT=0;


unsigned char Control_Impuls ( Sintez_struct *  S )
{
	u32 Z_sum=0;
	u32 flag=0;
	u8 CRC=0;
	u8 INT2=0;     //���������� �� �����������
	u8 INT3=0;     //���������� �� ����������
	u8 INT4=0;     //���������� �� ���
	
	u8 ERROR64=0;  //���������� �� ������� ������ - ����������� ������ 64 ���

//--------------------------------------------------------------------------------------------------------

 //csync();
 //if (BR_GBR_FLAG==1)     SPORT_VAR = SPORT_VAR|(u32)(0x1<<7);   else SPORT_VAR = SPORT_VAR&(u32)(~(0x1<<7));
  
  SPORT_VAR = SPORT_VAR&(u32)(~(0x7<<4)); 
  SPORT_VAR = SPORT_VAR|(u32)(TST_OUT_CODE<<4);//��������� ��� ���������� ��������� ��������   
    
  Z_sum=SPORT0_write_read(SPORT_VAR); //��������� ����������  �������� ������������ ���
							
  time_TNO=(Z_sum&(0x7ffff))<<9;  //������� 5 ���� - ����������,����� 8 ��� - ������ 610 ����� 
 // time_TNO=Z_sum;  //������� 5 ���� - ���������� 
			
	 FLG_K601=(Z_sum>>19)&0x1;		
	 FLG_K602=(Z_sum>>20)&0x1;		
	 FLG_K603=(Z_sum>>21)&0x1;
     FLG_K604=(Z_sum>>22)&0x1;				
	 FLG_K605=(Z_sum>>23)&0x1;
	 FLG_K607=(Z_sum>>24)&0x1;	
	 FLG_K608=(Z_sum>>25)&0x1;	
	 CRC_RX8 =(Z_sum>>26)&0x1;
	 
	 TST_RX8 =(CRC_RX8<<7)|(FLG_K608<<6)|(FLG_K607<<5)|(FLG_K605<<4)|(FLG_K604<<3)
	   		 |(FLG_K603<<2)|(FLG_K602<<1)|(FLG_K601<<0);
		  
	 INT4=(Z_sum>>27)&0x1;
	 INT3=(Z_sum>>28)&0x1;
	 INT2=(Z_sum>>29)&0x1;
  ERROR64=(Z_sum>>30)&0x1;
 REZERV_M=(Z_sum>>31)&0x1;

								 
	if (    INT2==0x1) {Sintez1_ERROR=0x01;} else Sintez1_ERROR=0;
	if (    INT3==0x1) {Sintez2_ERROR=0x01;} else Sintez2_ERROR=0;
	if (    INT4==0x1) {   FOCH_ERROR=0x01; AVARIYA_flag=300;} else FOCH_ERROR=0;
	if ( ERROR64==0x1) { ERROR64_FLAG=0x01; AVARIYA_flag=310;} else ERROR64_FLAG=0;
//	if ((REZERV_M==0x1)&&(TIMER_AVARIYA>1000)) {FLAG_MASTER_REZERV=1; FLAG_MASTER_REZERV_disp=1; }
	if ((REZERV_M==0x1)&&(FLAG_MASTER_BR_OK==0)&&(TIMER_GBR_OK>500u)) {FLAG_MASTER_REZERV=1; FLAG_MASTER_REZERV_disp=1; }//���������� �� ������� ��������������
//--------------------------------------------------------------------------
    //if (Sintez1_ERROR==1) ERROR_SCH_IZL++; else ERROR_SCH_IZL=0; //������������ ������� ������� ����� N_ERROR ������!!!
    //if (ERROR_SCH_IZL>N_ERROR) AVARIYA_flag++;
    //if (Sintez2_ERROR==1) ERROR_SCH_GET++; else ERROR_SCH_GET=0;
    //if (ERROR_SCH_GET>N_ERROR) AVARIYA_flag++;
	
	if (Sintez1_ERROR==1) AVARIYA_flag=50;//��������� 613
	if (Sintez2_ERROR==1) AVARIYA_flag=60;//��������� 612
	
	FLG_K613 = Sintez1_ERROR;//����� ��������� ������ ����� �660
	FLG_K612 = Sintez2_ERROR;
	FLG_K611 = FOCH_ERROR;
	FLG_CLK  = ERROR64_FLAG;
	if ((ERROR64_FLAG==1)||(AVARIYA_flag>0)) FLG_K614 = 1; else FLG_K614 = 0;
	
    if (time_TNO>time_TNO_max) time_TNO_max=time_TNO;
    if (time_TNO<time_TNO_min) time_TNO_min=time_TNO; 

 //---------------------------------------------------------------------------------------------  
	                        
     Z_sum=SPORT0_write_read(SPORT_VAR); //��������� ���������� ����� �������� ����������� ��������� � ������������ ���

     flag=(Z_sum>>22); //�������� ���������� ����������� ����, 
	//ERROR_TNI|ERROR_TNP,PPI_fail_reg,1'h0,tno_reg,tnc_reg,tni_reg,tki_reg,tnp_reg,tkp_reg,tobm_reg 

		CRC= (flag&0x01u)    ^
			((flag&0x02u)>>1)^
			((flag&0x04u)>>2)^
			((flag&0x08u)>>3)^
			((flag&0x10u)>>4)^
			((flag&0x20u)>>5)^
			((flag&0x40u)>>6);
								
	if (CRC!=((flag&0xffu)>>7)) {flag_ERROR_CRC_control_word++;sch_ERROR_CRC_control_word++;} 
							
	if (((flag>>8)&0x1u)==1)flag_FAIL_PPI++; //�������� ������ ���� PPI, ����� ������.
	if (((flag>>9)&0x1u)==1)flag_ERROR_Timp++;

    sch_INT++;

    if (flag_ERROR_Timp==1) {ERROR_IMP();}
		
	//--------------------�������� ���������� ��� � ��� ----------------------------------------------						
		Z_sum=Z_sum&(0x3fffffu); //������� 10-�� ���� -�������� ������!!!
							
	    time_TNC=Z_sum;

        if (time_TNC>time_TNC_max) time_TNC_max=time_TNC;
        if (time_TNC<time_TNC_min) time_TNC_min=time_TNC; 
	 
	 //------------------------------------------------------------------------------------------------
	 
	if ((flag&0x40u)==0x00)  flag_TNO   =0u;
	if ((flag&0x01u)==0x00)  flag_TOBM  =0u;
	if ((flag&0x20u)==0x00)  flag_TNC_UP=0u;
	if ((flag&0x02u)==0x00)  flag_TKP   =0u;
	if ((flag&0x02u)==0x00)  flag_TKP   =0u;
	if ((flag&0x04u)==0x00)  flag_TNP   =0u;
	if ((flag&0x10u)==0x00)  flag_TNI   =0u;
	if ((flag&0x08u)==0x00)  flag_TKI   =0u; 
	 
	 if (flag_ERROR_CRC_control_word==0)
	 
	 {
		 if ((flag&0x40u)==0x40) if (flag_TNO ==0u) //������ ����   ���
													{ 
														flag_TNO_TRUE=1u;  
														flag_TNO=1u;

                            							//put_str1 ("TNO �� SPORT\r\n");
														/*
														  sch_sync_ethernet_max=sch_sync_ethernet;
														  ssync();												   	
														  sch_sync_ethernet=0; //����� �������� �������������
														  sch_packet_UDP_reciv_max = sch_packet_UDP_reciv;
														  ssync();
														  csync();
														  sch_packet_UDP_reciv = 0;
														  FLAG_VCU_SYNC_ERROR_max = FLAG_VCU_SYNC_ERROR;
														  FLAG_VCU_SYNC_ERROR=0;
													*/
														if (flag_START_PROCESS!=1) 
    															{
    														  																
    															} else flag_START_PROCESS=0;
													}

		 if ((flag&0x01u)==0x01) if (flag_TOBM==0u)					//�������� ��� ������ TOBM 
			{
				if (sch_tst_pachek_max<sch_tst_pachek)      sch_tst_pachek_max=sch_tst_pachek;
				if (sch_tst_pachek_min>sch_tst_pachek)      sch_tst_pachek_min=sch_tst_pachek;			
				if (sch_event_sinhron_max<sch_event_sinhron)      sch_event_sinhron_max=sch_event_sinhron;
				if (sch_event_sinhron_min>sch_event_sinhron)      sch_event_sinhron_min=sch_event_sinhron;
										
				flag_TNC_UP=0u;		
				flag_Packet_form=1;
				flag_TOBM=1u;
				sch_tst_pachek=0;
				flag_UDP_OBMEN=100;//������ UDP ������
				flag_TNO=0u;	
				flag_END_sync_packet =1;
				TNC_actual++;//��������� ���
				FLAG_PPI_OK  = 1;//������������ �������� ������ �� ���� PPI!!!
				timer_TOBM = (*pTIMER2_COUNTER)-timer_TNC1;
                //-------���������� �����------------------
                              
				 if (FLAG_START_OBZOR==1) 
                    {
                      FLAG_ERR_TNI=0;
                      FLAG_ERR_TKI=0;
                    }
                                
                FLAG_START_OBZOR=0; //���� ������������ ��� �������������� ������ ����� ������  
			} 
				
		 
		 if ((flag&0x20u)==0x20) { //�������� ��� ������ ��� 
							       if (flag_TNC_UP==0u)
											{
												TIME_WORK_CONTROL=0;//��������� �������� ������������ �����
												FLAG_TNO_CONTR_1++;
												TNC_sch++; //������� �������� �������� ���
												flag_UDP_OBMEN=0;      //���� ����������� ����� �� ���� ETHERNET
												FLAG_RS485_OBMEN=1;
												TIMER_RS485_OBMEN=0;
												flag_TNC_UP=1u;
												flag_TOBM=0u;
												TNC0_packet=0;
												TIMER_FINDER=0;
												FLAG_Packet_FIND=1;
												Delta_TNC_old2 = Delta_TNC_old;
												Delta_TNC_old  = Delta_TNC;
												FLAG_UPR_TKI=0;
												//S->TNC_a[0] = S->TNC_a[1];
												TIME_PACKET_FORM=0xffffffff;
												timer_TOBM = 0xffffffff;
												//flag_PPI_sinc++; //���������� ���������� ����� ������������� ���������
												//if (TNC_sch>1)
												{
												
													if ((Delta_TNC_old2-200)>time_TNC)
														{SCH_ERROR_delta_min_TNC++;
															//u_out("< ��� :",TNC_sch);
															//u_out("Delta_TNC:",Delta_TNC_old);
															//u_out("time_TNC :",time_TNC);
														}
													if ((Delta_TNC_old2+200)<time_TNC) {SCH_ERROR_delta_max_TNC++;/*u_out("> ��� :",TNC_sch);*/ }
												}
												
												
												timer_TNC1 = *pTIMER2_COUNTER;  //���������� ������ ���������
												FLAG_UDP_EVENT ++; //��������� ���� ��� ������� ��������� � ����������� ���������
												Time_before_TOBM_2=Time_before_TOBM_1;
												if (FLAG_REGIM_init==1) FLAG_REGIM=1;
												if (FLAG_REGIM_init==2) FLAG_REGIM=2;
												//FLAG_FIZL_ON=1;
												flag_Avariya_TNC=0;
                        
											}
								  } 
		//------------------����������� �������!!!!!!!!!!! ----------------------------
		 if ((flag&0x02u)==0x02) if (flag_TKP==0u)//�������� ��� ������ ��� 
												{												 													
													flag_TKP=1u;
													flag_TNP=0u;
													//  TIMER2_PRI = *pTIMER2_COUNTER;  
													//  INTERVAL_PRI = TIMER2_PRI - TIMER1_PRI;

													 if (S->index_TKP>0u) 
													 {
														if (S->index_TNP== S->Event_GET[S->index_Evnt_Get])
														{
															//u_out("index_Evnt_Get:",S->index_Evnt_Get);
														 if (S->index_Evnt_Get<4) S->index_Evnt_Get++; //���������� ����� ������� ����� ���������
															flag_PPI_sz2=0;
															 
														}
													 }
													 if (S->index_TKP<BUFFER_max) S->index_TKP++;
                    							   // flag_TNI   =0u;
													//flag_TKI   =0u; 				
												} 

		  if ((flag&0x04u)==0x04) if (flag_TNP==0u) //�������� ��� ������ ���
												{
													flag_TNP=1u;	
													flag_TKP=0u;	
													//TIMER1_PRI = *pTIMER2_COUNTER;  
													if (S->index_TNP<BUFFER_max) 
												  {
													S->index_TNP++;
													flag_PPI_sinc++; //���������� ���������� ����� ������������� ���������
								  				  }
												   // flag_TNI   =0u;
													//flag_TKI   =0u; 
												}  
		 
	   //------------------����������� �������!!!!!!!!!!! ----------------------------	
		 
		  if ((flag&0x10u)==0x10) if (flag_TNI==0u)			//�������� ��� ������ ���
												{
													flag_TNI=1u;
													flag_TKI=0u;
													//TIMER1_IZL = *pTIMER2_COUNTER;  
													
													if (S->index_TNI<BUFFER_max) 
													{
													  S->index_TNI++;
													  flag_PPI_sinc++;
													 }
													//   flag_TKP   =0u;
													//   flag_TNP   =0u;
												}

      if ((flag&0x08u)==0x08) if (flag_TKI==0u) //�������� ��� ������ ���
                        {
                          flag_TKI=1u;
                          flag_TNI=0u;
                          //TIMER2_IZL = *pTIMER2_COUNTER;  
                          //INTERVAL_IZL = TIMER2_IZL - TIMER1_IZL;
                          TEST_TKI=1u;
						  FLAG_UPR_TKI=1u;
						  
						 // flag_TKP   =0u;
						 // flag_TNP   =0u;
                         
                           if (S->index_TKI<BUFFER_max) 
                            {
                               S->index_TKI++;
	   
                               if (S->index_TKI<index_END_TKI_form) 
							   {
								   if (S->index_TNI== S->Event_IZL[S->index_Evnt_Izl])
										{
											if ( S->index_Evnt_Izl<2) S->index_Evnt_Izl++; //���������� ����� ������� ����� ���������
											flag_PPI_sz1=0;
											flag_PPI_sinc++;//!!!!������� �� �����!!! ��� ���������!!
										}
							   }
							   
                            } 

                        } 
	 }
	
	
	
//flag_time_test=1; tst_time1=Time_real(0);
	 
	return (flag&0xff);

}


void Str_print (Sintez_struct *S)
{
  unsigned int l1,l2,dl;
  u32 i=0;
  u32 timer_now=0;
/*
   //u_out("TNO_work2:",TNO_work2); 
	
   l1 = S->TNC_a[0];
	 
	 u_out("S->TNC_a[0]:",S->TNC_a[0]); 
	 	 
	 for (i=0;i<test_Ntin;i++)	 u_out("S->TNI_a[S->index_TNI]:",S->TNI_a[i]); 

	 for (i=0;i<test_Ntik;i++)   u_out("S->TKI_a[S->index_TKI]:",S->TKI_a[i]); 
	 
	 for (i=0;i<test_Ntpn;i++)   u_out("S->TNP_a[S->index_TNP]:",S->TNP_a[i]); 

	 for (i=0;i<test_Ntpk;i++)   u_out("S->TKP_a[S->index_TKP]:",S->TKP_a[i]); 
	 
	 u_out("S->TOBM_a[0]:",S->TOBM_a[0]); 
	
   l2 = S->TOBM_a[0];

   dl = l2 - l1;

   u_out("������������ ���:",dl); 

   u_out("Command_Sync:",Command_Sync); 
   timer_now = Timer_INT2('a');
   u_out("������� ����� �� ���:",timer_now); 

  // u_out("struc S adr:",S); 
 */
}

char Wait_PPI (void)
{
	char ERROR=0;
  
   
   return ERROR;
}

void PPI_massiv(char a,Sintez_struct *S )
 
 
 {
   unsigned int i=0;
   unsigned char crc=0;
  
  if (flag_dsp_ok==1)
  {
	
     TIME2_PPI_START=*pTIMER2_COUNTER; 
  
    if (TIME2_PPI_START>TIME_PPI_END) 
    {
      TIME3_PPI_START=TIME2_PPI_START-TIME_PPI_END;

      if (TIME3_PPI_START>DELAY_PPI_INTERVAL) 
      {
        FLAG_PPI_OK  = 1; 
        TIME_PPI_END = 0xffffffff;
      } 
    } 
    
     //FLAG_PPI_OK  = 1; 
   }
  
  
if (FLAG_PPI_OK==1)

{
	    ssync(); 
		ssync(); 
		ssync(); 
		ssync(); 
		ssync(); 
		ssync(); 
		ssync(); 
		ssync;
		ssync;
		ssync; 
		ssync;
		ssync;
		ssync; 
		ssync;
		ssync;
		ssync; 
		ssync;
		ssync;
		ssync; 
		ssync;
		ssync;
		ssync; 
		ssync;
		ssync;
		ssync; 

      DSP_in1[10]=START_BYTE;
   
      if (a=='s')  {DSP_in1[11]=0x33;} else  //������ ����������
      if (a=='g')  {DSP_in1[11]=0x34;}
      
      if (a=='s') 
        {
		   ssync();
		   //u_out("S->index_Evnt_Izl:",S->index_Evnt_Izl);
           
		   DSP_in1[12]=0;     
           DSP_in1[13]=S->SI_cond [S->index_Evnt_Izl]; //������� ������������ ��������
           DSP_in1[14]=0;
           DSP_in1[15]=S->SI_RamRT[S->index_Evnt_Izl]; //������� ��� DDS 

           DSP_in1[16]=S->SI_Delta[S->index_Evnt_Izl]>>24; //���������� ������� ��� DDS  
           DSP_in1[17]=S->SI_Delta[S->index_Evnt_Izl]>>16;
           DSP_in1[18]=S->SI_Delta[S->index_Evnt_Izl]>>8;
           DSP_in1[19]=S->SI_Delta[S->index_Evnt_Izl];

           DSP_in1[20]=S->SI_Time [S->index_Evnt_Izl]>>24; //������������ �������� 
           DSP_in1[21]=S->SI_Time [S->index_Evnt_Izl]>>16;
           DSP_in1[22]=S->SI_Time [S->index_Evnt_Izl]>>8;
           DSP_in1[23]=S->SI_Time [S->index_Evnt_Izl];

           DSP_in1[24]=S->SI_F    [S->index_Evnt_Izl]>>24;  //������� ������� ��������
           DSP_in1[25]=S->SI_F    [S->index_Evnt_Izl]>>16;
           DSP_in1[26]=S->SI_F    [S->index_Evnt_Izl]>>8;
           DSP_in1[27]=S->SI_F    [S->index_Evnt_Izl];
        }
        
      if (a=='g') 
        {
		  // u_out("S->index_Evnt_Get:",S->index_Evnt_Get);
		   
		   ssync();
		   
           DSP_in1[12]=0;     
           DSP_in1[13]=S->SG_cond [S->index_Evnt_Get]; //������� ������������ ��������
           DSP_in1[14]=0;
           DSP_in1[15]=S->SG_RamRT[S->index_Evnt_Get]; //������� ��� DDS 

           DSP_in1[16]=S->SG_Delta[S->index_Evnt_Get]>>24; //���������� ������� ��� DDS  
           DSP_in1[17]=S->SG_Delta[S->index_Evnt_Get]>>16;
           DSP_in1[18]=S->SG_Delta[S->index_Evnt_Get]>>8;
           DSP_in1[19]=S->SG_Delta[S->index_Evnt_Get];

           DSP_in1[20]=S->SG_Time [S->index_Evnt_Get]>>24; //������������ �������� 
           DSP_in1[21]=S->SG_Time [S->index_Evnt_Get]>>16;
           DSP_in1[22]=S->SG_Time [S->index_Evnt_Get]>>8;
           DSP_in1[23]=S->SG_Time [S->index_Evnt_Get];

           DSP_in1[24]=S->SG_F    [S->index_Evnt_Get]>>24;  //������� ������� ��������
           DSP_in1[25]=S->SG_F    [S->index_Evnt_Get]>>16;
           DSP_in1[26]=S->SG_F    [S->index_Evnt_Get]>>8;
           DSP_in1[27]=S->SG_F    [S->index_Evnt_Get];
		
        }
        
        if (TNC0_packet==1) DSP_in1[28]=1; else DSP_in1[28]=0;  //��������� ����� ���������� ������ ������, ��� ������ ����� � ������ ������������.
    
       for (i=10;i<29u;i++) crc = DSP_in1[i] +crc;
      
          DSP_in1[29]=crc;  //crc 

        //-----------------
        DSP_in1[30]=0x00; //Rezerv
        DSP_in1[31]=0x00;
        DSP_in1[32]=0x00; //������� �������� ����� ����� �����������, �� ������� ����
        DSP_in1[33]=0x00; //����� ������������� �������
        //-----------------
        ssync(); 
		ssync(); 
		ssync(); 
		ssync(); 
		ssync(); 
		ssync(); 
		ssync(); 
		ssync;
		ssync;
		ssync; 
		 
          Init_DMA(35); //�������� - ����� ������������ ���� �� ���� PPI
		ssync(); 
		ssync(); 
		ssync(); 
		ssync(); 
		ssync(); 
		ssync(); 
		ssync(); 
		ssync;
		ssync;
		ssync; 
		ssync;
		ssync;
		ssync; 
		ssync;
		ssync;
		ssync; 
		ssync;
		ssync;
		ssync; 
		ssync;
		ssync;
		ssync; 
		ssync;
		ssync;
		ssync; 
		ssync;
		ssync;
		ssync; 
		
          Init_PPI(35);
        
        ssync(); 
		ssync(); 
		ssync(); 
		ssync(); 
		ssync(); 
		ssync(); 
		ssync(); 
		ssync;
		ssync;
		ssync;
		ssync;
		ssync;
		ssync; 
		ssync;
		ssync;
		ssync; 
		ssync;
		ssync;
		ssync; 
		ssync;
		ssync;
		ssync; 
		ssync;
		ssync;
		ssync; 
		ssync;
		ssync;
		ssync; 
        PF|(PF11);
        FLAG_SYNC_PF11=1;
        ssync(); 
      
              FLAG_PPI_OK = 0; // ���� ������� �������� �������� ���� PPI 
   
              flag_dsp_ok=0;  //������ ����������c� �� ���� PPI, ���� ������.
   


      if (a=='g') flag_PPI_sz2=1; else
      if (a=='s') flag_PPI_sz1=1;

    }      
 
 }
 

 void massiv_time_setka(Sintez_struct *S,unsigned char flag_event )
{
 
unsigned int i,l=0;
char crc=0;

u32 z=0;
   
/*   
if (START_packet==2) //������������ ����� � ������, ������������� � �������� ������
  {
    Command_Sync=0x8888FFFF;   //������� ������ �����
    
    START_packet=0;
  }
   else Command_Sync=0x9999FFFF;  //������� ������������� ����� �� �������������� 
*/

  if (flag_dsp_ok==1)
  {
	 
    TIME2_PPI_START=*pTIMER2_COUNTER; 
  
    if (TIME2_PPI_START>TIME_PPI_END) 
    {
      TIME3_PPI_START=TIME2_PPI_START-TIME_PPI_END;

      if (TIME3_PPI_START>DELAY_PPI_INTERVAL) 
      {
        FLAG_PPI_OK  = 1; 
        TIME_PPI_END = 0xffffffff;
      } 
    } 
	
    //FLAG_PPI_OK  = 1;
  }
  
  
  
if (FLAG_PPI_OK==1)
{
   ssync();

    if (RESET_packet==1) {  Command_Sync=0x8888FFFF;RESET_packet=0;START_packet=0;FLAG_PACHKA_DELAY=0xff;}

    else
    {

      if (START_packet==1) //������ ����� - ���������� � �������������, ������� ����������������  - ����� ��������
        {
         if (SYNC_T0Tnc==1) Command_Sync=0x1234ffff;//0x1234ffff;  //������� ������ � �������������
          else Command_Sync=0x9999FFFF;
          START_packet=0;
          FLAG_START_OBZOR=1;
          FLAG_PACHKA_DELAY=0xff; //������� �������� ������ � ������ ����� ����� ���������,��������, (���������� �� ����) (������ ���� ���������� �����)
        }
         else 
         {
          Command_Sync=0x00000000;  //������� ������� ������
          
          }
    }


       csync();


      DSP_in1[0]=START_BYTE;  //��������� ����
      DSP_in1[1]=0x01;  //������ ����������

      DSP_in1[2]=TNO_work2>>24;    //TNO  
      DSP_in1[3]=TNO_work2>>16;
      DSP_in1[4]=TNO_work2>>8;
      DSP_in1[5]=TNO_work2;

      DSP_in1[6]=S->TNC_a[0]>>24;    //TNC  
      DSP_in1[7]=S->TNC_a[0]>>16;
      DSP_in1[8]=S->TNC_a[0]>>8;
      DSP_in1[9]=S->TNC_a[0];

      DSP_in1[10]=S->TOBM_a[0]>>24; //TOBM 
      DSP_in1[11]=S->TOBM_a[0]>>16;
      DSP_in1[12]=S->TOBM_a[0]>>8;
      DSP_in1[13]=S->TOBM_a[0];

      z =S->TNI_a[S->index_TNI];

      DSP_in1[14]=z>>24;   //TNI
      DSP_in1[15]=z>>16;
      DSP_in1[16]=z>>8;
      DSP_in1[17]=z;

      z =S->TKI_a[S->index_TKI];

      DSP_in1[18]=z>>24;//TKI 
      DSP_in1[19]=z>>16;
      DSP_in1[20]=z>>8;
      DSP_in1[21]=z;

      z =S->TNP_a[S->index_TNP];

      DSP_in1[22]=z>>24;//TNP  
      DSP_in1[23]=z>>16;
      DSP_in1[24]=z>>8;
      DSP_in1[25]=z;

      z =S->TKP_a[S->index_TKP];

      DSP_in1[26]=z>>24;//TKP  
      DSP_in1[27]=z>>16;
      DSP_in1[28]=z>>8;
      DSP_in1[29]=z;

      DSP_in1[30]=Command_Sync>>24; //Rezerv
      DSP_in1[31]=Command_Sync>>16;
      DSP_in1[32]=FLAG_PACHKA_DELAY; //������� �������� ����� ����� �����������, �� ������� ����
      DSP_in1[33]=flag_event; //����� ������������� �������

       for (i=0;i<34u;i++) crc = DSP_in1[i] +crc;
       DSP_in1[34]=crc;  //crc  
             
		ssync(); 
		ssync(); 
		ssync(); 
		ssync(); 
		ssync(); 
		ssync(); 
		ssync(); 
		ssync;
		ssync;
		ssync; 	 
        ssync(); 
		ssync(); 
		ssync(); 
		ssync(); 
		ssync(); 
		ssync(); 
		ssync(); 
		ssync;
		ssync;
		ssync;                    
        Init_DMA(35); //�������� - ����� ������������ ���� �� ���� PPI
	    ssync(); 
		ssync(); 
		ssync(); 
		ssync(); 
		ssync(); 
		ssync(); 
		ssync(); 
		ssync;
		ssync;
		ssync;
		ssync(); 
		ssync(); 
		ssync(); 
		ssync(); 
		ssync(); 
		ssync(); 
		ssync(); 
		ssync;
		ssync;
		ssync; 
        Init_PPI(35);
		ssync(); 
		ssync(); 
		ssync(); 
		ssync(); 
		ssync(); 
		ssync(); 
		ssync(); 
		ssync;
		ssync;
		ssync;
                             
            ssync(); 
            PF|(PF8); //��������� ���� ��� ��������������
            FLAG_SYNC_PF8=1;
            ssync();  

   
        FLAG_PPI_OK = 0; // ���� ������� �������� �������� ���� PPI 
   
        flag_dsp_ok=0;  //������ ����������c� �� ���� PPI, ���� ������. 
                    
          sch_tst_pachek=sch_tst_pachek+flag_PPI_sinc;
          flag_PPI_sinc=0;
	
		if (flag_Packet_form==2) flag_Packet_form++;
         // FLAG_START_OBZOR=0; //���� ������������ ��� �������������� ������ ����� ������


    }
 
 }

 void Event_Synhron (void)
{
  if (Event_Synhron_func()>0u) {Synhron_section ();} //��������� ��������� ���������� ����������
}

void Test_pachka (u8 a)
{ 	  
	   put_str1("����� ����� �����\r\n");
	   
	   WORK_TU_FLAG='t';
	
	   TimpIZ_TST = Timp_TST;
	   TimpPR_TST = Timp_TST;
	   		   
	   if (a==1) 
	   {
  		 Timp_TST  =   176; //� ���
  		 
  		 if (TNI_Timp==22) 	  TST_Dni  =    15; 
  		 if (TNI_Timp==872)   TST_Dni  =   849; 
  		 if (TNI_Timp==3045)  TST_Dni  =  3022;  
  		 if (TNI_Timp==12500) TST_Dni  = 12477; 
  		 
  		 TST_Dnp = 14; //� �8 ���
  		 
  		 TimpIZ_TST = Timp_TST;
  		 TimpPR_TST = Timp_TST-8;
	   }
	   
	    		   
	   if (a==2) 
	   {
  		 TST_Dni  =   15; //� �8 ���
  		 
  		 if (TKI_Timp==19) 	  Timp_TST  =   137; //� ���
  		 if (TKI_Timp==108)   Timp_TST  =   393; 
  		 if (TKI_Timp==3456)  Timp_TST  = 13785;  
  		 if (TKI_Timp==12800) Timp_TST  = 51161; 
  		 
  		 TST_Dnp = 14;
  		 
  		 TimpIZ_TST = Timp_TST;
  		 TimpPR_TST = Timp_TST-8;
	   }

       if (a==3) 
     {
       Timp_TST  =   176; //� ���
       
       if (TNP_Timp==22)    TST_Dnp  =    15; 
       if (TNP_Timp==872)   TST_Dnp  =   849; 
       if (TNP_Timp==3045)  TST_Dnp  =  3022;  
       if (TNP_Timp==12500) TST_Dnp  = 12477; 
       
       TST_Dni = 15; //� �8 ���
       
       TimpIZ_TST = Timp_TST;
       TimpPR_TST = Timp_TST-8;
     }


     if (a==4) 
     {
       TST_Dnp  =   14; //� �8 ���
       
       if (TKP_Timp==92)     Timp_TST  =   137; //� ���
       if (TKP_Timp==3824)   Timp_TST  =   393; 
       if (TKP_Timp==12784)  Timp_TST  = 13785;  
	    
             
       TST_Dni = 15;
       
       TimpIZ_TST = Timp_TST;
       TimpPR_TST = Timp_TST-8;
	   
	   if (TKP_Timp==0)  TimpPR_TST  = 99999999;
     }


     if (a==5) 
     {
        //� �8 ���

       if (TNC_Timp==1)     {TST_Dnp  =   22; Timp_TST  =   137;} //� ���
       if (TNC_Timp==5)     {TST_Dnp  =   46; Timp_TST  =   600;} 
       if (TNC_Timp==10)    {TST_Dnp  =   97; Timp_TST  =   1100;} 
       if (TNC_Timp==14)    {TST_Dnp  =   25; Timp_TST  =   1950;}
  
     /*
       if (TNC_Timp==1)     {TST_Dnp  =   117; Timp_TST  =   137;} //� ���
       if (TNC_Timp==5)     {TST_Dnp  =   46; Timp_TST  =   600;} 
       if (TNC_Timp==10)    {TST_Dnp  =   97; Timp_TST  =   1100;} 
       if (TNC_Timp==14)    {TST_Dnp  =   25; Timp_TST  =   1950;}
     */            
       TST_Dni = 15;
       
       TimpIZ_TST = Timp_TST;
       TimpPR_TST = Timp_TST-8;
     }

        if (a==6) 
     {
       TST_Dnp  =   14; //� �8 ���
       Timp_TST =   393; 
       
       if (TNO_Timp==1)      D_obzor  = 2; //� ���
       if (TNO_Timp==4)      D_obzor  = 5; 
       if (TNO_Timp==5)      D_obzor  = 6;  
       if (TNO_Timp==7)      D_obzor  = 8;  
             
       TST_Dni = 15;
       
       TimpIZ_TST = Timp_TST;
       TimpPR_TST = Timp_TST-8;
     }

	   
	   MU_TEST(0); 
	   
	   INIT_START_PACHKA ('t');
}
  
 
 void Packet_TNC1(unsigned int zetta, Sintez_struct *  S )  
//������������ ������ ��������� � �������������� ���������� ��� ��� ,
// � �������������� ��� ������������ ��� � ���
// � ...
{
 tst_time4=*pTIMER2_COUNTER; 
 
unsigned int time1=0,time2=0;  //���������� �������
unsigned int time3=0,time4=0;  //���������� �������
unsigned int r1,r2,r3,r4,r5;
unsigned int   sz_g=0;  //�������� ������� ��������
unsigned int   sz_i=0;  //�������� ������� ���������

unsigned int   t_k=26; //������� ������������� �������
unsigned char  tk=0;  //��������������� ����������
unsigned char  n_i=0,n_g=0;  //��������������� ����������
unsigned int i,j,k,l,p;


volatile unsigned int   tin_k=0;  //�������� ���������
volatile unsigned int   tik_k=0;  //�������� ���������
volatile unsigned int   tpn_k=0;
volatile unsigned int   tpk_k=0;
volatile unsigned int  tdds_k=0;
volatile unsigned int   tno_k=0;
volatile unsigned int   tnc_k=0;

 u32 f1,f2,fn,ft1,fpr1,fpr2;
 u32 F1s,F2s,F3s;
 u32 dF1s,dF2s,dF3s;
 u32 F1g,F2g,F3g;
 u32 dF1g,dF2g,dF3g;
 u32 Fdk,Fdp;
 u64 v1 = 15625;//2-10
 u64 v2 = 62500;//2-32

 //double v1 = 15.2587890625;
 //double v2 = 0.000014551915228366851806640625;

 Alfa=zetta;

    S->index_Evnt_Izl=0;
    S->index_Evnt_Get=0;

    S->FLAG_Evnt_Izl =0;
    S->FLAG_Evnt_Get =0;

    S->TNO_a [0]=0xffffffff;
    S->TNC_a [0]=0xffffffff;
	S->TNC_a [1]=0xffffffff;
    S->TOBM_a[0]=0xffffffff;

   tin_k=0u;  //�������� ���������
   tik_k=0u;  
   tpn_k=0u;
   tpk_k=0u;
  tdds_k=0u;
   tno_k=0u;
   tnc_k=0u;

//-------------------------------------------
   //������������� ������������� �������� � ����� ��������� ������ ���������

   S->index_TNO =0u;  //������� �������� ���������
   S->index_TNC =0u;
   S->index_TNI =0u;
   S->index_TKI =0u;
   S->index_TNP =0u;
   S->index_TKP =0u;
   S->index_TOBM=0u;
   
   for (i=0;i<BUFFER_p;i++)
   {
	 S->TNI_a[i]=0xffffffff; 
     S->TKI_a[i]=0xffffffff;
     S->TKP_a[i]=0xffffffff;
     S->TNP_a[i]=0xffffffff;  
   }
   

//------------- ������ ��� ---------------------------------
if ((flag_TNO_TRUE==1u)||(flag_first_TNO>0u)) 
	{
  	 TNO_work1=Mem1.Kod_Do*1000000;		 // ��� �� ����������� ������ ��� ������������ ���
	 TNO_work2=TNO_work1;
	 TNO_mem = TNO_work1; //���������� ����� �����
	 flag_TNO_TRUE=0u;    // ����� ����� ��� �� ����� ���
	 flag_first_TNO=0u;  //����� ����� ��� �� ������������� � �������� ������
	 FLAG_TKP_TNO_TRUE=1u;
	} else flag_TNO_TRUE=0u;
//-------------------------------------------------------------------------------------------
 if ((Metka_F==1)||(Metka_F==2)) TNO_work2=0xafffffff; //��� �������

   SYNC_T0Tnc=1u;
 
 if  ((SYNC_T0Tnc==1u)&&(START_packet==1u)) 
		{	    
			Alfa=Alfa+144u;
		}


//--------------------------------
if (FLAG_ERR_TKP==0)  {S->TKP_a[tpk_k]=Alfa-8;} else {S->TKP_a[tpk_k]=0xafffffff;FLAG_ERR_TKP=0;}
if (tpk_k<BUFFER_max) tpk_k++;
//--------------------------------
 S->TNC_a[0]=Alfa;  // ��������� ������ ���  - ������ �����
 
//*******************������ ����� ������� ����� 1 ***********************

 Pii =8* Mem1.Kod_Dii;  // �������� ������� �� ��� �� ���
 Pni =8* Mem1.Kod_Dni;  // �������� ������� ������������� ������������ ���������� �������� ���, ���� �� �������� ���
 Pnp =8* Mem1.Kod_Dnp;  //�������� ������� ����� ��� � ���
 Pip =8*(Mem1.Kod_Dip+16);  // �������� ������, ������������ ������������ ������.

 Ntc=Mem1.Kod_Dm;  //��� ���������� ������ � �����
 P0 =Mem1.Kod_Do;  //��� ������������ ������ D�
 
 tst_Kod_Dii = Mem1.Kod_Dii;
 tst_Kod_Dip = Mem1.Kod_Dip;
 
//---------------------------------------
 if (Metka_F==1)  Pii = 1000;//��� �������
 if (Metka_F==2)  Pii = 999999999;
 if (Metka_F==1)  Pip = 999999999;
//---------------------------------------
  DDS_delay = 56;//

  if (Dop_interval==1)

  {    

     Beta=DDS_delay+Alfa;

     S->TNP_a[tpn_k]=Beta;
 //--------����������--------------
           
      S->SG_cond [0]=1;  //����� ������������ ��������  ���� - ���� �������� 1 - ������ ��� �������������
      S->SG_RamRT[0]=0;  //������� ��� DDS
      S->SG_Delta[0]=0;  //��� ����������� �������
      S->SG_F    [0]=Mem1.Kod_Dchk;  //������� ������� ����������
      S->SG_Time [0]=dT_kalibrovka;  // ������������ ����������
	   
      sz_g=sz_g+1u;
	 
	 S->Event_GET[0] = sz_g; //������� �������

     tst_Kod_Dchk=Mem1.Kod_Dchk; //f��  
 //--------------------------------

      Beta=Beta+dT_kalibrovka;

      S->TKP_a[tpk_k]=Beta;

      Beta=Beta+DDS_delay; //

    if (tpn_k<BUFFER_max)   tpn_k++; else FLAG_ERROR_Nimp++;
    if (tpk_k<BUFFER_max)   tpk_k++; else FLAG_ERROR_Nimp++;

      S->TNP_a[tpn_k]=Beta;

      //--------���� ������--------------
      
      S->SG_cond [1]=LCHM_pomeha;   //����� ������������ ��������  ���� - ���� �������� 1 - ������ ��� �������������
      S->SG_RamRT[1]=Mem1.Kod_RAMRT_fp;   //������� ��� DDS
      S->SG_Delta[1]=Mem1.Kod_Ddelta_fp;  //��� ����������� �������
      S->SG_F    [1]=Mem1.Kod_Dchp;       //������� ������� ����� ������
      S->SG_Time [1]=dT_pomeha;           // ������������ ����� ������
	    
      sz_g=sz_g+1u;
	 
 	  S->Event_GET[1] = sz_g;
      
	  tst_Kod_Dchp=Mem1.Kod_Dchp; //f�� 
      
      //--------------------------------

      Beta=Beta+dT_pomeha;

      S->TKP_a[tpk_k]=Beta;

      Alfa=Beta;

      if (tpn_k<BUFFER_max) tpn_k++; else FLAG_ERROR_Nimp++;
      if (tpk_k<BUFFER_max) tpk_k++; else FLAG_ERROR_Nimp++;
  } else 
        {
          sz_g = 2;
          S->index_Evnt_Get=2;
        }
  //---------------------------------
  //--------���������----------
      S->SI_cond [0]=(SYNC_PILA<<2)+LCHM_I_type;   //����� ������������ ��������  ���� - ���� �������� 1 - ������ ��� �������������
      S->SI_RamRT[0]=Mem1.Kod_RAMRT_fi;   //������� ��� DDS
      S->SI_Delta[0]=Mem1.Kod_Ddelta_fi;  //��� ����������� �������
      S->SI_F    [0]=Mem1.Kod_Dchi;       //������� ������� ���������
      S->SI_Time [0]=Pii;                 // ������������ ���������
	  
	  tst_Kod_Dchi=Mem1.Kod_Dchi; // 

  //--------���������----------
      S->SG_cond [2]=(SYNC_PILA<<2)+LCHM_G_type;   //����� ������������ ��������  ���� - ���� �������� 1 - ������ ��� �������������
      S->SG_RamRT[2]=Mem1.Kod_RAMRT_fg;   //������� ��� DDS
      S->SG_Delta[2]=Mem1.Kod_Ddelta_fg;  //��� ����������� �������
      S->SG_F    [2]=Mem1.Kod_Dchg;       //������� ������� ����������
      S->SG_Time [2]=Pip;                 // ������������ �����
	  
	  tst_Kod_Dchg=Mem1.Kod_Dchg; //f� 
	  
	Alfa = Alfa + Pni - 16;  
	         
  for (i=0u;i<(Mem1.Kod_DN+1u);i++)
   {
     //--------���������----------
        if ((WORK_TU_FLAG=='t')&&(Mem1.Kod_Dchi==0)) { time1=Alfa ;  csync();  time2=time1;}

        else 

        {
         time1=16+Alfa ;
         csync();
         time2=time1+Pii;
		 
		 sz_i=sz_i+1u;
       
            S->TNI_a[tin_k]=time1; 
            S->TKI_a[tik_k]=time2;
         
            if (tin_k<BUFFER_max) tin_k++; else FLAG_ERROR_Nimp++;
            if (tik_k<BUFFER_max) tik_k++; else FLAG_ERROR_Nimp++;
         }  

      //--------���������----------

        time3=time2+Pnp;
		csync();
        time4=time3+Pip;
		
		sz_g=sz_g+1u;
  
    if (FLAG_ERR_TNP==0)    {S->TNP_a[tpn_k]=time3;} else {S->TNP_a[tpn_k]=0xafffffff;FLAG_ERR_TNP=0;}

    if (FLAG_ERR_TKP==0)    {S->TKP_a[tpk_k]=time4;} else {S->TKP_a[tpk_k]=0xafffffff;FLAG_ERR_TKP=0;}
	
         if (tpn_k<BUFFER_max) tpn_k++; else FLAG_ERROR_Nimp++;
         if (tpk_k<BUFFER_max) tpk_k++; else FLAG_ERROR_Nimp++;

        Alfa=time4;
}  

   S->Event_IZL[0] = sz_i; //��������� �� ����� ��������� � ������� ���������� ��������� ��� �������
   S->Event_GET[2] = sz_g;

//*******************������ ����� ������� ����� 2 ***********************

if (Mem1.Kod_Dm>0u)  //���� ������ ������ ������
{
 
   Pii =8*Mem1.Kod_Dii2;  // �������� ������� �� ��� �� ���
   Pni =8*Mem1.Kod_Dni2;  // �������� ������� ������������� ������������ ���������� �������� ���, ���� �� �������� ���
   Pnp =8*Mem1.Kod_Dnp2;  // �������� ������� ����� ��� � ���
   Pip =8*(Mem1.Kod_Dip2+16);  // �������� ������, ������������ ������������ ������.

//--------���������----------
      S->SI_cond [1]=(SYNC_PILA2<<2)+LCHM_I_type2;   //����� ������������ ��������  ���� - ���� �������� 1 - ������ ��� �������������
      S->SI_RamRT[1]=Mem1.Kod_RAMRT_fi2;   //������� ��� DDS
      S->SI_Delta[1]=Mem1.Kod_Ddelta_fi2;  //��� ����������� �������
      S->SI_F    [1]=Mem1.Kod_Dchi2;       //������� ������� ���������
      S->SI_Time [1]=Pii;                 // ������������ ���������

//--------���������----------
      S->SG_cond [3]=(SYNC_PILA2<<2)+LCHM_G_type2;   //����� ������������ ��������  ���� - ���� �������� 1 - ������ ��� �������������
      S->SG_RamRT[3]=Mem1.Kod_RAMRT_fg2;   //������� ��� DDS
      S->SG_Delta[3]=Mem1.Kod_Ddelta_fg2;  //��� ����������� �������
      S->SG_F    [3]=Mem1.Kod_Dchg2;       //������� ������� ����������
      S->SG_Time [3]=Pip;                 // ������������ �����

Alfa = Alfa + Pni - 16; 	  
	  
for (i=0;i<(Mem1.Kod_DN+1u);i++)
   {

    time1=16+Alfa ;
	csync();
    time2=time1+Pii;

   //--------���������----------
    
    S->TNI_a[tin_k]=time1;
	csync();	
    S->TKI_a[tik_k]=time2;
	
	sz_i=sz_i+1u;
   
    time3=time2+Pnp;
	csync();
    time4=time3+Pip;
   
    if (tin_k<BUFFER_max) tin_k++; else FLAG_ERROR_Nimp++;
    if (tik_k<BUFFER_max) tik_k++; else FLAG_ERROR_Nimp++;

    //--------���������----------

    S->TNP_a[tpn_k]=time3;
	csync();
    S->TKP_a[tpk_k]=time4;
	
	sz_g=sz_g+1u;

    if (tpn_k<BUFFER_max) tpn_k  ++; else FLAG_ERROR_Nimp++;
    if (tpk_k<BUFFER_max) tpk_k  ++; else FLAG_ERROR_Nimp++;

    Alfa=time4;

   }  

 }
 
   S->Event_IZL[1] = sz_i; //��������� �� ����� ��������� � ������� ���������� ��������� ��� �������
   S->Event_GET[3] = sz_g;

 //*******************������ ����� ������� ����� 3 ***********************

if (Mem1.Kod_Dm>1u)  //���� ������ ������ ������

{

   Pii =8*Mem1.Kod_Dii3;  // �������� ������� �� ��� �� ���
   Pni =8*Mem1.Kod_Dni3;  // �������� ������� ������������� ������������ ���������� �������� ���, ���� �� �������� ���
   Pnp =8*Mem1.Kod_Dnp3;  //�������� ������� ����� ��� � ���
   Pip =8*(Mem1.Kod_Dip3+16);  // �������� ������, ������������ ������������ ������.

//--------���������----------
      S->SI_cond [2]=(SYNC_PILA3<<2)+LCHM_I_type3;   //����� ������������ ��������  ���� - ���� �������� 1 - ������ ��� �������������
      S->SI_RamRT[2]=Mem1.Kod_RAMRT_fi3;   //������� ��� DDS
      S->SI_Delta[2]=Mem1.Kod_Ddelta_fi3;  //��� ����������� �������
      S->SI_F    [2]=Mem1.Kod_Dchi3;       //������� ������� ���������
      S->SI_Time [2]=Pii;                 // ������������ ���������

  //--------���������----------
      S->SG_cond [4]=(SYNC_PILA3<<2)+LCHM_G_type3;   //����� ������������ ��������  ���� - ���� �������� 1 - ������ ��� �������������
      S->SG_RamRT[4]=Mem1.Kod_RAMRT_fg3;   //������� ��� DDS
      S->SG_Delta[4]=Mem1.Kod_Ddelta_fg3;  //��� ����������� �������
      S->SG_F    [4]=Mem1.Kod_Dchg3;       //������� ������� ����������
      S->SG_Time [4]=Pip;                 // ������������ �����

Alfa = Alfa + Pni - 16; 
	  
for (i=0;i<(Mem1.Kod_DN+1u);i++)
   {

		time1=16+Alfa ;
		time2=time1+Pii;
	   //--------���������----------
	 
		S->TNI_a[tin_k]=time1;
		csync();
		S->TKI_a[tik_k]=time2;
		
		sz_i=sz_i+1u;

		time3=time2+Pnp;
		csync();
		time4=time3+Pip;

		if (tin_k<BUFFER_max) tin_k++; else FLAG_ERROR_Nimp++;
		if (tik_k<BUFFER_max) tik_k++; else FLAG_ERROR_Nimp++;
		//--------���������----------
  
		S->TNP_a[tpn_k]=time3;
		csync();
		S->TKP_a[tpk_k]=time4;
		
		sz_g=sz_g+1u;

		if (tpn_k<BUFFER_max) tpn_k  ++; else FLAG_ERROR_Nimp++;
		if (tpk_k<BUFFER_max) tpk_k  ++; else FLAG_ERROR_Nimp++;

		Alfa=time4;

	   }  

  }
  
   S->Event_IZL[2] = sz_i; //��������� �� ����� ��������� � ������� ���������� ��������� ��� �������
   S->Event_GET[4] = sz_g;

  //tpk_k--;
  //tik_k--;
    
	
 index_END_TKP_form = tpk_k;
 index_END_TKI_form = tik_k;

if (WORK_TU_FLAG!='t') S->TOBM_a[0]=Alfa-110; //��������� �������� ������ , �� �� ������� ����� ������ ���������� �����
else S->TOBM_a[0]=Alfa-125;

Alfa = Alfa + 8;

S->TNC_a[1]=Alfa;

Time_before_TOBM_1 = S->TOBM_a[0] - zetta - 3000;

//Delta_TNC_old = Delta_TNC;
Delta_TNC = (Alfa - zetta);

csync();
  tst_time5=*pTIMER2_COUNTER; 
csync();
  //----------------------- ���������� ���������� -------------

   TEST_TKI=0;
   sch_INT=0;  
}


 void VCU_sinh_form (void)
 {
	u32 TNC_temp;
	
	 tst_time8=*pTIMER2_COUNTER;
	 TNC_temp =TNC_actual+1;
		
	if (flag_packet_OK_for_read==1) 
		{		  
	 	  index_rd=packet_SORT(CEV_actual,TNC_temp,0); //����� ������ � ������

		  if (index_rd<Index_BUF) packet_TRSL (index_rd,Pkt);  //��������� �������� ������
		  else if (FLAG_EXTRA_PACKET==1) packet_TRSL (0,Pkt_0);
																			
		   flag_packet_OK_for_read=0; //����� ��������� , ���� ����
		}

   tst_time9=*pTIMER2_COUNTER;
 }
 
unsigned int BUF_SEARCH(unsigned int CEVn,unsigned int TNCn,unsigned char a)

{
	unsigned int i;
	unsigned int index=0;
	char flag=0;
	unsigned int   TNC_min=9999999;
	unsigned int   TNO_min=9999999; 
	unsigned int   TNC_max=0;
	unsigned int   TNO_max=0; 
	

	if (a==0u)
	{
		for (i=0u;i<Index_BUF;i++)
		{
			Event_Synhron (); //��������� ��������� ���������� ����������

			if ((CEVn==Pkt[i].SEV)&&(TNCn==Pkt[i].TNC))    //����� ������ �  ���������� ��� � ��� ((TNOn==Pkt[i].TNO)&&(TNCn==Pkt[i].TNC)) 
			{
				index = i;
				flag=1; //������ �����- ������ ����
				i=Index_BUF;
			}
		}
		
	}
	
	
	if (flag!=1) index = 0xffffffff; 	
		 return index;
}

 
unsigned int packet_SORT(unsigned int CEVn,unsigned int TNCn,unsigned char a)

{
	unsigned int i;
	unsigned int index=0;
	char flag=0;
	unsigned int   TNC_min=9999999;
	unsigned int   TNO_min=9999999; 
	unsigned int   TNC_max=0;
	unsigned int   TNO_max=0; 
	

	if (a==0u)
	{
		for (i=0u;i<Index_BUF;i++)
		{
			Event_Synhron (); //��������� ��������� ���������� ����������

			if ((CEVn==Pkt[i].SEV)&&(TNCn==Pkt[i].TNC))    //����� ������ �  ���������� ��� � ��� ((TNOn==Pkt[i].TNO)&&(TNCn==Pkt[i].TNC)) 
			{
				index = i;
				flag=1; //������ �����- ������ ����
				i=Index_BUF;
			}
		}
		if (flag==0) 
			{
				FLAG_VCU_SYNC_ERROR++;//���� ������ - ���������� ����� ���������� ��� � ������ ����� �������� �������� ���
				if (FLAG_ERROR_SYNC_VIEV==1)
				{
					put_str1("\r\n");
					u_out("TNCn_error: ",TNCn);
					u_out("CEVn_error: ",CEVn);
		    	    //u_out("sch_sync_ethernet:",sch_sync_ethernet); 
				}
				//flag_START_pachka_SINTEZ=0; //������������� ������ ��������������!!!
			} 
		else 
		{
			TNO_actual = Pkt[index].TNO;
			sch_sync_ethernet++;
		}
	}
	
	if ((flag==1)&&(flag_sync_ETHERNET==0)&&(flag_sync_ETHERNET_DISP==0)) 
			{
			
				put_str1("\r ������� ������������� � ���:");
				put_str1("������� :) \r");
				put_str1("\r");
				put_str1("������������ ������� ���\r");
				u_out("TNO_actual: ",TNO_actual);
				u_out("TNC_actual: ",TNC_actual);
				u_out("���: ",CEV_actual);
				/*
				Transf("Index: ");
		   	sprintf(strng,"%u",index);
		    Transf(strng);
			  Transf("\r\n");	 
				*/	
				flag_sync_ETHERNET=1;
				flag_sync_ETHERNET_DISP=1; 

				// pachka_monitor();

				//-------------------------
				//flag_START_pachka_SINTEZ=0; //������������� ������ ��������������!!!
							
			}

	if (flag!=1) index = 0xffffffff; 	
		 return index;
}

  void MU_TEST(u8 z)
{

unsigned char u=0;

double f1,f2,fn,ft1,fpr1,fpr2;
double Dev;
double v1,v2,v3;

double dFo=0;
double N_step=0;
double delta_F=0;
double ratio=0;
u8 RAMRT=1;
unsigned int fP,fN;
u64 FS = 400000000;

u64 L1=0;
u64 L2=0;

 //tst_time1=Time_real(0);

 LCHM_pomeha=1;//������������ ��������
 LCHM_osnv  =1;//���� ��������
 LCHM_osnv2 =1;
 LCHM_osnv3 =1;
 LCHM_I_type=1;//������������� �������� (0 - �������������)
 LCHM_G_type=1;
 
 
 
  L1 = ((Fcalibrovka-360000000)*0xFFFFFFFF)/FS;
  Mem1.Kod_Dchk = L1;

//----------������ ���������� �������� ����� ������      ------------
  L1 = ((Fpomehi-360000000)*0xFFFFFFFF)/FS;
  Mem1.Kod_Dchp = L1;
  
  dFo = (double)(DevFpomehi); // ������� ������
  N_step = (dT_pomeha * 100);// ���������� ����� ������������
  ratio = dFo/N_step;
  
  if (ratio<1) RAMRT=255;  else RAMRT=100;
  Mem1.Kod_RAMRT_fp = RAMRT;
  
  delta_F = (RAMRT*10.73741824*ratio);
  fN = ((unsigned int) delta_F)+1;

  Mem1.Kod_Ddelta_fp = fN;

//----------������ ���������� �������� ��������� � ����������------------

  L1 = ((F0_FS_TST-400000000)*0xFFFFFFFF)/FS;
  L2 = ((F0_FG_TST-360000000)*0xFFFFFFFF)/FS;
  
  Mem1.Kod_Dchi = L1;
  Mem1.Kod_Dchg = L2;
  
  F_comp_tst (Mem1.Kod_Dchi);
  
  if (SYNC_PILA==1) 
  {
	TimpIZ_TST = (Timp_TST*Nimp_TST*2)-Timp_TST;
    TimpPR_TST = (Timp_TST*Nimp_TST*2)-Timp_TST;  
  } else
  {
	TimpIZ_TST = Timp_TST;
	TimpPR_TST = Timp_TST;  
  }

  dFo = (double)(DevF_TST); // ������� ������
  N_step = (TimpIZ_TST * 100);// ���������� ����� ������������
  ratio = dFo/N_step;
  
  if (ratio<1) RAMRT=255; else RAMRT=100;
  
  Mem1.Kod_RAMRT_fi = RAMRT;
  Mem1.Kod_RAMRT_fg = RAMRT;
  
  delta_F = (RAMRT*10.73741824*ratio);
  fN = ((unsigned int) delta_F)+1;

  Mem1.Kod_Ddelta_fi=fN;
  Mem1.Kod_Ddelta_fg=fN;
    
  TimpIZ_TST = Timp_TST;
  TimpPR_TST = Timp_TST;

if (displey) 
  {
    put_str1("\r");
    u_out("F0_FG_TST         :",F0_FG_TST);
    u_out("F0_FS_TST         :",F0_FS_TST);
    u_out("LCHM_osnv         :",LCHM_osnv);
    u_out("Mem1.Kod_Dchk     :",Mem1.Kod_Dchk);
    u_out("Mem1.Kod_Dchp     :",Mem1.Kod_Dchp);
    u_out("Mem1.Kod_Dchi     :",Mem1.Kod_Dchi);
    u_out("Mem1.Kod_Dchg     :",Mem1.Kod_Dchg);
    u_out("Mem1.Kod_Ddelta_fi:",Mem1.Kod_Ddelta_fi);
    u_out("Mem1.Kod_Ddelta_fp:",Mem1.Kod_Ddelta_fp);
    displey=0u;
   }

  //sinc_type	= 3; //��� ��������������� ��������� � � �������������� ��� ������������ ���   3
	sinc_type	= 2;    //c �������������� ���������� � �������������� ��� ������������ ���;   
  //Nimp_TST = 1;
	
  Mem1.Kod_Dii           = TimpIZ_TST/8;
  Mem1.Kod_Dni           = TST_Dni;
  Mem1.Kod_Dnp           = TST_Dnp;
		
  Mem1.Kod_DN            =  Nimp_TST-1;
  Mem1.Kod_Dip           = (TimpPR_TST/8)-16;
  Mem1.Kod_Dm            = N_tempov;	//��� ����� ������ ���������(������)

  Mem1.Kod_Do=D_obzor;
  TNO_width           = Mem1.Kod_Do;//������������ �������� ���
 
/* 
if ((FLAG_EXTRA_PACKET==1)||(flag_sync_ETHERNET==1))
{
		Mem1.Kod_Dchi=tst_Kod_Dchi; // 
		Mem1.Kod_Dchg=tst_Kod_Dchg; //f� 
		Mem1.Kod_Dchp=tst_Kod_Dchp; //f�� 
		Mem1.Kod_Dchk=tst_Kod_Dchk; //f�� 

		Mem1.Kod_RAMRT_fi = tst_Kod_RAMRT_fi;
    Mem1.Kod_Ddelta_fi= tst_Kod_Ddelta_fi;
  
    Mem1.Kod_RAMRT_fg = tst_Kod_RAMRT_fg;
    Mem1.Kod_Ddelta_fg= tst_Kod_Ddelta_fg;

    Mem1.Kod_RAMRT_fp = tst_Kod_RAMRT_fp; 
    Mem1.Kod_Ddelta_fp= tst_Kod_Ddelta_fp;

	  //Mem1.Kod_Dii = tst_Kod_Dii;
	  //Mem1.Kod_Dip = tst_Kod_Dip;
} 
*/
if (z==0)
{
	Mem1.Kod_Kp_hour       = 0;
	Mem1.Kod_Kp_day        =23;
	Mem1.Kod_Dn1           = 0;
	Mem1.Kod_Krp           =13;
	Mem1.Kod_Kp            = 0;
	Mem1.Kod_zameny        = 0;
	Mem1.KCH_OZU           = 0;
	Mem1.Kol_error         = 0;
	Mem1.Nomer_prov_cepi   = 0;
	Mem1.Kod_error         = 0;
	
//	Mem1.Zadano_off        = 0xc;
//	Mem1.Zadano_GBR        = 0xc;
//	Mem1.Zadano_BR         = 0x5;
//	Mem1.Zadano_CU_MU      = 0xc;
	
	//~~~~~~~~~~~~~~~~~~~~~~~~~~2-� �������~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	
  L1 = ((F1_FS_TST-400000000)*0xFFFFFFFF)/FS;
  L2 = ((F1_FG_TST-360000000)*0xFFFFFFFF)/FS;
  
  Mem1.Kod_Dchi2 = L1;
  Mem1.Kod_Dchg2 = L2;

  Mem1.Kod_RAMRT_fi2 = RAMRT;
  Mem1.Kod_RAMRT_fg2 = RAMRT;

  dFo = (double)(DevF_TST); // ������� ������
  N_step = (TimpIZ_TST * 100);// ���������� ����� ������������
  ratio = dFo/N_step;

  delta_F = (RAMRT*10.73741824*ratio);
  fN = ((unsigned int) delta_F)+1;

  Mem1.Kod_Ddelta_fi2=fN;
  Mem1.Kod_Ddelta_fg2=fN;
	
  Mem1.Kod_Dii2             =TimpIZ_TST/8;
  Mem1.Kod_Dni2             =TST_Dni;
  Mem1.Kod_Dnp2             =TST_Dnp;
  Mem1.Kod_Dpp2             =0;
  Mem1.Kod_Dn2              = Nimp_TST-1;
  Mem1.Kod_Dip2             =(TimpPR_TST/8)-16;
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//~~~~~~~~~~~~~~~~~~~~~~~~~~3-� �������~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	
  L1 = ((F2_FS_TST-400000000)*0xFFFFFFFF)/FS;
  L2 = ((F2_FG_TST-360000000)*0xFFFFFFFF)/FS;
  
  Mem1.Kod_Dchi3 = L1;
  Mem1.Kod_Dchg3 = L2;

  Mem1.Kod_RAMRT_fi3 = RAMRT;
  Mem1.Kod_RAMRT_fg3 = RAMRT;

  dFo = (double)(DevF_TST); // ������� ������
  N_step = (TimpIZ_TST * 100);// ���������� ����� ������������
  ratio = dFo/N_step;

  delta_F = (RAMRT*10.73741824*ratio);
  fN = ((unsigned int) delta_F)+1;

  Mem1.Kod_Ddelta_fi3=fN;
  Mem1.Kod_Ddelta_fg3=fN;
	
  Mem1.Kod_Dii3             =TimpIZ_TST/8;
  Mem1.Kod_Dni3             =TST_Dni;
  Mem1.Kod_Dnp3             =TST_Dnp;
  Mem1.Kod_Dpp3             =0;
  Mem1.Kod_Dn3              = Nimp_TST-1;
  Mem1.Kod_Dip3             =(TimpPR_TST/8)-16;
	
 }
}

void TIME_coder (unsigned int t)
{
 
}



u32 TNC_rcv (unsigned char* sr,unsigned int lsr )
{
unsigned int i,l=0,k=0,m=0,j=0;
unsigned char m1,m2;
u32 TNC_l=0;
u32 TNO_l=0;
	
	for (i=0u;i<lsr;i++)
            {                      
				m=3-l;
                packet[m][k]=sr[i];
                l=l+1;  
                if (l==4) {l=0; k=k+1;}
            }
			
  for (i=0u;i<30u;i++)  //������������ ������ �� �������� �������
            {
        		m1=packet[0][i];
        		m2=packet[2][i];
        				
        		packet[0][i]=packet[1][i];
        		packet[2][i]=packet[3][i];
        				
        		packet[1][i]=m1;
        		packet[3][i]=m2;
			}
 
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

    TNO_l =(packet[0][2]<< 8)+(packet[1][2]<< 0)+(packet[2][2]<<16)+(packet[3][2]<<24);
    TNC_l =(packet[0][3]<< 8)+(packet[1][3]<< 0)+(packet[2][3]<<16)+(packet[3][3]<<24);
	
	return TNC_l;
}


void buf_txt (uint8 * a,u32 n)
{
	u32 i=0;
	u32 l=0;

	put_str1("-----------\r\n"); 	
	for (i=0;i<n;i++)
	{
		put_str1 (" ");
		sprintf (strng,"%X",a[i]);
		put_str1(strng);
		
		//if (a[i]>15u) put_str1(".."); else put_str1("...");
        //if (l==20) {put_str1("\r\n");}
		//if (l <20) l++; else l=0;	
	}	
	put_str1("\r\n");

}

u32 CEV_rcv (unsigned char* sr,unsigned int lsr )
{
unsigned int i,l=0,k=0,m=0,j=0;
unsigned char m1,m2;
u32 TNC_l=0;
u32 CEV_l=0;

    CEV_l = (sr[0]<<24)+(sr[1]<<16)+(sr[2]<<8)+(sr[3]<<0);
			
	return CEV_l;
}

void INF_ANALIZ (unsigned char *t,u8 n,u16 crc_rcv)
{
  u16 i=0;
  u16 crc_reg=0;
  u16 crc_reg2=0;
  u16 crc_reg3=0;
  u32 TNC_fact=0;
  u32 CEV_recv=0;

  FLAG_SCH_RS485_PACKET++;
  
  for (i=0;i<n;i++)
  {
    crc_reg = crc_reg+((u8)t[i]);
  }
  //u_out("������ ����� :",n);
  /*
  if (TNC_actual == test_TNC)
  {
	u_out("��������� CRC:",crc_reg);
	u_out("��������  CRC:",crc_rcv);
  }
 */

  if (crc_reg==crc_rcv)  
  {
    FLAG_CRC_OK = 1;
    FLAG_SCH_RS485_OK_PACKET++;

    if (n<20u) {Time_SEV_INF (t,n);FLAG_SCH_SEV_pachka++;} //���� ������ ��������� ����� - ��� ���
    else
		if (n==144)
		{
		   for (i=0u;i<144u;i++)
		  {
			 ZX_BUF[i]=(u8)t[i]; 
		  }
		
			FLAG_SCH_KUK_pachka++;
		    KUK_IO(ZX_BUF,n); //  ���� ������� - ��� ������� �����
			TNC_fact = TNC_rcv (ZX_BUF,144);
			//CEV_recv = CEV_rcv (ZX_BUF,144);
	   	     //n_out("",TNC_fact);
		     //u_out(":",CEV_recv);
		   // buf_txt(ZX_BUF,144);
		}
  }
  else 
  {
    FLAG_SCH_CRC485_BAD++;
    FLAG_CRC_OK = 0;//������� CRC
  }

}

void INF_UART_SRV2 (u8 *t,u8 n,u8 adr)
{
  u16 i=0;
  char crc=0;
  char a[1];
  char b[1];
  char c[1];

  //TX_485;
 
	n=32;
 
  a[0] = n; //���������� ������ � ������

  for (i=0;i<n;i++)
  {
    crc = crc^t[i];
  }

  b[0] = crc;
  
  FLAG_SCH_TX485++;

  //u_out("��������� CRC:",crc);

  if (adr==1)  Transf("~7 INF$"); else  //"~7 INF$"
  if (adr==0)  Transf("~1 INF$"); 
  ZTransf(a,1u);
  Transf(":");
  ZUTransf(t,n);
  Transf(".");
  ZTransf(b,1u);
  Transf(";\r\n");
    
}


  u8 mz_rzv=0;
 
void Info_back_Ethernet (void)

{

  unsigned int i=0;
  unsigned int k=0;
  unsigned int l=0;
  unsigned char tst;
  u8 FLAG_SYNC_UDP=0;
//------------������������ �������� ���������-------------
  Norm_ohlagdeniya=Mem_K615.Ohl;
  
  GBR=Mem_K615.GBR;
  if (Mem_K615.GBR==0x1) GBR=0x2;
  if (Mem_K615.GBR==0x2) GBR=0x1;

  BR =Mem_K615.BR;
  if (Mem_K615.BR==0x1) BR=0x2;
  if (Mem_K615.BR==0x2) BR=0x1;

 // ��� 11 - �� ����� � ��������, ��� 00 - �� ����� � ��������, ��� 01 - �� ��������, �� �����, ��� 10 - �� ��������, �� �����.

  CU_MU = Mem_K615.VCU;
  if (Mem_K615.VCU==0x1) CU_MU=0x2;
  if (Mem_K615.VCU==0x2) CU_MU=0x1;

  Vikl = Mem_K615.VYKL; //11 - : ��� 11 - ������� ������ � ���������, ��� 00 - ��� ������� � ���������� �������, ��� 01 - ��� ���������� �������, ��� 10 - ��� ������� �������.
  if (Mem_K615.VYKL==0x1) Vikl=0x2;
  if (Mem_K615.VYKL==0x2) Vikl=0x1;  

  PriemNi = 0 ;
  Code_error = 0;
  T_norma=1;
  Pred_avariya=0;
/*
  Norma_amplifer=  (RAB_KAN_1FT<<0)|  //����� �������� ���������� ��
                   (RAB_KAN_2FT<<1)|
                   (RAB_KAN_3FT<<2)|
                   (RAB_KAN_4FT<<3)
                   ;


  Nomer_rezer_amplifer_FT=(AVARIYA_KAN_1_FT<<0)|  //����� ��������� ���������� ��
                          (AVARIYA_KAN_2_FT<<1)|
                          (AVARIYA_KAN_3_FT<<2)|
                          (AVARIYA_KAN_4_FT<<3)
                                              ;
*/

Norma_amplifer			= FT_reg_log2&0x0f;
Nomer_rezer_amplifer_FT =(FT_reg_log2&0xf0)>>4;

  Norma_pitaniyaFT=FT_pit_log2; //����� ������� ��
                   

  Avariya_blokov=0;

  Rezerv1=0;
  Norma_IVE=1;
  Rezerv2=0;
  

  Knc_min=0;
  Knc_sec=0;
  Knc_10ms=0;
  Knc_100us=0;
  Knc_us=0;

  Mypr_min=0;
  Mypr_hour=0;
  Mypr_day=0;

  Sboy_obmena_inform=0;
  Sboy_form_interval=0;
  In_sys_Obmen_error=0;
  SintV_nesootv_zadan=0;
  Tc_2sec=0;
  RC_KTV_T5M=0;
  NNI=0;

    FAPCH_1=1;
    FAPCH_2=1;
    FAPCH_3=1;
    Zakon_modulac_kontrol=1;

    //LoK_WEB = 0x7; // 3 ���� , � - ��������� - �������� ����� �����
	if (FLAG_SCH_RS485_OK_PACKET_MAX==0) LSRZV = 0; else LSRZV = 1;//�������� ��������� ����� �����
	
	LoK_WEB =  (((~Mem_K615.NILS)&0x01)<<0)|(LSRZV<<1);//�������� ��������� ����� �����
    KFK = 0xffff;
	
	 //FLG_K601		
	 //FLG_K602		
	 //FLG_K603
     //FLG_K604			
	 //FLG_K605
	 //FLG_K607	
	 //FLG_K608	
	 //CRC_RX8 
	 
	// FLG_K611=0;//���
	// FLG_K612=0;//���������
	// FLG_K613=0;//���������
	// FLG_K614=0;//�������������
	// FLG_K615=0;//������������
	// FLG_K616=0;//������� �������
	
	FLG_K616 = 0;
	FLG_K615 = 0;//1 - ������ 0 - �� ������

	if ((FLG_K601==0)&&
		(FLG_K602==0)&&
		(FLG_K603==0)&&
		(FLG_K604==0)&&
		(FLG_K605==0)&&
		(FLG_K607==0)&&
		(FLG_K608==0)) FLG_B610=0; else FLG_B610=1;//������ ����� �������������!!!
		
	
	
	AVARIYA_B610 =~((FLG_K601<<0)|
				    (FLG_K602<<1)|
				    (FLG_K603<<2)|
				    (FLG_K604<<3)|
				    (FLG_K605<<4)|
				    (FLG_K607<<5)|
				    (FLG_K608<<6)|
				    (FLG_B610<<7)); //��� ������� ����� �610

	if ((AVARIYA_B610&0x1f)!=0x00) 
	{
		AVARIYA_flag=127;
		//put_str1("�����-�� ������ ����� �610!!!\r\n");
	}			   

	FLG_K614_1 = 0;
				   
	AVARIYA_B660 = ((FLG_K611  <<0)&(FLG_CLK<<0))|
				    (FLG_K612  <<1)|
				    (FLG_K613  <<2)|
				    (FLG_K614  <<3)|
				    (FLG_K615  <<4)|
				    (FLG_K616  <<5)|
				    (FLG_K614_1<<6)|
				    (FLG_RZV2  <<7);
	
	
	KFK_610 = 0x00;
	KFK_660 = 0x00;
	
	TEMP_B610 = FLG_K607;   
	TEMP_B660 = 1; 

  if (FLAG_VCU_SYNC_ERROR_max>0) FLAG_SYNC_UDP = 1; else FLAG_SYNC_UDP = 0;	//������ �������������  UDP
  
  KFK_660 = (FLAG_ERROR_INTERVALWORK<<1)|(FLAG_SYNC_UDP);	
	
//----------------------------------------------------------------------------------------------	
  Mem_sys.code_00h =(Code_error<<12)+(Msg_ZAPRET_REZ<<11)+(LoK_WEB<<8)+(Vikl<<6)+(GBR<<4)+(BR<<2)+(CU_MU); 
  
  Mem_sys.code_02h =(T_norma<<15)+(Pred_avariya<<14)+(TEMP_B610<<13)+(TEMP_B660<<12)+(Nomer_rezer_amplifer_FT<<8)+(Norma_amplifer<<4)+(Norma_pitaniyaFT<<0);
  
  Mem_sys.code_03h =(AVARIYA_B610<<8)+(AVARIYA_B660<<0);
  
  Mem_sys.code_04h =(KFK_660<<8) + sch_sync_ethernet_max;
   
  Mem_sys.code_05h =Alfa>>16;
  
  Mem_sys.code_06h =Alfa>>0;
  
  Mem_sys.code_07h =0x0000;
  
  Mem_sys.code_08h =0x0000;
  

  /* 
  
  
  Mem_sys.code_00h       =(Code_error<<12)+(Norm_ohlagdeniya<<11)+(PriemNi<<8)+(Vikl<<6)+(GBR<<4)+(BR<<2)+(CU_MU); 
  
  Mem_sys.code_02h       =(T_norma<<15)+(Pred_avariya<<14)+(Norma_amplifer<<10)+(Norma_pitaniyaFT<<6)+(Avariya_blokov<<0);
  
  Mem_sys.code_03h       =(TNC_actual<<7)+(Rezerv2<<6)+(Rezerv1<<5)+(Norma_IVE<<4)+(Nomer_rezer_amplifer_FT<<0);
  
  Mem_sys.code_04h       =(Msg_ZAPRET_REZ<<15)+(Rezerv3<<14)+(LoK_WEB<<12)+(KFK<<1);
  
  Mem_sys.code_05h       =CONTROL_CRC;
  
  Mem_sys.code_06h       =Alfa>>16;
  
  Mem_sys.code_07h       =Alfa>>0;
  
  Mem_sys.code_08h       =(Rezerv5<<8)+Rezerv4;
*/ 
  
  
//..............��������� ������ ��������� ��� ��������.......................

  Inf_A2[0]  = Mem_sys.code_00h>>8 ;
  
  Inf_A2[1]  = Mem_sys.code_00h ;
 
  Inf_A2[2]  = Mem_sys.code_02h>>8 ;
  
  Inf_A2[3]  = Mem_sys.code_02h ;
  
  Inf_A2[4]  = Mem_sys.code_03h>>8;
  
  Inf_A2[5]  = Mem_sys.code_03h;
  
  Inf_A2[6]  = Mem_sys.code_04h>>8;
  
  Inf_A2[7]  = Mem_sys.code_04h;
  
  Inf_A2[8]  = Mem_sys.code_05h>>8;
  
  Inf_A2[9]  = Mem_sys.code_05h;
  
  Inf_A2[10] = Mem_sys.code_06h>>8;
  
  Inf_A2[11] = Mem_sys.code_06h;
  
  Inf_A2[12] = Mem_sys.code_07h>>8;
  
  Inf_A2[13] = Mem_sys.code_07h;
  
  Inf_A2[14] = Mem_sys.code_08h>>8;
  
  Inf_A2[15] = Mem_sys.code_08h; //
   
//---------------------------------
  
//--���������� ��� �����

  TX_BUF[ 0] =  CEV_actual>>24;
  TX_BUF[ 1] =  CEV_actual>>16;
  TX_BUF[ 2] =  CEV_actual>>8;
  TX_BUF[ 3] =  CEV_actual>>0;
  TX_BUF[ 4] =  0;
  TX_BUF[ 5] =  0;
  TX_BUF[ 6] =  0;
  TX_BUF[ 7] =  0;

if (index_rd<Index_BUF)
{
//--���������� ��� �����  
  TX_BUF[11] =  Pkt[index_rd].TNC    ;
  TX_BUF[10] =  Pkt[index_rd].TNC>>8 ;
  TX_BUF[ 9] =  Pkt[index_rd].TNC>>16;
  TX_BUF[ 8] =  Pkt[index_rd].TNC>>24;
//--���������� ��� �����  
  TX_BUF[15] =  Pkt[index_rd].TNO    ;
  TX_BUF[14] =  Pkt[index_rd].TNO>>8 ;
  TX_BUF[13] =  Pkt[index_rd].TNO>>16;
  TX_BUF[12] =  Pkt[index_rd].TNO>>24;	
}  
  
  unsigned char u0=0;
  unsigned char u1=0;
  unsigned char u2=0;
  unsigned char u3=0;
 
  
  l=0;
  k=0;
  u32 p=0;
  
  for (i=16u;i<32u;i++)    //�������� ��������� � ������������ �����, ��� ������� �� UDP
  {
    p = i - 16u;

		if (l==0u) u0 = Inf_A2[p]; //��-�� ����� ��������� ��������� ������ �� ������!!!!!!
		if (l==1u) u1 = Inf_A2[p];
		if (l==2u) u2 = Inf_A2[p];
		if (l==3u) u3 = Inf_A2[p];
		
		if (l==3u) 
		{
			TX_BUF[i-3u]= u0; 
			TX_BUF[i-2u]= u1;
			TX_BUF[i-1u]= u2;
			TX_BUF[i-0u]= u3;
			
			k++;
		}
		if (l!=3u) l++; else l=0u;
	
  }

  l=0u;
  k=0u;

  for (i=32u;i<136u;i++)  //�������� �������������� ����� � ������������ �����, ��� ������� �� UDP
  {
  	if (index_rd<Index_BUF)
		{
			if (l==0u) u0 = Pkt[index_rd].A[l][k];
			if (l==1u) u1 = Pkt[index_rd].A[l][k];
			if (l==2u) u2 = Pkt[index_rd].A[l][k];
			if (l==3u) u3 = Pkt[index_rd].A[l][k];
		}

		if (l==3u) 
		{
			TX_BUF[i-3u]= u2; 
			TX_BUF[i-2u]= u3;
			TX_BUF[i-1u]= u0;
			TX_BUF[i-0u]= u1;
			
			k++;
		}
		if (l!=3u) l++; else l=0u;
  }
 
 }
 
void test_inf (void)
{
  u16 i,l=0;
  u8 u0,u1,u2,u3;
  
  put_str1("\r\n"); 
  //x_out("Code_error    :",Code_error);
  //x_out("mz_rzv        :",mz_rzv);
  x_out("LoK_WEB       :",LoK_WEB);
  x_out("Vikl          :",Vikl);
  x_out("GBR           :",GBR);
  x_out("BR            :",BR);
  x_out("CU_MU         :",CU_MU);
  x_out("T_norma       :",T_norma);
  x_out("Pred_avariya  :",Pred_avariya);
  x_out("TEMP_B610     :",TEMP_B610);
  x_out("TEMP_B660     :",TEMP_B660);
  x_out("Nomer_rezer_amplifer_FT:",Nomer_rezer_amplifer_FT);
  x_out("Norma_amplifer         :",Norma_amplifer);
  x_out("Norma_pitaniyaFT       :",Norma_pitaniyaFT);
  x_out("AVARIYA_B610:",AVARIYA_B610);
  x_out("AVARIYA_B660:",AVARIYA_B660);
  x_out("Alfa[31:16] :",Alfa>>16);
  x_out("Alfa[15: 0] :",Alfa&0xffff);
  put_str1("--------\r\n");
  
  /*
  for (i=0u;i<136u;i++)  //�������� �������������� ����� � ������������ �����, ��� ������� �� UDP
  {
  		if (l==3u) 
		{
			u2=TX_BUF[i-3u]; 
			u3=TX_BUF[i-2u];
			u0=TX_BUF[i-1u];
			u1=TX_BUF[i-0u];
			
			if (u0<16) xn_out("  ",u0); else xn_out(" ",u0);
			if (u1<16) xn_out("  ",u1); else xn_out(" ",u1);
			if (u2<16) xn_out("  ",u2); else xn_out(" ",u2);
			if (u3<16) xn_out("  ",u3); else xn_out(" ",u3);
			put_str1("\r\n");
		}
		if (l!=3u) l++; else l=0u;
  }
  put_str1("\r\n");
  put_str1("--------\r\n");
  */
}

void INIT_START_PACHKA (char l)
{
//-------------------------------------------
   //������������� ������������� �������� � ����� ��������� ������ ���������

  TNC_actual  =0; //������� ���	
  TNO_actual  =0; //������� ���
  CEV_actual  =0;
  FLAG_SYNC_SEV=0;
  sch_sync_ethernet=0; //������� ������� �������������
  flag_START_PROCESS=1; //���� ������������ ����� ������ ��� � ���
  //FLAG_EXTRA_PACKET=0;
   flag_Ethernet=1;   
   flag_Avariya_TNC=0;
     FLAG_SYNC_PF8=0;
     FLAG_SYNC_PF11=0;
      
    TIME1_PPI_START=0;
    TIME2_PPI_START=100;
    TIME3_PPI_START=1000;

    FLAG_PPI_OK=1;

     PF&(~PF11);  //��������� ������� �������� FS1 � ����
     PF&(~PF8 );  //��������� ������� �������� FS1 � ����
  
  // if (l != 'V') flag_TNO_TRUE=0;
  // if (l != 'V') flag_first_TNO=0;
   
   flag_TNO_TRUE=1;
   flag_first_TNO=1;

   flag_END_sync_packet=0;
   flag_packet_OK_for_read=1;
  
   Alfa = 0; //����� ������ ������ �����
   flag_Packet_form=0u;
   flag_TNC_UP=0;
   flag_event_sinhron=0;
   flag_dsp_ok=1;
   flag_START_pachka_SINTEZ=1;
   START_packet=1; //���� ������������ ������ ����� ������
   TNC0_packet=1;   //������ ����� �����
   flag_NUMBER_pachki=0;
   TNO_work1=0;
   //sinc_type=2; //� �������������� ���������� � �������������� ��� �� ���
  
   
   RESET_packet=1;
  
//--------------------------------------------------					   
					
    flag_PPI_sintez_unsihron_start=0;
    tst_time_max=0;
    flag_ERROR_CRC_control_word=0;
    flag_FAIL_PPI=0;
    flag_Avariya_TNC=0;
				
    Event_word=0xff; //����� ���� ������� � ����
					
		flag_TKP=0;	
		flag_TKI=0;
		flag_TNP=0;
		flag_TNI=0;
		flag_TNO=0;
		
		tst_time1=0;
        tst_time2=0;
	    tst_time3=0;
        tst_time4=0;
        tst_time5=0;
        tst_time6=0;
        tst_time7=0;
        tst_time8=0;
        tst_time9=0;
        tst_timeA=0;
        tst_timeB=0;

//-----------------------------------------------
                                     
     sch_pachek_test=0;
     sch_TNC_test=0;
   	 sch_tst_pachek=0;
     flag_PPI_sz1 =0;
     flag_PPI_sz2 =0;
     flag_PPI_sinc=1;

     sch_tst_pachek_max=0;
     sch_tst_pachek_min=999999;

     time_TNC_max=0;
     time_TNC_min=999999999;
     time_TNO_max=0;
     time_TNO_min=999999999;
                                  
     flag_1HZ_sync=0;
	   flag_STOP_ALL_WORK=0;
//----------------------------------------------------------
   if (l =='t') 
   {
   	//BUF_clear();
	FLAG_SYNC_SEV=0;
	TNC_actual  =0; //������� ���	
	TNO_actual  =0; //������� ���
	CEV_actual  =0;	
	FLAG_DSP_text_CIKL=1;
	flag_sync_ETHERNET=0;
	flag_sync_ETHERNET_DISP=0;

     WORK_TU_FLAG = 't';
     displey=1u;

     Packet_TNC1(Alfa,&Struk0);
      flag_Packet_form=2u;
	  flag_PPI_sz1=0;
	  flag_PPI_sz2=0;
	  flag_PPI_sinc++;
     Timer_INT2('c');
	 massiv_time_setka(&Struk0,Event_word);
   } else   WORK_TU_FLAG = 'w';
   
   tst_time1=0;
   timer_TNC1=0;
   Delta_TNC_work=999999999;
   Delta_TNC_old=50000;
 }

void TNO_START_PACHKA (void)
{
//-------------------------------------------
//  Transf ("TNO_�������!\r\n");
  TNC_actual=0;
  TNO_actual=0;
   //������������� ������������� �������� � ����� ��������� ������ ���������
  
  flag_START_PROCESS=0; //���� ������������ ����� ������ ��� � ���

     FLAG_SYNC_PF8=0;
     FLAG_SYNC_PF11=0;
      
    TIME1_PPI_START=0;
    TIME2_PPI_START=100;
    TIME3_PPI_START=1000;

    FLAG_PPI_OK=1;

     PF&(~PF11);  //��������� ������� �������� FS1 � ����
     PF&(~PF8 );  //��������� ������� �������� FS1 � ����
  
   flag_TNO_TRUE=1u;
   flag_first_TNO=1u;

  // flag_packet_OK_for_read=1;

   Alfa = 0; //����� ������ ������ �����
   flag_Packet_form=0u;
   flag_TNC_UP=0;
   flag_event_sinhron=0;
   flag_dsp_ok=1;
   flag_START_pachka_SINTEZ=1;
   START_packet=1; //���� ������������ ������ ����� ������
   TNC0_packet=1;   //������ ����� �����
   flag_NUMBER_pachki=0;
   TNO_work1=0;
   //sinc_type=2; //� �������������� ���������� � �������������� ��� �� ���
   
   RESET_packet=0;
  
//--------------------------------------------------					   
					
    flag_PPI_sintez_unsihron_start=0;
    tst_time_max=0;
    flag_ERROR_CRC_control_word=0;
    flag_FAIL_PPI=0;
    flag_Avariya_TNC=0;
				
    Event_word=0xff; //����� ���� ������� � ����
					
		flag_TKP=0;	
		flag_TKI=0;
		flag_TNP=0;
		flag_TNI=0;
		flag_TNO=0;
		
		tst_time1=0;
        tst_time2=0;
	    tst_time3=0;
        tst_time4=0;
        tst_time5=0;
        tst_time6=0;
        tst_time7=0;
        tst_time8=0;
        tst_time9=0;
        tst_timeA=0;
        tst_timeB=0;

    FLAG_PACKET_SEND=0;
    flag_END_sync_packet=0;
//-----------------------------------------------
                                     
     sch_pachek_test=0;
     sch_TNC_test=0;
   	 sch_tst_pachek=0;
     flag_PPI_sz1 =0;
     flag_PPI_sz2 =0;
     flag_PPI_sinc=1;
                                       
     flag_1HZ_sync=0;
	 flag_STOP_ALL_WORK=0;
//----------------------------------------------------------
   //   WORK_TU_FLAG = 'w';

    flag_UDP_OBMEN=0;

    FLAG_TST_UDP=0;
   TNC_sch_max=TNC_sch;
   TNC_sch=0;
   sch_tx_packet_max=sch_tx_packet;
   sch_sync_ethernet_max=sch_sync_ethernet;
   ssync();
   sch_tx_packet=0;                           
   sch_sync_ethernet=0; //����� �������� �������������
   sch_packet_UDP_reciv_max = sch_packet_UDP_reciv;
   ssync();
   csync();
   sch_packet_UDP_reciv = 0;
   FLAG_VCU_SYNC_ERROR_max = FLAG_VCU_SYNC_ERROR;
   FLAG_VCU_SYNC_ERROR=0;
   
   tst_time1=0;
   Delta_TNC_work=999999999;
   
   
  }
  
void PPI_sync (void)
{
 if (flag_PPI_sinc>0u)  	{ massiv_time_setka(&Struk0,Event_word);flag_PPI_sinc_D2=1;} //�������� ������� �� ���� PPI � �������������  
 //if (flag_PPI_sinc_D2==1)   { massiv_time_setka(&Struk0,Event_word);flag_PPI_sinc_D2=0;} //�������� ������� �� ���� PPI � ������������� 	
}

  
void PPI_sz1 (void)
{
 if (flag_PPI_sz1==0u)  	{ PPI_massiv('s',&Struk0); flag_PPI_sz1_D2=1;} //�������� ������� �� ���� PPI � �������������  
 //if (flag_PPI_sz1_D2==1)    { PPI_massiv('s',&Struk0); flag_PPI_sz1_D2=0;} //�������� ������� �� ���� PPI � ������������� 	
}

  
void PPI_sz2 (void)
{
 if (flag_PPI_sz2==0u)  	{ PPI_massiv('g',&Struk0); flag_PPI_sz2_D2=1;} //�������� ������� �� ���� PPI � �������������  
 //if (flag_PPI_sz2_D2==1)    { PPI_massiv('g',&Struk0); flag_PPI_sz2_D2=0;} //�������� ������� �� ���� PPI � ������������� 	
}


char Event_K615 (void)
{
 char a=0;
	
 if (flag_K615_event==1)
 {
   //TIMER_AVARIYA=9999;
      flag_K615_event=0;
      put_str1("����� �615!\r\n");
      //WORK_TU_FLAG='w'; //���� ������ ����� - �� ����������� ������ ������ (����� �� ��)
     Control_bloka (); 
 }
	return a;
}

void Control_bloka (void)
{
  control_K615(); 
}

void Ethernet_MU (void)

{
  tst_timeA=*pTIMER2_COUNTER;

  UDP_test();

 // TELNETS(1, 23); 
 if (flag_RX_UDP==1)  
  		{
			if (RX_resive_MAX<lsr_razmer)  RX_resive_MAX=lsr_razmer;
			if (lsr_razmer < 10u) Time_SEV_INF (RX_BUF,lsr_razmer); //���� ������ ��������� ����� - ��� ���
  			else KUK_IO(RX_BUF,lsr_razmer); //  ���� ������� - ��� ������� �����
			//else if (lsr_razmer==144u) KUK_IO(RX_BUF,lsr_razmer); //  ���� ������� - ��� ������� �����
			//else if (lsr_razmer!=144u) {put_str1("ERROR! ������ != 144\r\n"); help();}
				
			 TIMER_UDP_LS_DOWN=0;//�������� ������� �������� UDP ����� �����
  			 flag_RX_UDP=0;
		 if ((Mem_K615.VYKL&0x1)==0x1) {FLAG_UDP_EVENT=1;} //���������� ���� �������� ��������� � ����������� ������
  		}
  tst_timeB=*pTIMER2_COUNTER;
}


void Ethernet_OBMEN (void)
{
  //----------------------------------------------------------------------------------------------------------------------------------------------
 
   if (Master_flag==0) Info_back_Ethernet ();//���� �� ������ - ���� ��������� ���������, 
                                             //���� ��� - �������� ���������� �� RS485
   Ethernet_MU ();          //������������ ������ ��������� ��� UDP , ���������� �� ����� ������ �����
     
//-----------------------------------------------------------------------------------------------------------------------------------------------               
}


void RESTART_SYNC (void)
{
  TIME_LOCAL=0;
  TIME_WORK_CONTROL=0;
  put_str1("\r\n�������!\r\n");
  Timer_INT2('c');
  INIT_START_PACHKA ('M');
  MU_TEST(0);
  Packet_TNC1(Alfa,&Struk0);
  massiv_time_setka(&Struk0,Event_word);
  FLAG_TST_UDP=0;
}

void TNO_SYNC (void)
{
	u32 t=0;
	
  timer_TNC1=0;
   
  Event_word=Control_Impuls(&Struk0);
  massiv_time_setka(&StrukREZ,Event_word);
  TIME_LOCAL=TIME_LOCAL+(*pTIMER2_COUNTER);
  t=Timer_INT2('c'); 
  TIME_OF_SYS=TIME_OF_SYS+t;//������� �������� ������� ������� ����� �������� � ���
  TIME_OF_TNO=t;//����� ������������ ���
  TNO_START_PACHKA ();
  FLAG_PPI_OK=1;  
  CEV_actual=CEV_actual+TNO_width;
 
  MU_TEST(1);
  
  Packet_TNC1(Alfa,&Struk0);
  
  if (flag_PPI_sinc>0u) //�������� ������� �� ���� PPI � ������������� 
	  { 
		massiv_time_setka(&Struk0,Event_word);
		flag_PPI_sinc_D2=1;
	   }  

  //if (WORK_TU_FLAG=='t') control_TNC_TNO();
  
  FLAG_TNO_CONTR_1=0;
  FLAG_RS485_OBMEN=1;
  TIMER_RS485_OBMEN=0;
  
  FLAG_SCH_RS485_PACKET_MAX = FLAG_SCH_RS485_PACKET;
  FLAG_SCH_RS485_PACKET     = 0;
  
  FLAG_SCH_CRC485_BAD_MAX=FLAG_SCH_CRC485_BAD;
  FLAG_SCH_CRC485_BAD = 0;
  
  FLAG_SCH_RS485_OK_PACKET_MAX = FLAG_SCH_RS485_OK_PACKET;
  FLAG_SCH_RS485_OK_PACKET = 0;
  
  FLAG_SCH_NEW_BUF_MAX = FLAG_SCH_NEW_BUF;
  FLAG_SCH_NEW_BUF = 0;
  
  FLAG_SCH_TX485_MAX = FLAG_SCH_TX485;
  FLAG_SCH_TX485     = 0;
  
  SCH_7E_PAKET_MAX = SCH_7E_PAKET;
  SCH_7E_PAKET =0;
  
  SCH_7k_PAKET_MAX = SCH_7k_PAKET;
  SCH_7k_PAKET =0;
  
  SCH_7ok_PAKET_MAX = SCH_7ok_PAKET;
  SCH_7ok_PAKET =0;
  
  SCH_ERROR_delta_min_TNC_max=SCH_ERROR_delta_min_TNC;  
  SCH_ERROR_delta_min_TNC=0;
  
  SCH_ERROR_delta_max_TNC_max=SCH_ERROR_delta_max_TNC;  
  SCH_ERROR_delta_max_TNC=0;
  
  SCH_ERROR_delta_TNC_max=SCH_ERROR_delta_min_TNC_max+SCH_ERROR_delta_max_TNC_max; 
  
  FLAG_CONTROL=1;
  
  if (flag_ERROR_Timp>DISP_flag_ERROR_Timp) DISP_flag_ERROR_Timp=flag_ERROR_Timp;
  flag_ERROR_Timp=0;
  AVARIYA_flag=0u; //����� ����� ������ � ����� ����� 
  
  Delta_TNC_old=50000;
  flag_Avariya_TNC=0;
 }

void INF_K607 (unsigned char FLAG_EVENT_to_K607 )
{ 
	static unsigned int FLAG_INF_K607;

if (FLAG_INF_K607!=FLAG_EVENT_to_K607)
	{
	// if (FLAG_EVENT_to_K607==0) {Transf2("~0 ERROR;\r\n");Transf2("~0 ERROR;\r\n");}
   //  if (FLAG_EVENT_to_K607==1) {Transf("~0 BR;\r\n");   Transf("~0 BR;\r\n");}
   //  if (FLAG_EVENT_to_K607==2) {Transf("~0 GBR;\r\n");  Transf("~0 GBR;\r\n");}
	 
	 FLAG_INF_K607=FLAG_EVENT_to_K607;
	}

}


void Synhron_section (void)
{
	
if ((Mem_K615.VYKL&0x1)==0x0) 
{
	if ( flag_1HZ_sync==1 ) 
  	{  
      //������������� ��� ��� ����������� ������ ������
 	  flag_1HZ_sync=0;
	  flag_TNO_1hz_UP=1;
	  TNO_SYNC();
    				
	} else
  		{			         
      	 if  ((flag_event_sinhron==1)&&(START_packet==0))  //�������� ������������ �������� ��������������
				{									  
				  Event_word=Control_Impuls(&Struk0);
				  if (flag_ERROR_CRC_control_word==0) {flag_event_sinhron=0;} 
				  else flag_ERROR_CRC_control_word=0; //��������� 07-10-16
	    		} 
	   	 if (flag_END_sync_packet==1) 
		        {
                  flag_TNC_UP=0; 
                  TNC0_packet=1;//!!!���������!!!
                  flag_END_sync_packet=0;
                }
		}	

 if  (flag_Packet_form   ==1u) {Packet_FORM  ();flag_Packet_form=2u;}		
		
//--------------------------------------------������������ �����----------------------------------------------
      PPI_sync (); //�������� ������� �� ���� PPI � �������������    
      PPI_sz1  (); //�������� ������� �� ���� PPI � ����������  
      PPI_sz2  (); //�������� ������� �� ���� PPI � ����������
//------------------------------------------------------------------------------------------------------------
}	
								
timer_TNC2=*pTIMER2_COUNTER;	
}



unsigned int  Event_Synhron_func(void)
{
	unsigned int FLAG_EVENT=0;
	
	if (flag_PPI_sz2 ==0) FLAG_EVENT++;
	if (flag_PPI_sz1 ==0) FLAG_EVENT++;
	if (flag_PPI_sinc>0u) FLAG_EVENT++;
	if ((flag_1HZ_sync==1)||(flag_event_sinhron==1))  FLAG_EVENT++;
		
	return FLAG_EVENT;
}

void Packet_FINDER (void)
{
	flag_packet_OK_for_read=1; //���� ����������� ����� ����� ����� � ������ ������
				 //AVARIYA_flag=0u; //����� ����� ������ � ����� �����           
       if ((Mem_K615.VCU&0x1)==1)   //������������ ������������ ������ ��������������, �������� �� ��� 
   		{											
			if (FLAG_SYNC_SEV==1)  if (FLAG_TST_UDP==0) {VCU_sinh_form();}
		} 	 
    		
}

void Packet_FORM (void)
{
   //������ ������� ��������������� � �������������� ��� �������� ������ �������������		 
   		
		Packet_TNC1(Alfa,&Struk0); 	
			flag_PPI_sz1=0;
		    flag_PPI_sz2=0;
  		   flag_PPI_sinc++;
   TIME_PACKET_FORM=(*pTIMER2_COUNTER)-timer_TNC1; 	

}

void TEST_INTERVAL_DISP (u16 tnc)
{
 //--------------------------
  if (tnc>0)
  {
    if (TNC_actual == tnc) 
      {
        Str_print (&Struk0); //����� �� ����� ���������� ����� ��������� �� ���������
        //pachka_monitor();
      } 
  }
   //--------------------------   
}

void RZV_proir (char a)
{
  u8 label=0;
  u8 prefix=0;
  
  if (a=='w')
  {
	  if (FLAG_BR_REM_OK==0) //��������� �����
      {
		  if ((Mem_K615.GBR&0x02) ==0x02) CODE_REZERV_soft = 3;
		  if ((Mem_K615.BR &0x02) ==0x02) CODE_REZERV_soft = 1;
    			u_out ("���������:",CODE_REZERV_soft);
      }

     if (FLAG_BR_REM_OK==1) //����� ����� ��
		{
		if ((Mem_K615.GBR&0x02) ==0x02) CODE_REZERV_soft = 4;
		if ((Mem_K615.BR &0x02) ==0x02) CODE_REZERV_soft = 2;
    			u_out ("���������:",CODE_REZERV_soft);
		}  
  }
 

  if (a==4) 
  {
    CODE_REZERV_soft = 4;
     put_str1 ("\r\n ��������� 4!!!\r\n");
  } 

  if (a==5) 
  {
    CODE_REZERV_soft = 5;
     put_str1 ("\r\n ��������� 5!!!\r\n");
  }   

  if (CODE_REZERV == 1) prefix = 0xA0;
  if (CODE_REZERV == 2) prefix = 0xB0;
  if (CODE_REZERV == 3) prefix = 0xC0;
  
 // if ((Mem_K615.BR &0x02)==0x02) MASTER_CODE= CODE_REZERV_soft + prefix;//���� ����� ��
 // if ((Mem_K615.GBR&0x02)==0x02) MASTER_CODE= CODE_REZERV_soft + prefix;//���� ����� ���

 MASTER_CODE= CODE_REZERV_soft + prefix;
 
    if (a==99) 
    {
      MASTER_CODE=0xff;
	  AVARIYA_flag=0u;
      put_str1 ("MASTER_CODE=0xff - ��������� 4!!!\r\n");
    }
	
	
}


void LED_ERROR(unsigned int a)
{
  unsigned int delay_LED=100;
   static unsigned char l=0;

  if ((tick_wait_LED_ERROR>delay_LED)&&(Mem_K615.VYKL==0))
  {
     if ((a==0u)&&(FLAG_OK_UP==0)&&(TIMER_AVARIYA>OK_DELAY)) 
                {
                   Mem_K615.ERROR_B660=0;//��������� ������ 660 �����
                   Mem_K615.Ohl = 1;
				   ERROR_FLAG= ALL_OK;
                   EVENT_REZERV=0;

                   if (Mem1.Zapret_REZERV==0xc)
				   {
					 RZV_proir ('w');//���� ����� � ���� �������				  
				   }
				   
                   IO("~1 ERROR:0;"); //������� ������ ������!  

                   Mem_K615.BR =Mem_K615.BR&(~0x1); //  ��� 11 - ������� ������ � ���������, ��� 00 - ��� ������� � ���������� �������,
                   Mem_K615.GBR=Mem_K615.GBR|0x1;

                   K615_work(1);
                   FLAG_ERROR_UP=0;
                   FLAG_OK_UP   =1;
				   			   
                   help();
                   put_str1 ("�� ��.\r\n");
                   //AVARIYA_off;
                }

     if (FLAG_MASTER_REZERV==0x01) //������� � ��
              {
                FLAG_OK_UP   =1;//@ ����� ������ !!! 
                TIME_BR = 0;
                Mem_K615.BR =Mem_K615.BR|0x1; //  ��� 11 - ������� ������ � ���������, ��� 00 - ��� ������� � ���������� �������,
                Mem_K615.GBR=Mem_K615.GBR&(~0x1);
                TIMER_AVARIYA=0;
                RZV_proir(5);//��������� 5
                IO("~1 ERROR:0;"); //������� ������ ������!
               
                K615_work(1);

                put_str1 ("----------------------------\r\n"); 
                put_str1 ("������� - ������� � ��!!!\r\n"); 
                put_str1 ("----------------------------\r\n"); 

                //help();

                FLAG_MASTER_BR_OK=1;
				FLAG_BR_REM_OK = 1;//���� ���������� ��� �� �� ��������
				
                FLAG_MASTER_REZERV=0;
                 TIMER_GBR_OK=0;
                
              };

   if (a==0u) l=0u;    //��������

   if (a>0u) 
 	{
		l=~l;   //�� �����
   	}
  
   //if (l==0x00) AVARIYA_off;
   //if (l==0xff) AVARIYA_on;

   if (Sintez1_ERROR==0x01)      {Sintez1_ERROR=0;}//������ �����������1!!!
   if (Sintez2_ERROR==0x01)      {Sintez2_ERROR=0;}//������ �����������2!!!
   if (   FOCH_ERROR==0x01)      {FOCH_ERROR   =0;}//������ ���!!!
   if ( ERROR64_FLAG==0x01)      {put_str1 ("��� ������� 64 ���!!!\r\n");  ERROR64_FLAG=0;}

    if ((a>0u)&&(FLAG_ERROR_UP==0)&&(Mem1.Zapret_REZERV==0xc)) 
        {
         Mem_K615.ERROR_B660=1;//��������� ������ 660 �����
         Mem_K615.Ohl = 0;
         TIMER_AVARIYA=0;
                   
         GBR_zad ();  
         EVENT_REZERV=0;
         FLAG_OK_DELAY=0;
        // put_str1 ("LED_ERROR:������!\r\n");
       
 	    //Mem_K615.BR =0; //  ��� 11 - ������� ������ � ���������, ��� 00 - ��� ������� � ���������� �������,
        //Mem_K615.GBR=0;

        K615_work(1);
        FLAG_ERROR_UP=1;
        FLAG_OK_UP   =0;
		ERROR_FLAG = ERROR_sport;
        Event_SPORT_RUN (ERROR_FLAG);//�������� ������ ������ ��� �615 
        put_str1 ("��-�� �� ��!!!\r\n");
        u_out("AVARIYA_flag:",AVARIYA_flag); 
        //AVARIYA_flag=0;
        //AVARIYA_on;
        FLAG_MASTER_REZERV_disp=0;
        FLAG_MASTER_REZERV=0;
        FLAG_MASTER_BR_OK=0;
        TIMER_GBR_OK=0;
        }

    Mem_K615.OBMEN_B610=0;

   tick_wait_LED_ERROR = 0;
  }

}


void UDP_TIMEOUT_TST(unsigned int t)
{
  //if ((t>TIMEOUT_UDP)&&((Mem_K615.VCU&0x1)==0x1)&&((Mem_K615.VYKL&0x1)==0x0))
  if ((t>TIMEOUT_UDP)&&((Mem_K615.VCU&0x1)==0x1))
  {
    //Mem_K615.VCU =Mem_K615.VCU&(~0x2);//����� ��� ������
    //Mem_K615.MU  =Mem_K615.MU|0x2;   //�������� �� ������
    Mem_K615.NILS=1;
    //Mem1.Zadano_CU_MU=0xc;
	
  }
  else
  {
       Mem_K615.NILS=0;
  }
}

 void block_ON (u8 z)
 {
	 static unsigned char Zadano_off_ON;
	 
	 if ((Mem1.Zadano_off   ==0x5)||(Mem1.Zadano_off   ==0xc))
		{
			if (Mem1.Zadano_off   !=Zadano_off_ON)   
			{
			 if ((Mem1.Zadano_off   ==0xc)&&(VCU_BOTTON==3)) 	
				{					
					GBR_zad ();
					Mem_K615.VCU = 3; //��� 11 - ������� ������ � ���������, ��� 00 - ��� ������� � ���������� �������,
                    Mem_K615.MU  = 0;
					
					TNC_actual  =0; //������� ���	
					TNO_actual  =0; //������� ���
					CEV_actual  =0;	
					FLAG_DSP_text_CIKL=1;
					flag_sync_ETHERNET=0;
					flag_sync_ETHERNET_DISP=0;
					D_obzor=4;
					FLAG_ERROR_SYNC_VIEV=0;
            		//-------------------------------------------
					ERROR_FLAG = ERROR_sport;
					Event_SPORT_RUN (ERROR_FLAG);//�������� ������ ������ ��� �615 - ���������� � ������ c ���������������. 
            		INIT_START_PACHKA ('M');
            		MU_TEST(0);
            		Packet_TNC1(Alfa,&Struk0);
					Packet_TNC1(0,&StrukREZ);
            		Timer_INT2('c');
					FLAG_TST_UDP=0;
					put_str1("������� ��������� ������!\r\n");
				}
			}
		}
	Zadano_off_ON = Mem1.Zadano_off; 
 }

void block_OFF_upr (u8 z)
{
static unsigned char Zadano_off;
static unsigned char Zadano_GBR;
static unsigned char Zadano_BR;
static unsigned char Zadano_CU_MU;
static unsigned char Zadano_VYKL;
static unsigned char REZERV;
static unsigned char Zapret_REZERV;
static unsigned char AVARIYA_NILS;
static unsigned char ERROR_B610;
static unsigned char ERROR_B660;
static unsigned char OBMEN_B610;
	
  unsigned char event =0u;
  unsigned char event2=0u;

		
//	if (Mem1.Zadano_off  ==0x5)  {Mem_K615.VYKL=Mem_K615.VYKL|0x2;} else if (Mem1.Zadano_off  ==0xc)  {Mem_K615.VYKL=Mem_K615.VYKL&(~0x2);}
//	if (Mem1.Zadano_GBR  ==0x5)  {Mem_K615.GBR =Mem_K615.GBR |0x2;} else if (Mem1.Zadano_GBR  ==0xc)  {Mem_K615.GBR =Mem_K615.GBR&(~0x2);}
//	if (Mem1.Zadano_BR   ==0x5)  {Mem_K615.BR  =Mem_K615.BR  |0x2;} else if (Mem1.Zadano_BR   ==0xc)  {Mem_K615.BR  =Mem_K615.BR &(~0x2);}
/*	
	if ((Mem1.Zadano_GBR   ==0x5)||(Mem1.Zadano_GBR   ==0xc)) 
		{
			if (Mem1.Zadano_GBR   !=Zadano_GBR)   
			{ 
				event++;
				
				if (Mem1.Zadano_GBR  ==0x5)	
				{
					GBR_zad ();
					if (Mem1.Zapret_REZERV==0xc) RZV_proir ('w');//������ ���������  
				}
			}
		}
		
	if ((Mem1.Zadano_BR    ==0x5)||(Mem1.Zadano_BR    ==0xc)) 
		{
			if (Mem1.Zadano_BR    !=Zadano_BR)     
			{
				event++;
				if (Mem1.Zadano_BR  ==0x5)	
				{
					if (Mem1.Zapret_REZERV==0xc) RZV_proir ('w');//������ ���������  
				}
			}
					
		}	
*/  
//-----------------------------------------------------------		
		
	
	if ((Mem1.Zadano_CU_MU ==0x5)||(Mem1.Zadano_CU_MU ==0xc)) 
		{
			if (Mem1.Zadano_CU_MU !=Zadano_CU_MU)  event++;
		}
	

	  if (Mem_K615.VYKL      !=Zadano_VYKL)   event++;
      if (Mem_K615.NILS      !=AVARIYA_NILS)  event++;
   	
	if (Mem1.Zadano_CU_MU==0x5)  
    {
      Mem_K615.VCU =Mem_K615.VCU |0x2; //�������� ��� ������
      Mem_K615.MU  =Mem_K615.MU&(~0x2);//����� �� ������
    } else if (Mem1.Zadano_CU_MU==0xc)  
    {
      Mem_K615.VCU =Mem_K615.VCU&(~0x2);//����� ��� ������
      Mem_K615.MU  =Mem_K615.MU|0x2;   //�������� �� ������
	  FLAG_BLOCK_TST=0;	
    }

 
 if (event>0) 
		{
		
      		put_str1("�����!\r\n");
      		
      		//u_out("Mem1.Zapret_REZERV:",Mem1.Zapret_REZERV);
      		//u_out("Mem1.Zadano_off:",Mem1.Zadano_off);
      		//u_out("Mem1.Zadano_CU_MU:",Mem1.Zadano_CU_MU);
      		//u_out("Mem1.Zadano_BR:",Mem1.Zadano_BR);
      		//u_out("Mem1.Zadano_GBR:",Mem1.Zadano_GBR);
      		//u_out("���������� Mem_K615.BR:",Mem_K615.BR);
      		//u_out("Mem_K615.NILS:",Mem_K615.NILS);

    		if (AVARIYA_NILS!=Mem_K615.NILS)
		        {
		            if (Mem_K615.NILS==1) 
		          {
		            Transf2("~0 ERROR_NILS:1;\r\n"); //��������� ������ ����� ����� ETHERNET
					Mem_K615.VCU =Mem_K615.VCU&(~0x2);//����� ��� ������
					Mem_K615.MU  =Mem_K615.MU|0x2;   //�������� �� ������
		          } else
		          {
		            Transf2("~0 ERROR_NILS:0;\r\n"); //��������� ������ ����� ����� ETHERNET
		          }
				}
	
			 K615_work(1);
		}

   
    if (event>0u)
    {
      Zadano_off   = Mem1.Zadano_off;
      Zadano_VYKL  = Mem_K615.VYKL;
      Zadano_GBR   = Mem1.Zadano_GBR;
      Zadano_BR    = Mem1.Zadano_BR;
      Zadano_CU_MU = Mem1.Zadano_CU_MU;
      Zapret_REZERV= Mem1.Zapret_REZERV;
      AVARIYA_NILS = Mem_K615.NILS;

    } 

	event=0;
	
} 

  void block_upr (u8 z)
{
static unsigned char Zadano_off;
static unsigned char Zadano_GBR;
static unsigned char Zadano_BR;
static unsigned char Zadano_CU_MU;
static unsigned char Zadano_VYKL;
static unsigned char REZERV;
static unsigned char Zapret_REZERV;
static unsigned char AVARIYA_NILS;
static unsigned char ERROR_B610;
static unsigned char ERROR_B660;
static unsigned char OBMEN_B610;
	
  unsigned char event =0u;
  unsigned char event2=0u;

  /*
	if ((REZERV_INT1==1)&&(EVENT_REZERV==1)&&(Mem1.Zapret_REZERV==0xc))
  {
    RZV_proir (2);//�������� ���������   
    REZERV_INT1=0;
    EVENT_REZERV=1;
    put_str1("�������� ���������!\r\n");
    K615_work(1);
  }
*/

  if ((LoK_WEB&0x3)==0x00) Mem1.Zadano_CU_MU =0x0c;//���� ��� ����� �� ��������� � �� ������

  if ((REZERV_INT1==1)&&(EVENT_REZERV==0)&&(Mem1.Zapret_REZERV==0xc)) 
  {     
	FLAG_BR_REM_OK=0;
	if (Mem1.Zapret_REZERV==0xc) RZV_proir ('w');//�������� ��������� ������� ����� ������ �����!!!! - FLAG_BR_REM_OK
   
    REZERV_INT1=0;
    EVENT_REZERV=1;
    put_str1("new Event RZV!\r\n");
    //u_out("MASTER_CODE     :",MASTER_CODE);
    //u_out("CODE_REZERV     :",CODE_REZERV);
    //x_out("��� ������� SOFT  :",CODE_REZERV_soft);
    //u_out("EVENT_REZERV    :",EVENT_REZERV);
    K615_work(1);
  }
  
  if ((REZERV_M==0x00)&&(Mem_K615.BR&0x01==0x01)) {AVARIYA_flag=999; put_str1("������ REZERV_M!\r\n");}
  
  if (FLAG_BR_TST  ==1) {Mem1.Zadano_BR    =0x5;FLAG_BR_TST  =3;} else  if (FLAG_BR_TST  ==0) {Mem1.Zadano_BR   =0xc;FLAG_BR_TST  =3; }
  if (FLAG_GBR_TST ==1) {Mem1.Zadano_GBR   =0x5;FLAG_GBR_TST =3;} else  if (FLAG_GBR_TST ==0) {Mem1.Zadano_GBR  =0xc;FLAG_GBR_TST =3; }
  if (FLAG_VCU_TST ==1) {Mem1.Zadano_CU_MU =0x5;FLAG_VCU_TST =3;} else  if (FLAG_VCU_TST ==0) {Mem1.Zadano_CU_MU=0xc;FLAG_VCU_TST =3; }
  if (FLAG_VIKL_TST==1) {Mem1.Zadano_off   =0x5;FLAG_VIKL_TST=3;} else  if (FLAG_VIKL_TST==0) {Mem1.Zadano_off  =0xc;FLAG_VIKL_TST=3; }

	if (z==1) 
	{
		event++;	
	}
	
//-------------------------------------------------------------------
if ((Mem_K615.VCU&0x1)==1) //� ������ ���
{
	 if ((Mem1.Zadano_off   ==0x5)||(Mem1.Zadano_off   ==0xc))
		{
			if (Mem1.Zadano_off   !=Zadano_off)   
			{
			 if (Mem1.Zadano_off   ==0xc) 	
				{
					//block_ON(1);
					//put_str1("������� ��������� ������!\r\n");
				}
				event++;
			}
		}
		
	if (Mem1.Zadano_off  ==0x5)  {Mem_K615.VYKL=Mem_K615.VYKL|0x2;} else if (Mem1.Zadano_off  ==0xc)  {Mem_K615.VYKL=Mem_K615.VYKL&(~0x2);}
	if (Mem1.Zadano_GBR  ==0x5)  {Mem_K615.GBR =Mem_K615.GBR |0x2;} else if (Mem1.Zadano_GBR  ==0xc)  {Mem_K615.GBR =Mem_K615.GBR&(~0x2);}
	if (Mem1.Zadano_BR   ==0x5)  {Mem_K615.BR  =Mem_K615.BR  |0x2;} else if (Mem1.Zadano_BR   ==0xc)  {Mem_K615.BR  =Mem_K615.BR &(~0x2);}
	
	if ((Mem1.Zadano_GBR   ==0x5)||(Mem1.Zadano_GBR   ==0xc)) 
		{
			if (Mem1.Zadano_GBR   !=Zadano_GBR)   
			{ 
				event++;
				
				if (Mem1.Zadano_GBR  ==0x5)	
				{
					GBR_zad ();
					if (Mem1.Zapret_REZERV==0xc) RZV_proir ('w');//������ ���������  
				}
			}
		}
		
	if ((Mem1.Zadano_BR    ==0x5)||(Mem1.Zadano_BR    ==0xc)) 
		{
			if (Mem1.Zadano_BR    !=Zadano_BR)     
			{
				event++;
				if (Mem1.Zadano_BR  ==0x5)	
				{
					if (Mem1.Zapret_REZERV==0xc) RZV_proir ('w');//������ ���������  
				}
			}
					
		}	
}	
   
//-----------------------------------------------------------		
		
	
	if ((Mem1.Zadano_CU_MU ==0x5)||(Mem1.Zadano_CU_MU ==0xc)) 
		{
			if (Mem1.Zadano_CU_MU !=Zadano_CU_MU)  event++;
		}
	
	if ((Mem1.Zapret_REZERV==0x5)||(Mem1.Zapret_REZERV==0xc)) 
		{
			if (Mem1.Zapret_REZERV!=Zapret_REZERV) 
				{
					event++;
					if ((Mem1.Zapret_REZERV==0x5)&&(FLAG_MASTER_BR_OK!=1)) RZV_proir (99);
					if  (Mem1.Zapret_REZERV==0xc) RZV_proir ('w');
				}
    	}
  
	  if (Mem_K615.VYKL      !=Zadano_VYKL)   event++;
      if (Mem_K615.NILS      !=AVARIYA_NILS)  event++;
      if (Mem_K615.ERROR_B610!=ERROR_B610)    event++;
   // if (Mem_K615.ERROR_B660!=ERROR_B660)  event++;
   // if (Mem_K615.OBMEN_B610!=OBMEN_B610)  event++;
	//if (Mem1.REZERV		  !=REZERV)  event++;
	//if (Mem1.Zapret_REZERV!=Zapret_REZERV)  event++;
	
	if (Mem1.Zadano_CU_MU==0x5)  
    {
      Mem_K615.VCU =Mem_K615.VCU |0x2; //�������� ��� ������
      Mem_K615.MU  =Mem_K615.MU&(~0x2);//����� �� ������
	  if ((Mem_K615.VCU&0x01)==0x01) FLAG_BLOCK_TST=1;//	!!!!!!!!!!!!!!!!!!!!!!
    } else if (Mem1.Zadano_CU_MU==0xc)  
    {
      Mem_K615.VCU =Mem_K615.VCU&(~0x2);//����� ��� ������
      Mem_K615.MU  =Mem_K615.MU|0x2;   //�������� �� ������
	  FLAG_BLOCK_TST=0;	
    }


  if (((Mem_K615.VYKL&0x2)==0x2)&&(RESET_SINTEZ_flag==0)) //���������� ������
              {
                OFF_section (1);
                Mem_K615.VYKL=0x3;
                Mem_K615.GBR = 0;
                Mem_K615.BR  = 0;
                //Mem_K615.VCU = 0;
                //Mem_K615.MU  = 0;
                 RESET_SINTEZ_flag=1;// ��������� ���� ���������� ������ ��� ������ ������������
				 put_str1("���������� ������!\r\n");
              }
 
 if (event>0) 
		{
		 // if (Mem1.Zapret_REZERV==0xc) RZV_proir (0);//���������� ��������� � ������������ � ���\�� 
   			
      		put_str1("\r\n������ ����� ���������!\r\n");
      		
      		//u_out("Mem1.Zapret_REZERV:",Mem1.Zapret_REZERV);
      		//u_out("Mem1.Zadano_off:",Mem1.Zadano_off);
      		//u_out("Mem1.Zadano_CU_MU:",Mem1.Zadano_CU_MU);
      		//u_out("Mem1.Zadano_BR:",Mem1.Zadano_BR);
      		//u_out("Mem1.Zadano_GBR:",Mem1.Zadano_GBR);
      		//u_out("���������� Mem_K615.BR:",Mem_K615.BR);
      		//u_out("Mem_K615.NILS:",Mem_K615.NILS);

    		if (AVARIYA_NILS!=Mem_K615.NILS)
		        {
		            if (Mem_K615.NILS==1) 
		          {
		            Transf2("~0 ERROR_NILS:1;\r\n"); //��������� ������ ����� ����� ETHERNET
		          } else
		          {
		            Transf2("~0 ERROR_NILS:0;\r\n"); //��������� ������ ����� ����� ETHERNET
		          }
				  
					  
		        }
	
			 K615_work(1);
		}

   
    if (event>0u)
    {
      Zadano_off   = Mem1.Zadano_off;
      Zadano_VYKL  = Mem_K615.VYKL;
      Zadano_GBR   = Mem1.Zadano_GBR;
      Zadano_BR    = Mem1.Zadano_BR;
      Zadano_CU_MU = Mem1.Zadano_CU_MU;
      Zapret_REZERV= Mem1.Zapret_REZERV;
      AVARIYA_NILS = Mem_K615.NILS;
      ERROR_B610 = Mem_K615.ERROR_B610;
      ERROR_B660 = Mem_K615.ERROR_B660; 
      OBMEN_B610 = Mem_K615.OBMEN_B610;
    } 

  Msg_ZAPRET_REZ = Mem1.Zapret_REZERV;
	
	event=0;
	
}

void SYNC_obmen (void)
{
 u16 i=0;
 u8 DELAY_rd=4;
	
 if (FLAG_RS485_OBMEN==1u) //�������� ��������� ������
  {			
	FLAG_TIMER_UART_K614=0u;
	FLAG_INIT_UART=0;	
	//INF_UART_SRV2 (TX_BUF,160,1);//���������� ������������ ����� � ��������� �������
	if (FLAG_OUTPORT==0) control_K615();
	if (FLAG_OUTPORT==1) {K615_out();FLAG_OUTPORT=3;}
	FLAG_RS485_OBMEN=2u;
	FLAG_RS485_OBMEN1=1u;
  }

 if ((FLAG_RS485_OBMEN==2u)&&(FLAG_TIMER_UART_K614>DELAY_rd))  
	{
   	 rx_wr_index1=0;
	 rx_rd_index1=0;
	 rx_counter1 =0;
	 ssync();
	 if (TNC_actual==0) read_str1(N_BUFF_SPORT); else read_str1(N_BUFF_SPORT);
	 FLAG_RS485_OBMEN=3u;		
	}
	
	
 if ((FLAG_RS485_OBMEN==3u)&&(FLAG_TIMER_UART_K614>(DELAY_rd+5)))  //���� ��������� �������� ������� ��������� �����  
	{
	    buff_SPORT(N_BUFF_SPORT);
		FLAG_RS485_OBMEN=0u;
		FLAG_FIZL_ON=1;	
		
		//if (FLAG_REGIM_init==1) FLAG_REGIM=1;
		//if (FLAG_REGIM_init==2) FLAG_REGIM=2;		
	}
		
 if ((FLAG_TIMER_UART_K614>(DELAY_rd+6))&&(TNC_actual==0)&&(FLAG_CONTROL==1)) {control_TNC_TNO();FLAG_CONTROL=0;}
		
	UART_DMA_TX (); // �������� �� DMA � 485 ���� 	
}

/*
void TEST_REGIM (void)
{
  WORK_TU_FLAG = 't';
  func_event_k615 (); //�������� ��� �� ������� � ������� �615 
  Event_K615  ();
  INF_K607 (FLAG_EVENT_to_K607);  //������ ���������� ������ �610
  func_event_RZV();//�������� ������� "������� � ���� ��������������"
  if ((FLAG_OUTPORT==1)&&(TIMER_RS485_OBMEN>2)) {K615_out();FLAG_OUTPORT=0;}  //����� ���������
  
  if (FLAG_REGIM_init==1) FLAG_REGIM=1;
  if (FLAG_REGIM_init==2) FLAG_REGIM=2;
	
  if ((Mem_K615.VYKL&0x1)==0x1) //������ Ethernet-a � ����������� ������
	{
	
	  if (TIMER_AVARIYA>200)
	   {
			TIMER_AVARIYA=0;
			put_str1("���� ����.\r\n");
			RZV_proir(99);//������ ��� ��������������
			K615_work(1);//��������� ���������
	   }			   
	}
    
   if ((Mem_K615.VYKL&0x1)==0x0)
  {
     if (flag_START_pachka_SINTEZ==0) flag_event_sinhron=0;
    
     if (flag_START_pachka_SINTEZ==1) {Synhron_section ();}
     
     if (flag_START_pachka_SINTEZ==1)
      {
		   timer_TNC2=Timer_INT2('a');	
						
		   Interval_TNC = timer_TNC2 - timer_TNC1; //������������ �������� ���������
        
		  if ((Interval_TNC>400u)&&(Interval_TNC<Time_before_TOBM_2))
           {  
            //Ethernet_OBMEN ();
            flag_UDP_OBMEN ++;
           }
      }
     
   Packet_FORM ();
   block_upr  (0);
   if (FLAG_EVENT_K615_RZRV==0) LED_ERROR(AVARIYA_flag);
  }        
}
*/
void WORK_REGIM (void)
{
  WORK_TU_FLAG = 'w';
  func_event_k615 (); //�������� ��� �� ������� � ������� �615 
  Event_K615  ();
  INF_K607 (FLAG_EVENT_to_K607);  //������ ���������� ������ �610
  func_event_RZV();//�������� ������� "������� � ���� ��������������"
  UDP_TIMEOUT_TST(TIMER_UDP_LS_DOWN);//�������� �������� ����� �����
  //if (FLAG_EVENT_K615_RZRV==0) block_upr  (0); 
 
  if (FLAG_START_WORK==1) SYNC_obmen();
  if ((Mem_K615.VYKL&0x1)==0x1) //������ Ethernet-a � ����������� ������
	{
	   Event_K615  ();
	   Ethernet_OBMEN ();
	   FLAG_BLOCK_TST=0;//���������� ���������� ������
	   block_ON (1);
	   FLAG_SCH_RS485_OK_PACKET_MAX=10;
		
		if ((TIMER_AVARIYA>10)&&(FLAG_SEND1==0))
		{			
			FLAG_SEND1=1;
			//INF_UART_SRV2 (TX_BUF,160,1);//���������� ������������ ����� � ��������� �������
			//control_K615();
		}		
	 	   
	     if ((TIMER_AVARIYA>500)&&(FLAG_SEND1==1))
	   {			
			FLAG_SEND1=0;
			//put_str1("���� ����.\r\n");
			//RZV_proir(99);//������ ��� ��������������
			K615_work(1);//��������� ���������
			if (FLAG_OUTPORT==1) {K615_out();FLAG_OUTPORT=0;}  //����� ���������
			TIMER_AVARIYA=0;
			//block_OFF_upr(0); 
	   }
		
	}
    
   if ((Mem_K615.VYKL&0x1)==0x0)
  {
	 if (TIME_WORK_CONTROL>4100) {Avariya_test();RESTART_SYNC();}//���������� � ������ ���������
	  
     if (flag_START_pachka_SINTEZ==0) flag_event_sinhron=0;
    
     if (flag_START_pachka_SINTEZ==1) {Synhron_section ();}
     
     if (flag_START_pachka_SINTEZ==1)
      {
		   ssync;
		   ssync;
		   timer_TNC2=*pTIMER2_COUNTER; 	
		   ssync;
		   ssync;		   
		   Interval_TNC = timer_TNC2 - timer_TNC1; //������������ �������� ���������
		   ssync;
		   ssync;
		   
		  if (Interval_TNC>(Delta_TNC_old+250)) {flag_Avariya_TNC++;Avariya_test();}
        
		  if ((Interval_TNC>400u)&&(Interval_TNC<Time_before_TOBM_2))
        {            
          {   
            Ethernet_OBMEN ();
            flag_UDP_OBMEN ++;
          } 
        }
      }
    
   if ((FLAG_Packet_FIND==1)&&(Interval_TNC>Time_before_TOBM_2)) {Packet_FINDER();FLAG_Packet_FIND= 0;}	
  
// if  (flag_Packet_form   ==1u) {Packet_FORM  ();flag_Packet_form=2u;}
   if  ((FLAG_EVENT_K615_RZRV==0)&&(FLAG_UPR_TKI==1)) {block_upr  (0);FLAG_UPR_TKI=0; }
// if  (FLAG_EVENT_K615_RZRV==0) {block_upr  (0);FLAG_UPR_TKI=0; }
   if  (FLAG_EVENT_K615_RZRV==0) LED_ERROR(AVARIYA_flag);
  }      
}

void IND_DFK (unsigned int a)
{
} 


void FAZA (void)
{
	put_str1("\r\n");
  if (Sintez1_ERROR==0) put_str1("���� F�:OK!\r\n"); 
	  else put_str1("���� F�:FAIL!\r\n");
  if (Sintez2_ERROR==0) put_str1("���� F�:OK!\r\n"); 
	  else put_str1("���� F�:FAIL!\r\n");
	put_str1("\r\n");
}

void start_init (void)
{
	//************* ������������� 1�-�615 **********************

Mem_K615.byte3=0xff;
Mem_K615.byte4=0xff;
Mem_K615.byte5=0xff;
Mem_K615.byte6=0xff;
	
//---------------------------------------------------------
   RTS_485_off; 
   flag_Ethernet=1;
 
   Mem_K615.byte1=0xff;  
   Mem_K615.byte2=0xff; 
   Mem_K615.byte3=0xff;  
   Mem_K615.byte4=0xff;  
   Mem_K615.byte5=0xff;  
   Mem_K615.byte6=0xff; 

   Flag_K611=0;
   Flag_K612=0;
   Flag_K613=0;
   Flag_K615=0;
   sch_obmen=0;
  
//-----������������� ��������������� ��������� ------------
  
   Mem_K615.VYKL=0;//���� 3
   Mem_K615.GBR =0; 
   Mem_K615.BR  =0; 
   Mem_K615.VCU =0; 
   Mem_K615.MU  =3; 
   Mem_K615.Ohl =1;
   Mem_K615.NIMAFK =0;
   Mem_K615.NILS =0;
   Mem1.Zapret_REZERV=0xc; //��������� ��������������
	 
//--------------------------------------------------------
   Process_code=0;
// AVARIYA_off;
   flag_event_sinhron=0;
   START_packet=0;
   flag_START_pachka_SINTEZ=0;
   flag_event_K615_run=1;
   flag_K615_event=1;
   RX_485;
   CODE_REZERV = NUMBER_BLOK;//��� ������������ ����� � ���� �������������� A1,A2,A3
   CODE_REZERV_soft = CODE_REZERV;
   Timer_INT2('c'); //����� ������� ����������
   SYNC_PPI_0;
//----------------����� ������----------------------------------
   Fcalibrovka= 391000000;
   Fpomehi    = 393500000;
   DevFpomehi = 1000000;
   DevF_TST   = 100000;
   
   F0_FS_TST  = 438000000;
   F0_FG_TST  = 392000000;
   LCHM_osnv  = 1; //��� ����
   LCHM_I_type= 1; //��� �������������
   LCHM_G_type= 1; //��� �������������
   
   F1_FS_TST   = 438500000;
   F1_FG_TST   = 392500000;
   LCHM_osnv2  = 1; //��� ����
   LCHM_I_type2= 1; //��� �������������
   LCHM_G_type2= 1; //��� �������������
   
   F2_FS_TST  = 439000000;
   F2_FG_TST  = 393000000;
   LCHM_osnv3  = 1; //��� ����
   LCHM_I_type3= 1; //��� �������������
   LCHM_G_type3= 1; //��� �������������
      
   Timp_TST   = 24416;
   TimpIZ_TST = 24416;//24416
   TimpPR_TST = 24416;//24416
   
   Nimp_TST = 1;//����� ��������� � �����
   N_tempov = 0;//����� ������ : N_tempov+1 ���� 0
   
   FLAG_REGIM = 1;//������ �����
   TST_Dni = 15;//15;  
   TST_Dnp = 14;
   sinc_type =2;
   LCHM_osnv =1; //������� ��������
   Dop_interval=1;
   Type_pachki =1; 
   LCHM_pomeha =1;
   SYNC_T0Tnc  =1;
   SYNC_PILA   =0;//���������� ����
   SYNC_PILA2  =0;//���������� ����
   SYNC_PILA3  =0;//���������� ����
//-------------------------------------------------------------
   rx_wr_index0=0;
   rx_rd_index0=0;
   rx_counter0 =0;
    
   Transf ("---------\r\n");
   ERROR_FLAG = ERROR_sport;
   Event_SPORT_RUN(ERROR_FLAG); //�������� ������ ������ ��� �615 - ���������� � ������ c ���������������.  
   BUF_clear();
   INIT_START_PACHKA ('M');
   MU_TEST(0);
   flag_1HZ_sync=0;
   flag_TNO_1hz_UP=1;
   TNO_SYNC();
// OFF_section (1);
   TIMER_AVARIYA=0; //������ ���������� ������ ���� �� �������� ������ - �� ������� � ��
   IO("~1 POWER_ON;"); //������� ����� � ������������
   FLAG_START_WORK=0;
   TIMER_AVARIYA=9999;
}

  int main(void)
 {
    sysreg_write(reg_SYSCFG, 0x32);     // Initialize System Configuration Register
    Set_PLL(20,4) ; 		 // ������������� PLL  500 ��� ���� � 100 ��� ��������� Set_PLL(20,3) 
 // InitSDRAM(); //������ �������������� �������!!!
    Init_Flags();
    Init_Timers();     //������������� �������
    spi_cs(1); 
    SPIInit (6, 0);    // ������������� SPI  - 6
    UART_init (UART_SPD_K615); // ������������� UArrrRT UART_SPD_K615
    init_SPORT0 (50000000);       //������������� ������ SPORT0
    init_SPORT1 (UART_SPD_K614);  //������������� ������ SPORT1
//  CPUAccel();
  //Init_RTC();
    Init_Interrupts();
//  Init_DMA(35); //�������� - ����� ������������ ���� �� ���� PPI
//  Init_PPI(35);
    
  time_sekund=0;  //��������� �������� �������
  	
//*****************************************************************************
	
   sch_uart=0;  // ������� ������� ����� ��232, ���������.
   sch_tst_pachek_max=0;
   sch_tst_pachek_min=999999;

   time_TNC_max=0;
   time_TNC_min=999999999;

   time_TNO_max=0;
   time_TNO_min=999999999;
                                  
   flag_1HZ_sync=0;
			
//***************������������� ��������������************
   
   tick_process=0;

   sync_flag=0;

   unsigned  char zzz=0;

   put_str1("\r\n");
   RX_485;
  
    while (zzz<15u)
	{
    if (tick_process==600u) //800 - �������� ����� ����� ����� �� ������ WIZnet

      {
       tick_process=0;
       if (Master_flag==0u) tst_out (zzz);//K615_test_indi(zzz);

	   zzz=zzz+1u;
      }
   }

  UDP_TCP_setup(); 
  UDP_test();

//-------------------------------------------------------
		
 tick_process=0; //������� ������������ ���������
	
//************* ������������� 1�-�611 **********************
//---------------------------------------------------------
//************* ������������� 1�-�612 **********************
//---------------------------------------------------------
//************* ������������� 1�-�613 **********************
//---------------------------------------------------------
//************* ������������� 1�-�615 **********************
start_init();


IO("~1 TST_out:0;"); // ����������� ����� ����������� �������� ��� � ��� �� �������� ��������

 while(1)            // ������ ����
{ 
  UART_control ();
//if (FLAG_ETHERNET_INIT==1) { UDP_TCP_setup();FLAG_ETHERNET_INIT=0; } //������������� ETHERNET
	         
  if (FLAG_REGIM==1)   WORK_REGIM ();
//if (FLAG_REGIM==2)   TEST_REGIM ();
                     
 UART_DMA_TX (); // �������� �� DMA � 485 ����  
 UART_DMA_TX2(); // �������� �� DMA 

};

// return 0;
 }

