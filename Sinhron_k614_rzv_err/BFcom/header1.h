#define u8 unsigned char

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
typedef int int16;
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
typedef long int32;
/**
 * The volatile 32-bit signed data type.
 */
//typedef volatile long vint32;
/**
 * The 32-bit unsigned data type.
 */
typedef unsigned long uint32;
/**
 * The volatile 32-bit unsigned data type.
 */
//typedef volatile unsigned long vuint32;
typedef uint8			u_char;		/**< 8-bit value */
typedef uint8 			SOCKET;
typedef uint16			u_short;	/**< 16-bit value */
typedef uint16			u_int;		/**< 16-bit value */
typedef uint32			u_long;		/**< 32-bit value */

//----------------------прототипы функций-------------------
void itoa(int , char*);

/*
void spi_transf(u8* ,u8 );
void spi_cs(u8 );
void SPORT0_enable(void);
void SPORT0_disable(void); 
  u8 SPI(u8 );
char init_K611(char );
char control_K611(char);
char control_sig1_K611(char );
char control_sig2_K611(char );
unsigned short control_sintezator (void) ;
void reverse(char *);

char control_zahvat_K611(unsigned int );
char control_level_K611(unsigned int ) ;
char init_K615(char );
char control_k615(char );
char init_K612(char );
char control_k612(char );
char init_K613(char );  
char control_k613(char );
char control_k614_master(void);

void K615_work(void);
void K615_test_indi(char );
void IO (unsigned char* );
void func_TNO(void);
unsigned int Timer_INT2(char );
unsigned int Time_real(unsigned int );
void Time_control (void);
void control_TNC_TNO (void);
void Avariya_test(void);
void SDRAM_test(void);
void SDRAM_work(void);
void tabl_view(void);
void func_event_k615 (void);
void UART_control (void);
int UDP_test(void);
void fillBuf (unsigned char* , unsigned short , unsigned char  );
void zputs(unsigned char *, unsigned );
 int getStr ( unsigned char* , unsigned char* );
unsigned int leng ( char *) ;
void sendT ( char* );
void Menu2(void);
void Menu1(char );
void UART_DMA_TX (void);
void Transf( char* );
void ZTransf( char* ,unsigned char ) ;
void UDP_TCP_setup(void);
void KUK_IO(unsigned char* ,unsigned int ); 
void packet_TRSL (void);
void SPORT_COM (void);


void VCU_sinh_form (void);
void MU_TEST(void);
void Info_back_Ethernet (void);
void Control_bloka (void);
void Ethernet_MU (void);
void Synhron_section (void);
unsigned short strlen(const char *);
int strcmp (const char *, const char *);
int sprintf(char *buf, const char *format, ...);
void sendIAC(SOCKET , uint8 , uint8 ); 
*/
