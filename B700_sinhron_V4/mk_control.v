//-----------------------------------------------------------------------------
//
// Title       : mk_control
// Design      : sinh1_v1
// Author      : Microsoft
// Company     : Microsoft
//
//-----------------------------------------------------------------------------
//
// File        : mk_control.v
// Generated   : Wed Nov 13 10:49:34 2013
// From        : interface description file
// By          : Itf2Vhdl ver. 1.22
//
//-----------------------------------------------------------------------------
//
// Description : 
//
//-----------------------------------------------------------------------------
`timescale 1 ns / 1 ps

//{{ Section below this comment is automatically maintained
//   and may be overwritten
//{module {mk_control}}
module mk_control ( send ,uart_out ,uart_in ,rx_ready ,TX_ready,RTS_485 ,test2 ,test1 ,TK3 ,TK2 ,TK1 ,us_time ,ms_time ,s ,min ,h ,reset ,clk,port1,port2,port3,port4,port5,port6,INPORT1,INPORT2,INPORT3,INPORT4,INPORT5,INPORT6  );

output send ;
wire send ;

output   RTS_485 ;
wire   RTS_485 ;  

output [7:0] uart_out ;
wire [7:0] uart_out ;  


output [7:0] port1 ;
wire [7:0] port1 ;	

output [7:0] port2 ;
wire [7:0] port2 ;	

output [7:0] port3 ;
wire [7:0] port3 ;

output [7:0] port4 ;
wire [7:0] port4 ; 

output [7:0] port5 ;
wire [7:0] port5 ;

output [7:0] port6 ;
wire [7:0] port6 ; 

input [7:0] INPORT1 ;
wire [7:0] INPORT1 ; 

input [7:0] INPORT2 ;
wire [7:0] INPORT2 ;

input [7:0] INPORT3 ;
wire [7:0] INPORT3 ;

  input [7:0] INPORT4 ;
wire [7:0] INPORT4 ;

  input [7:0] INPORT5 ;
wire [7:0] INPORT5 ;

  input [7:0] INPORT6 ;
wire [7:0] INPORT6 ;


input [7:0] uart_in ;
wire [7:0] uart_in ;
input rx_ready ;
wire rx_ready ;
input TX_ready ;
wire TX_ready ;
input [7:0] test2 ;
wire [7:0] test2 ;
input [7:0] test1 ;
wire [7:0] test1 ;
input TK3 ;
wire TK3 ;
input TK2 ;
wire TK2 ;
input TK1 ;
wire TK1 ;
input [9:0] us_time ;
wire [9:0] us_time ;
input [9:0] ms_time ;
wire [9:0] ms_time ;
input [7:0] s ;
wire [7:0] s ;
input [7:0] min ;
wire [7:0] min ;
input [7:0] h ;
wire [7:0] h ;
input reset ;
wire reset ;
input clk ;
wire clk ;

// коды команд	  

parameter dataN=255;	 // число данных в пачке - 1=32-1;

parameter	IFU    		 =8'h21;     // команда проверки флага разрешения передачи данных в уарт
parameter	RFU    		 =8'h22;     // команда проверки флага разрешения передачи данных в уарт
 
parameter   LD_P1  	     =8'h31;		// команда пересылка байта в PORT1 взятого по адресу
parameter   LD_P2  		 =8'h32;		// команда пересылка байта в PORT2 взятого по адресу	   
parameter   LD_P3  	 	 =8'h85;		// команда пересылка байта в PORT3 взятого по адресу
parameter   LD_P4  		 =8'h86;		// команда пересылка байта в PORT4 взятого по адресу
parameter   LD_P5  		 =8'h87;		// команда пересылка байта в PORT5 взятого по адресу
parameter   LD_P6  		 =8'h88;		// команда пересылка байта в PORT6 взятого по адресу
parameter   LD_INP1_A	 =8'h89;		// команда пересылка байта из INPORT1 в аккумулятор
parameter   LD_INP2_A  	 =8'h8a;		// команда пересылка байта из INPORT2 в аккумулятор
parameter   LD_INP3_A	 =8'h8b;		// команда пересылка байта из INPORT3 в аккумулятор
parameter   LD_INP4_A  	 =8'h8c;		// команда пересылка байта из INPORT4 в аккумулятор
parameter   LD_INP5_A  	 =8'h8d;		// команда пересылка байта из INPORT4 в аккумулятор
parameter   LD_INP16_A   =8'h8e;		// команда пересылка 2-х байтов из  портов 1 и 6 в аккумулятор
parameter   LD_INPALL_MeM=8'h8f;		// команда пересылка     байтов из всех портов   в память
parameter   MOV_to_Rn 	 =8'h7c;		// команда пересылка байта в регистр Rn 
parameter   MOV_ad_Rn 	 =8'h7e;		// команда пересылка байта взятого по адресу в регистр Rn 
parameter   LD_UART		 =8'h33;		// команда пересылка байта в порт UART взятого      по адресу
parameter   LD_UART_RX	 =8'h83;		// команда пересылка байта из приёмного порта UART  по адресу
parameter   LD_UART_RX_A =8'h84;		// команда пересылка байта из приёмного порта UART  в аккумулятор
parameter   LD_A_Adr	 =8'h34;		// команда пересылка байта из аккумулятора по адрессу 
parameter   MOV  		 =8'h35;		// команда пересылка байта в аккумулятор 
parameter   MOV_A_Rn 	 =8'h36;		// команда пересылка байта в аккумулятор из регистра Rn
parameter   MOV_ad 		 =8'h37;		// команда пересылка байта взятого по адрессу в аккумулятор
parameter   MOV_A_ad	 =8'h38;		// команда пересылка байта взятого из аккумулятора по адрессу 
parameter 	PUSH 		 =8'h39;		// команда переноски в стек байта по следующему адрессу	
parameter 	POP 		 =8'h60;		// команда изъятия байта из стека и помещение его по адрессу
parameter 	ADD_Rn 		 =8'h61;		// команда суммирования аккумулятора и регистра Rn
parameter 	ADD 		 =8'h62;		// команда суммирования аккумулятора и числа
parameter 	ADD_ad 		 =8'h63;		// команда суммирования аккумулятора и числа по следующему адрессу
parameter   SUB_Rn  	 =8'h64;		// команда вычитания аккумулятора и регистра
parameter 	SUB_ad  	 =8'h65;		// команда вычитания аккумулятора и числа по следующему адрессу	
parameter 	SUB     	 =8'h66;		// команда вычитания аккумулятора и числа 
parameter 	INC     	 =8'h67;		// команда увеличения на еденицу аккумулятора
parameter 	DEC     	 =8'h68;		// команда уменьшения на еденицу аккумулятора
parameter 	CLR     	 =8'h69;		// команда обнуления аккумулятора
parameter 	RL      	 =8'h70;		// команда сдвига аккумулятора влево
parameter 	RR  		 =8'h71;		// команда сдвига аккумулятора вправо
parameter   RET			 =8'h72;		// код  команды возврата из подпрограммы
parameter   SWAP		 =8'h73; 	    // код  команды обмена байтами в аккумуляторе старший <--> младший	
parameter   JZ			 =8'h74; 	    // команда перехода если аккумулятор равен нулю по следующему адрессу			  
parameter   JNZ			 =8'h75;		// команда перехода если аккумулятор не равен нулю по следующему адрессу	
parameter   JIF_Rn		 =8'h78;		// команда перехода если аккумулятор равен байту в регистре Rn по следующему адрессу
parameter 	LCALL		 =8'h79;		// вызов подпрограммы
parameter 	GOTO		 =8'h76;		// безусловный переход по следующему адресу
parameter 	NOP			 =8'h77;		// пустая команда
parameter 	DELAY		 =8'h91;		//  команда паузы
parameter 	RTS485		 =8'h90;		// команда RTS для 485 канала

parameter 	TNI		=8'h03;
parameter 	TNP		=8'h04;
parameter 	TKI 	=8'h05;
parameter 	TKP 	=8'h06;
parameter 	Dniu	=8'h07;	
parameter 	Dni 	=8'h08;
parameter   Dnpu	=8'h09;
parameter 	Dnp 	=8'h0a;
parameter   Dip 	=8'h0b;
parameter   Dii 	=8'h0c;	 
parameter   Dtnc	=8'h0e;	  
parameter   End 	=8'hff;	 // приказ - конец циклограммы	



reg   MOV_Rn_flag    	 =0;     // флаги процессов
reg   MOV_to_Rn_flag   	 =0; 
reg   MOV_ad_Rn_flag   	 =0; 
reg   MOV_flag			 =0;    
reg   MOVad_flag	 	 =0;
reg   MOV_A_ad_flag  	 =0;
reg   LD_P1_flag		 =0;
reg   LD_P2_flag	 	 =0;  
reg   LD_P3_flag	 	 =0;
reg   LD_P4_flag	 	 =0; 
reg   LD_P5_flag		 =0;
reg   LD_P6_flag	 	 =0;
reg   LD_INP1_A_flag 	 =0;
reg   LD_INP2_A_flag 	 =0;
reg   LD_INP3_A_flag 	 =0;
reg   LD_INP4_A_flag 	 =0;
reg   LD_INP5_A_flag 	 =0;
reg   LD_INP16_A_flag 	 =0;
reg   LD_INPALL_MeM_flag =0;
reg   LD_UART_flag	 	 =0;
reg   LD_UART_RX_flag	 =0;
reg   LD_UART_RX_A_flag	 =0;
reg   LD_A_Adr_flag	 	 =0;
 
reg   RTS485_flag	 	 =0;
 
reg   PUSH_flag		 =0;	
reg    POP_flag		 =0;
reg ADD_Rn_flag		 =0;
reg ADD_ad_flag		 =0;
reg ADD_flag		 =0;
reg SUB_Rn_flag		 =0;
reg SUB_ad_flag		 =0;
reg SUB_flag		 =0;

reg    INC_flag		 =0;
reg    DEC_flag		 =0; 
reg    CLR_flag		 =0;
reg     RL_flag 	 =0;
reg     RR_flag		 =0;
reg    RET_flag	 	 =0;
reg   SWAP_flag		 =0;
reg   GOTO_flag		 =0;

reg    	JZ_flag		 =0;
reg   	JNZ_flag	 =0;
reg   	JIF_Rn_flag	 =0;
reg   LCALL_flag	 =0;
reg     NOP_flag	 =0;
reg     DELAY_flag	 =0;

reg   IFU_FLAG       =0;  //флаг уарта на отправку
reg   RFU_FLAG       =0;  //флаг уарта на приём
  

reg 	flag_data	 =0;

reg   end_prgrm_flag =0;

reg [15:0] Rn=0;
reg [15:0] stack     [9  :0];  // стек команды
reg [15:0] Stack_MeM [9  :0];  // стек программы
reg [7:0] Mem   [255:0];      // память программ
reg [15:0] sch=0;    
reg [15:0] sch_stack=0;        // счётчик адреса стека
	  

reg [15:0] sch_data=0;
reg [15:0] sch_abs=0;

reg [15:0] A=0;  //аккумулятор

reg [9:0] us_r=0;
reg [9:0] ms_r=0;
reg [7:0] s_r=0;
reg [7:0] min_r=0;
reg [7:0] h_r=0;

reg [7:0] test_reg=0;

reg flag1=0;

reg tk1=0;
reg tk2=0;
reg tk3=0;

reg [15 :0] sch_tk=0;        // счётчик событий
reg [31:0] data_tk [63:0];  // память событий {tk1,tk2,tk3,min-3'b,sec-6'b,ms-10'b,us-10'b}

reg uart_rx_flag=0;
reg uart_rx_work_flag=0;
reg uart_tx_flag=0;

reg [2:0] tick1=0;
reg [2:0] tick2=0;
reg [2:0] tick3=0;
reg [2:0] tick4=0;
reg [2:0] tick5=0;
reg [2:0] tick6=0;

reg [7:0] d_code=0;
reg [15:0] jump=0;

reg [7:0] port1_reg    =0;
reg [7:0] port2_reg    =0;

reg [7:0] uart_port=0;
reg [7:0] uart_port_RX=0;
reg send_flag=0;

reg [15:0] delay_reg=0;


reg [7:0] port3_reg=0;
reg [7:0] port4_reg=0;
reg [7:0] port5_reg=0;
reg [7:0] port6_reg=0;

reg [7:0] crc_reg1=0;  //регистр контрольной суммы
reg [7:0] crc_reg2=0;  //регистр контрольной суммы

reg [15:0] RTS_time=0;  //регистр контрольной суммы

reg RTS_485_reg=0;


wire   Process;

assign Process=  MOV_flag     | PUSH_flag     | POP_flag      | ADD_Rn_flag    | ADD_ad_flag       | SUB_Rn_flag    | SUB_ad_flag		|
				 INC_flag     | DEC_flag      | CLR_flag      | RL_flag	       | RR_flag	       | RET_flag	    | SWAP_flag  		|
				 JZ_flag      | JNZ_flag      | LCALL_flag    | NOP_flag       | MOVad_flag        | SUB_flag	    | ADD_flag   		|
		    	MOV_Rn_flag   | MOV_A_ad_flag | LD_P1_flag    | LD_P2_flag     | LD_UART_flag      | LD_A_Adr_flag  | IFU_FLAG   		| 
			     GOTO_flag    | LD_P3_flag    | LD_P4_flag    | LD_P5_flag     | LD_P6_flag        | LD_UART_RX_flag| LD_UART_RX_A_flag |
				JIF_Rn_flag   | MOV_to_Rn_flag| MOV_ad_Rn_flag| RFU_FLAG       | LD_INP1_A_flag    | LD_INP2_A_flag | LD_INP3_A_flag    |
    			LD_INP4_A_flag|	LD_INP5_A_flag| RTS485_flag   | LD_INP16_A_flag| LD_INPALL_MeM_flag| DELAY_flag     |  0            ; // проверка процессов на активность (не поднят ли какой флаг?)

				
assign send=send_flag;
assign uart_out=uart_port;


assign port1=port1_reg;
assign port2=port2_reg;
assign port3=port3_reg;
assign port4=port4_reg;
assign port5=port5_reg;
assign port6=port6_reg;

assign RTS_485=RTS_485_reg;
				


/*
always @(posedge clk) if (reset) begin  sch_abs<=0;  end else 

if (Process) 

if (JZ_flag||JNZ_flag||LCALL_flag||GOTO_flag||JIF_Rn_flag) sch_abs<=jump; else if (!((DELAY_flag||RTS485_flag))) sch_abs<=sch_abs+d_code; 
*/

always @(negedge clk) 

begin 

 test_reg<= Mem[sch_data];
 
 if ((Process==0)&&(flag1==0)) stack[sch_data-1]<=Mem[sch];

 end	

always @(negedge clk)

if (reset)

begin

 sch_abs<=0; 

/*

 
  Mem[ 0] <=MOV;	   //начало программы
  Mem[ 1] <=12;
  Mem[ 2] <=LD_UART;       //  отсылаем слово START \r\n  оно записано начиная с адреса 60 
  Mem[ 3] <=60;
 
  Mem[ 4] <=NOP;
  Mem[ 5] <=IFU;
  Mem[ 6] <=MOV_ad;
  Mem[ 7] <=1;
  
  Mem[ 8] <=DEC;
  Mem[ 9] <=JZ;
  Mem[10] <=127;
  Mem[11] <=MOV_A_ad;    // команда пересылка байта взятого из аккумулятора по адрессу
  
  Mem[12] <=1;
  Mem[13] <=MOV_ad;      // команда пересылка байта взятого по адрессу в аккумулятор
  Mem[14] <=3;
  Mem[15] <=INC;
  
  Mem[16] <=MOV_A_ad;
  Mem[17] <=3;
  Mem[18] <=GOTO;
  Mem[19] <=2;
  
  Mem[20] <=RFU;
  Mem[21] <=LD_UART_RX_A;  // команда пересылка байта из приёмного порта UART  в аккумулятор
  Mem[22] <=MOV_to_Rn;     // команда пересылка байта в регистр Rn
  Mem[23] <="~";
  
  Mem[24] <=JIF_Rn;        // команда перехода если аккумулятор равен байту в регистре Rn по следующему адрессу
  Mem[25] <=28;
  Mem[26] <=GOTO;          // безусловный переход по следующему адресу
  Mem[27] <=32;
  
  Mem[28] <=MOV;        // команда перехода если аккумулятор равен байту в регистре Rn по следующему адрессу
  Mem[29] <=100;
  Mem[30] <=LD_A_Adr;          // безусловный переход по следующему адресу
  Mem[31] <=33;
  
  Mem[32] <=LD_UART_RX;    // команда пересылка байта из приёмного порта UART  по адресу
  Mem[33] <=100;
  Mem[34] <=MOV_ad;        // команда пересылка байта взятого по адрессу в аккумулятор
  Mem[35] <=33;
  Mem[36] <=INC;           // команда увеличения на еденицу аккумулятора

  Mem[37] <=MOV_to_Rn;     // команда пересылка байта в регистр Rn
  Mem[38] <=150;
  Mem[39] <=JIF_Rn;        // команда перехода если аккумулятор равен байту в регистре Rn по следующему адрессу
  Mem[40] <=20;
  Mem[41] <=NOP;           // пустая команда
 
  Mem[42] <=MOV_A_ad;      // команда пересылка байта взятого из аккумулятора по адрессу 
  Mem[43] <=33;
  Mem[44] <=LD_UART_RX_A;
  Mem[45] <=MOV_to_Rn;

  Mem[46] <=";";
  Mem[47] <=JIF_Rn;
  Mem[48] <=51;
  Mem[49] <=GOTO;

  Mem[50] <=20;
  
  Mem[51] <=MOV_ad;  //помещаем в аккумулятор байт по адресу 101 - адресс устройства в пачке
  Mem[52] <=101;
  Mem[53] <=MOV_to_Rn;

  Mem[54] <="9";
  Mem[55] <=JIF_Rn;
  Mem[56] <=72;
  Mem[57] <=GOTO;

  Mem[58] <=20;
  
 //-------------------------- 
  Mem[59] <=8'haa;
 
//-------------------------- 
  Mem[60] <="~";
  Mem[61] <="9";
  Mem[62] <=" ";
  Mem[63] <="p";
  Mem[64] <="o";
  
 
  Mem[65] <="r";
  Mem[66] <="t";
  Mem[67] <="=";
  Mem[68] <="7";
  Mem[69] <=";";
  
  Mem[70] <=8'h0d;
  Mem[71] <=8'h0a;
//**************************

 
  
  Mem[72] <=MOV;
  Mem[73] <=12;
  Mem[74] <=MOV_A_ad;
  Mem[75] <=1;
  Mem[76] <=MOV;
  Mem[77] <=60;
  Mem[78] <=MOV_A_ad;
  Mem[79] <=3;
  Mem[80] <=GOTO;
  Mem[81] <=0;
  
  
  Mem[82] <=8'haa;
  Mem[83] <=8'haa;
  Mem[84] <=8'haa;

  Mem[85] <=8'haa;
  Mem[86] <=8'haa;
  Mem[87] <=8'haa;
  Mem[88] <=8'haa;

  Mem[89] <=8'haa;
  Mem[90] <=8'haa;
  Mem[91] <=8'haa;
  Mem[92] <=8'haa;

  Mem[93] <=8'haa;
  Mem[94] <=8'haa;
  Mem[95] <=8'haa;
  Mem[96] <=8'haa;

  Mem[97] <=8'haa;
  Mem[98] <=8'haa;
  Mem[99] <=8'haa;
  Mem[100] <=8'haa;

  Mem[101] <=8'haa;
  Mem[102] <=8'haa;
  Mem[103] <=8'haa;
  Mem[104] <=8'haa;

  Mem[105] <=8'haa;
  Mem[106] <=8'haa;
  Mem[107] <=8'haa;
  Mem[108] <=8'haa;

  Mem[109] <=8'haa;
  Mem[110] <=8'haa;
  Mem[111] <=8'haa;
  Mem[112] <=8'haa;

  Mem[113] <=8'haa;
  Mem[114] <=8'haa;
  Mem[115] <=8'haa;
  Mem[116] <=8'haa;

  Mem[117] <=8'haa;
  Mem[118] <=8'haa;
  Mem[119] <=8'haa;
  Mem[120] <=8'haa;

  Mem[121] <=8'haa;
  Mem[122] <=8'haa;
  Mem[123] <=8'haa;
  Mem[124] <=8'haa;

  Mem[125] <=8'haa;
  Mem[126] <=8'haa;
  Mem[127] <=GOTO;
  Mem[128] <=20;


*/


  Mem[00] <=RTS485;
  Mem[01] <=1;
  Mem[02] <=NOP;
  Mem[03] <=NOP;

  Mem[04] <=DELAY;
  Mem[05] <=NOP;
  Mem[06] <=NOP;
  Mem[07] <=NOP;

  Mem[08] <=MOV;	   //начало программы
  Mem[09] <=20;
  Mem[10] <=LD_UART;       /*  отсылаем слово "~1 START ;\r\n"  оно записано начиная с адреса 64*/ 
  Mem[11] <=147;  //адрес в памяти первого отсылаемого байта
 
  Mem[12] <=NOP;
  Mem[13] <=IFU;
  Mem[14] <=MOV_ad;
  Mem[15] <=9;
  
  Mem[16] <=DEC;
  Mem[17] <=JZ;
  Mem[18] <=28;
  Mem[19] <=MOV_A_ad;    // команда пересылка байта взятого из аккумулятора по адрессу
  
  Mem[20] <=9;
  Mem[21] <=MOV_ad;      // команда пересылка байта взятого по адрессу в аккумулятор
  Mem[22] <=11;
  Mem[23] <=INC;
  
  Mem[24] <=MOV_A_ad;
  Mem[25] <=11;
  Mem[26] <=GOTO;
  Mem[27] <=08;
  
  //----обработка входных портов
  
  
  Mem[28] <=DELAY ;  
   //UART_TX
  Mem[29] <=RTS485; //подготовка драйвера 485 шины к приёму данных
  Mem[30] <=0;
  Mem[31] <=NOP ;   
  Mem[32] <=LD_INPALL_MeM; //считываем и записываем данные с входных портов  в память с 138 - 143 ячейки
 
  Mem[33] <=NOP ;
  Mem[34] <=NOP ;   
  //------------------------------
   
 
  Mem[35] <=RFU;
  Mem[36] <=LD_UART_RX_A;  // команда пересылка байта из приёмного порта UART  в аккумулятор
  Mem[37] <=MOV_to_Rn;     // команда пересылка байта в регистр Rn
  Mem[38] <="~";
  
  Mem[39] <=JIF_Rn;        // команда перехода если аккумулятор равен байту в регистре Rn по следующему адрессу
  Mem[40] <=43; //m1
  Mem[41] <=GOTO;          // безусловный переход по следующему адресу
  Mem[42] <=47; //m2
  //m1
  Mem[43] <=MOV;           // команда пересылка байта в аккумулятор
  Mem[44] <=220;
  Mem[45] <=LD_A_Adr;      // команда пересылка байта из аккумулятора по адрессу 
  Mem[46] <=48; //m3
  //m2
  Mem[47] <=LD_UART_RX;    // команда пересылка байта из приёмного порта UART  по адресу
  //m3
  Mem[48] <=220; 
  Mem[49] <=MOV_ad;        // команда пересылка байта взятого по адрессу в аккумулятор
  Mem[50] <=48; //m3
  Mem[51] <=INC;           // команда увеличения на еденицу аккумулятора

  Mem[52] <=MOV_to_Rn;     // команда пересылка байта в регистр Rn
  Mem[53] <=250;
  Mem[54] <=JIF_Rn;        // команда перехода если аккумулятор равен байту в регистре Rn по следующему адрессу
  Mem[55] <=29; //UART_TX
  Mem[56] <=NOP;           // пустая команда
 
  Mem[57] <=MOV_A_ad;      // команда пересылка байта взятого из аккумулятора по адрессу 
  Mem[58] <=48; //m3
  Mem[59] <=LD_UART_RX_A;
  Mem[60] <=MOV_to_Rn;

  Mem[61] <=";";
  Mem[62] <=JIF_Rn;
  Mem[63] <=66;//m6
  Mem[64] <=GOTO;

  Mem[65] <=29;//UART_TX
  //m6
  Mem[66] <=MOV_ad;         // помещаем в аккумулятор байт по адресу 101 - адресс устройства в пачке
  Mem[67] <=221;
  Mem[68] <=MOV_to_Rn;

  Mem[69] <="5";
  Mem[70] <=JIF_Rn;  //проверка что адрес пачки равен нашему адресу
  Mem[71] <=90;   // если адрес пачки равен нашему адресу - то идти исполнять.... 90
  Mem[72] <=GOTO;

  Mem[73] <=29;//UART_TX 
  
 //----------------------------- 
 //подготавливаем вывод пачки про входные порты
  //m5
  Mem[74] <=MOV;
  Mem[75] <=19;        //длинна пачки
  Mem[76] <=MOV_A_ad;
  Mem[77] <=9;        //отправляем  длинну пачки по адресу 1
  Mem[78] <=MOV;
  Mem[79] <=128;      //начальный адрес пачки
  Mem[80] <=MOV_A_ad;
  Mem[81] <=11;        // отправляем начальный адрес по адресу 3
  Mem[82] <=RTS485;   //устанавливаем драйвер 485 шины на выход
  Mem[83] <=1; 
  Mem[84] <=GOTO;
  Mem[85] <=0;
  //------------------------------------------------------------
    
  Mem[90]  <=MOV_ad;         // помещаем в аккумулятор байт по адресу 101 - адресс устройства в пачке
  Mem[91]  <=223;
  Mem[92]  <=MOV_to_Rn;
  Mem[93]  <="I";
  Mem[94]  <=JIF_Rn;  //проверка что первый знак команды  равен нашему контрольному
  Mem[95]  <=98;   // если да - то идти исполнять.... 101
  Mem[96]  <=GOTO;
  Mem[97]  <=106;//если нет то ...

  Mem[98]  <=MOV_ad;         // помещаем в аккумулятор байт по адресу 101 - адресс устройства в пачке
  Mem[99]  <=224;
  Mem[100] <=MOV_to_Rn;
  Mem[101] <="N";
  Mem[102] <=JIF_Rn;   //проверка что второй знак команды  равен нашему контрольному
  Mem[103] <=74;   // если адрес пачки равен нашему адресу - то идти исполнять.... 74
  Mem[104] <=GOTO;
  Mem[105] <=29;//UART_TX 
  
  Mem[106] <=MOV_to_Rn;
  Mem[107] <="O";
  Mem[108] <=JIF_Rn;   //проверка что первый знак команды  равен нашему контрольному
  Mem[109] <=112;   // если адрес пачки равен нашему адресу - то идти исполнять.... 111
  Mem[110] <=GOTO;
  Mem[111] <=29;//если нет то ...
  
  Mem[112]  <=MOV_ad;         // помещаем в аккумулятор байт по адресу 101 - адресс устройства в пачке
  Mem[113]  <=224;
  Mem[114]  <=MOV_to_Rn;
  Mem[115]  <="U";
  Mem[116]  <=JIF_Rn;   //проверка что второй знак команды  равен нашему контрольному
  Mem[117]  <=120;   // если адрес пачки равен нашему адресу - то идти исполнять.... 119
  Mem[118]  <=GOTO;
  Mem[119]  <=29;//UART_TX 
  
  Mem[120]  <=MOV_ad;         // помещаем в аккумулятор байт по адресу 101 - адресс устройства в пачке
  Mem[121]  <=225;
  Mem[122]  <=MOV_to_Rn;
  Mem[123]  <="T";
  Mem[124]  <=JIF_Rn;   //проверка что третий знак команды  равен нашему контрольному
  Mem[125]  <=190;   // если адрес пачки равен нашему адресу - то идти исполнять.... 190
  Mem[126]  <=GOTO;
  Mem[127]  <=29;//UART_TX 
 
//подготовленная пачка с ответом по входным портам ячейки 1У-К615
 
  Mem[128] <="~";
  Mem[129] <="1";
  Mem[130] <=" ";
  Mem[131] <="I";
  Mem[132] <="N";
  Mem[133] <="P";
  Mem[134] <="O";
  Mem[135] <="R";
  Mem[136] <="T";
  Mem[137] <=":";
  Mem[138] <=".";  // INPORT1
  Mem[139] <=".";  // INPORT2
  Mem[140] <=".";  // INPORT3
  Mem[141] <=".";  // INPORT4
  Mem[142] <=".";  // INPORT5
  Mem[143] <=".";  // INPORT6
  Mem[144] <=";"; 
  Mem[145] <=8'h0d;
  Mem[146] <=8'h0a;
  
 //----------------------------------------------------------
 
 //подготовленная пачка с контрольной командой по выходным портам ячейки 1У-К615
 
  Mem[147] <="~";
  Mem[148] <="1";
  Mem[149] <=" ";
  Mem[150] <="O";
  Mem[151] <="U";
  Mem[152] <="T";
  Mem[153] <="P";
  Mem[154] <="O";
  Mem[155] <="R";
  Mem[156] <="T";
  Mem[157] <=":";
  Mem[158] <=".";  // OUTPORT1
  Mem[159] <=".";  // OUTPORT2
  Mem[160] <=".";  // OUTPORT3
  Mem[161] <=".";  // OUTPORT4
  Mem[162] <=".";  // OUTPORT5
  Mem[163] <=".";  // OUTPORT6 
  Mem[164] <=";"; 
  Mem[165] <=8'h0d;
  Mem[166] <=8'h0a;
  
 //----------------------------------------------------------

  
//-------------------------- 
  Mem[170] <="~";
  Mem[171] <="1";
  Mem[172] <=" ";
  Mem[173] <="S";
  Mem[174] <="T";
  Mem[175] <="A";
  Mem[176] <="R";
  Mem[177] <="T";
  Mem[178] <=" ";
  Mem[179] <=";";
  
  Mem[180] <=8'h0d;
  Mem[181] <=8'h0a;
  
//********вывод данных на порты******************

//***проверка контрольной суммы***
  Mem[182] <=MOV;
  Mem[183] <=crc_reg1;
  Mem[184] <=MOV_ad_Rn;
  Mem[185] <=238;
  Mem[186] <=JIF_Rn;
  Mem[187] <=193;  //если контрольные суммы совпадают то - выполнять 193
  Mem[188] <=GOTO;
  Mem[189] <=29;   // если нет - идти 20
  
//***проверка контрольной суммы***
  Mem[190] <=NOP;
  Mem[191] <=RTS485;
  Mem[192] <=1;
 
  Mem[193] <=LD_P1;
  Mem[194] <=231;
  Mem[195] <=LD_P2;
  Mem[196] <=232;
  Mem[197] <=LD_P3;
  Mem[198] <=233;
  
  Mem[199] <=LD_P4;
  Mem[200] <=234;
  Mem[201] <=LD_P5;
  Mem[202] <=235;
  Mem[203] <=LD_P6;
  Mem[204] <=236;
  
  
//----------------------------- 
 //подготавливаем вывод пачки про выходные порты
  
  Mem[205] <=MOV;
  Mem[206] <=20;  //длинна пачки
  Mem[207] <=MOV_A_ad;
  Mem[208] <=9;   //отправляем  длинну пачки по адресу 1
  Mem[209] <=MOV;
  Mem[210] <=147;  //начальный адрес пачки
  Mem[211] <=MOV_A_ad;
  Mem[212] <=11;   // отправляем начальный адрес по адресу 3
  Mem[213] <=GOTO;
  Mem[214] <=0;
  //------------------------------------------------------------
  
//************************  
RTS_485_reg<=1;
 

      jump<=0;
     port1_reg<=0;
     port2_reg<=0;
 uart_port<=0;
 send_flag<=0;
/*
      us_r<=0;
      ms_r<=0;
       s_r<=0;
     min_r<=0;
       h_r<=0;

       tk1<=0;
       tk2<=0;
       tk3<=0;
*/
  sch_data<=0;
     flag1<=0;
   	d_code<=0;

       sch<=0;
	   
    IFU_FLAG     		<=0; 
    MOV_Rn_flag  		<=0; 
    MOV_flag	 		<=0;     // флаги процессов
    MOVad_flag   		<=0;
    MOV_A_ad_flag		<=0;
   
   LD_P1_flag	 		<=0;
   LD_P2_flag			<=0;
   LD_P3_flag	 		<=0;
   LD_P4_flag	 		<=0;
   LD_P5_flag	 		<=0;
   LD_P6_flag	 		<=0;
   LD_UART_flag	 		<=0;
   LD_A_Adr_flag 		<=0;
   MOV_to_Rn_flag       <=0;
   MOV_ad_Rn_flag       <=0;
   
   
   PUSH_flag			<=0;	
    POP_flag			<=0;
 ADD_Rn_flag			<=0;
 ADD_ad_flag			<=0;
  ADD_flag				<=0;
 SUB_Rn_flag			<=0;
 SUB_ad_flag			<=0;
 SUB_flag				<=0;
    INC_flag			<=0;
    DEC_flag			<=0; 
    CLR_flag			<=0;
     RL_flag 			<=0;
     RR_flag			<=0;
    RET_flag			<=0;
   SWAP_flag			<=0;
   
   RTS485_flag          <=0;
   LD_INP16_A_flag      <=0;
   LD_INPALL_MeM_flag   <=0;

    JZ_flag	    		<=0;
   	JNZ_flag			<=0;
	JIF_Rn_flag 		<=0;
   LCALL_flag			<=0;
     NOP_flag			<=0;
	 
	GOTO_flag   		<=0; 
	
	DELAY_flag          <=0;
	
	LD_UART_RX_flag		<=0;
	LD_UART_RX_A_flag	<=0;
	
	uart_rx_work_flag   <=0; 
	 
	 sch_stack  		<=0; 

end 

else if ((Process==0)&&(flag1==0))

begin

if (sch_data<4) sch_data<=sch_data+1; else flag1<=1;  // загрузка команды с данными в стек, относительный адрес
				     sch<=sch_abs+sch_data;           // абсалютный адрес
send_flag<=0;

end

else if ((flag1))

begin


 
case (stack[0]) 
		
	IFU     	 : begin    IFU_FLAG     	  <=1;                                                             d_code<=1;  end
	RFU     	 : begin    RFU_FLAG     	  <=1;       uart_rx_work_flag <= 0;                               d_code<=1;  end
	
	LD_P1   	 : begin    LD_P1_flag   	  <=1; port1_reg  <= Mem[stack[1] ] ; Mem[158] <= Mem[stack[1] ] ; d_code<=2;  end
	LD_P2   	 : begin    LD_P2_flag   	  <=1; port2_reg  <= Mem[stack[1] ] ; Mem[159] <= Mem[stack[1] ] ; d_code<=2;  end  
	LD_P3   	 : begin    LD_P3_flag   	  <=1; port3_reg  <= Mem[stack[1] ] ; Mem[160] <= Mem[stack[1] ] ; d_code<=2;  end
	LD_P4   	 : begin    LD_P4_flag   	  <=1; port4_reg  <= Mem[stack[1] ] ; Mem[161] <= Mem[stack[1] ] ; d_code<=2;  end	
	LD_P5   	 : begin    LD_P5_flag   	  <=1; port5_reg  <= Mem[stack[1] ] ; Mem[162] <= Mem[stack[1] ] ; d_code<=2;  end
	LD_P6   	 : begin    LD_P6_flag   	  <=1; port6_reg  <= Mem[stack[1] ] ; Mem[163] <= Mem[stack[1] ] ; d_code<=2;  end
	
	
	RTS485   	 : begin   RTS_time<=16'd5; RTS485_flag   	  <=1; RTS_485_reg <= stack[1]      ;   sch_abs<=sch_abs+2;                                d_code<=2;  end
	
	LD_INP1_A  	    : begin    LD_INP1_A_flag 	  <=1;                       A <=         INPORT1      ;                             d_code<=1;  end
	LD_INP2_A  	    : begin    LD_INP2_A_flag 	  <=1;                       A <=         INPORT2      ;                             d_code<=1;  end
	LD_INP3_A  	    : begin    LD_INP3_A_flag 	  <=1;                       A <=         INPORT3      ;                             d_code<=1;  end
	LD_INP4_A  	    : begin    LD_INP4_A_flag 	  <=1;                       A <=         INPORT4      ;                             d_code<=1;  end
	LD_INP5_A  	    : begin    LD_INP5_A_flag 	  <=1;                       A <=         INPORT5      ;                             d_code<=1;  end
	LD_INP16_A 	    : begin    LD_INP16_A_flag    <=1;                       A <=   {INPORT1,INPORT6}  ;                             d_code<=1;  end
	LD_INPALL_MeM   : begin    LD_INPALL_MeM_flag <=1;
														
														Mem[138]<=INPORT1;
														Mem[139]<=INPORT2;
														Mem[140]<=INPORT3;
														Mem[141]<=INPORT4;
														Mem[142]<=INPORT5;
														Mem[143]<=INPORT6;                                                       d_code<=1;  end
	
	
	LD_UART 	 : begin    LD_UART_flag 	  <=1;          uart_port      <=       Mem[stack[1] ] ;                             d_code<=2;  end
	LD_UART_RX   : begin    LD_UART_RX_flag   <=1;          Mem[ stack[1]] <=       uart_port_RX   ;                             d_code<=2;  end
	LD_UART_RX_A : begin    LD_UART_RX_A_flag <=1;                       A <=       uart_port_RX   ;                             d_code<=1;  end
	LD_A_Adr	 : begin    LD_A_Adr_flag	  <=1;          Mem[ stack[1]] <=           A          ;	                         d_code<=2;  end
	
	MOV_A_ad 	 : begin    MOV_A_ad_flag	  <=1;          Mem[ stack[1]] <=           A          ;	    	                 d_code<=2;  end	
	MOV_A_Rn 	 : begin    MOV_Rn_flag  	  <=1;                       A <=           stack[1]   ;	    	                 d_code<=2;  end	
	MOV  	 	 : begin    MOV_flag     	  <=1;                       A <=           stack[1]   ;	    	                 d_code<=2;  end
	MOV_to_Rn 	 : begin    MOV_to_Rn_flag 	  <=1;                      Rn <=           stack[1]   ;	    	                 d_code<=2;  end	
	MOV_ad   	 : begin    MOVad_flag   	  <=1;                       A <=       Mem[stack[1] ] ; 		                     d_code<=2;  end	
	MOV_ad_Rn  	 : begin    MOV_ad_Rn_flag 	  <=1;                      Rn <=       Mem[stack[1] ] ; 		                     d_code<=2;  end
	PUSH 	 	 : begin    PUSH_flag    	  <=1;    Stack_MeM[sch_stack] <=       Mem[stack[1] ] ; sch_stack<=sch_stack+1;     d_code<=2;  end	
	POP 	 	 : begin    POP_flag     	  <=1;          Mem[ stack[1]] <= Stack_MeM[sch_stack] ; sch_stack<=sch_stack-1;     d_code<=2;  end	
	ADD_Rn 	 	 : begin    ADD_Rn_flag  	  <=1;                        A<=  A+Rn;                                             d_code<=1;  end
	
	ADD  	 	 : begin    ADD_flag    	  <=1;     A<=A+     stack[1]  ;		      										d_code<=2; 	 end
	ADD_ad	 	 : begin    ADD_ad_flag  	  <=1;     A<=A+ Mem[stack[1] ];		     									    d_code<=2; 	 end	
	SUB_Rn 	 	 : begin    SUB_Rn_flag  	  <=1;     A<=A+Rn             ;          									        d_code<=1;   end	
	SUB_ad 	 	 : begin    SUB_ad_flag  	  <=1;     A<=A- Mem[stack[1] ];		     										d_code<=2;	 end	
	SUB  	 	 : begin    SUB_flag     	  <=1;     A<=A-     stack[1]  ;		     										d_code<=2; 	 end
	INC 	 	 : begin    INC_flag     	  <=1;     A<=A+1; 			                									    d_code<=1;   end 			
	DEC 	 	 : begin    DEC_flag     	  <=1;     A<=A-1; 			           										        d_code<=1;   end           
	
	CLR		 	 : begin    CLR_flag	 	  <=1;     A<=0; 			                									    d_code<=1;   end	
	RL 	 	 	 : begin    RL_flag 	 	  <=1;     A<=A<<1; 			             										d_code<=1; 	 end	
	RR 	 	 	 : begin    RR_flag      	  <=1;     A<=A>>1; 			               										d_code<=1; 	 end	
	RET 	 	 : begin    RET_flag     	  <=1;                                   										    d_code<=1; 	 end	
	SWAP 	 	 : begin    SWAP_flag    	  <=1;     A<={A[7:0],A[15:8]}; 			   										d_code<=1; 	 end

	GOTO	 	 : begin    GOTO_flag    	  <=1;               jump<= stack[1];      										    d_code<=2;   end	
	
	JZ		 	 : begin    JZ_flag      	  <=1;    if (A==0 )  jump<= stack[1]; else jump<=sch_abs+2;              		    d_code<=2; 	 end	
	JNZ 	 	 : begin    JNZ_flag     	  <=1;    if (A!=0 )  jump<= stack[1]; else jump<=sch_abs+2;        		    	d_code<=2;   end
	JIF_Rn 	 	 : begin    JIF_Rn_flag    	  <=1;    if (A==Rn)  jump<= stack[1]; else jump<=sch_abs+2;        		    	d_code<=2;   end
	LCALL 	 	 : begin    LCALL_flag   	  <=1;   	          jump<= stack[1]; 										        d_code<=2; 	 end	
	NOP 	 	 : begin    NOP_flag     	  <=1;                                      										d_code<=1; 	 end	
	DELAY 	 	 : begin    DELAY_flag     	  <=1;   delay_reg<=60000;   sch_abs<=sch_abs+1;     				    			d_code<=1; 	 end	
	
	
	  
	
	endcase	

	

	
	flag1   <=0;
	sch_data<=0;
	
	
end

else if ((Process)) 

begin

if (JZ_flag||JNZ_flag||LCALL_flag||GOTO_flag||JIF_Rn_flag) sch_abs<=jump; else if (!((DELAY_flag||RTS485_flag))) sch_abs<=sch_abs+d_code; 

case (stack[0])


	IFU      	: begin   if (TX_ready    ) IFU_FLAG       	           	   <=0;     					 d_code<=0;  	    end	
	RFU      	: begin   if (uart_rx_flag) RFU_FLAG       	               <=0; uart_rx_work_flag<=1;    d_code<=0;         end	
	LD_P1	 	: begin  					 LD_P1_flag         	       <=0;        	          	  						end	
	LD_P2	 	: begin   				 	 LD_P2_flag    		           <=0;       		      	   						end	   
	LD_P3	 	: begin  				 	 LD_P3_flag         	       <=0;        	          	   						end	
	LD_P4	 	: begin   				 	 LD_P4_flag    		           <=0;       		      	   						end	
	LD_P5	 	: begin  				 	 LD_P5_flag         	       <=0;        	          	   						end	
	LD_P6	 	: begin   				 	 LD_P6_flag    		           <=0;       		      	   						end	
	
	RTS485	 	: begin /* if (RTS_time!=0) RTS_time<=RTS_time-1; else*/	 RTS485_flag      <=0;     	   						end

    LD_INP1_A 	  : begin   				 	 LD_INP1_A_flag		       <=0;       		      	   						end	
	LD_INP2_A 	  : begin   				 	 LD_INP2_A_flag		       <=0;       		      	   						end
	LD_INP3_A 	  : begin   				 	 LD_INP3_A_flag		       <=0;       		      	   						end	
	LD_INP4_A 	  : begin   				 	 LD_INP4_A_flag		       <=0;       		      	   						end	
	LD_INP5_A 	  : begin   				 	 LD_INP5_A_flag		       <=0;       		      	   						end	
	LD_INP16_A 	  : begin   				 	 LD_INP16_A_flag	       <=0;       		      	   						end	
	LD_INPALL_MeM : begin   				 	 LD_INPALL_MeM_flag	       <=0;       		      	   						end	
	
	LD_UART	 	: begin   send_flag<=1; if (TX_ready) LD_UART_flag     	   <=0;      	               						end	
	LD_UART_RX	: begin                  LD_UART_RX_flag                   <=0;      	               						end	
	LD_UART_RX_A: begin                  LD_UART_RX_A_flag                 <=0;      	               						end	
	LD_A_Adr 	: begin   				 LD_A_Adr_flag   			       <=0;                    	   						end	
		
	MOV_A_ad 	: begin   				 MOV_A_ad_flag   			   <=0;   	           							   	   end
	MOV_A_Rn 	: begin   				 MOV_Rn_flag     			   <=0;                        							end
	MOV  	 	: begin   				 MOV_flag        			   <=0;   	                   							end	
	MOV_to_Rn 	: begin   				 MOV_to_Rn_flag    			   <=0;   	                   							end	
	MOV_ad_Rn 	: begin   				 MOV_ad_Rn_flag    			   <=0;   	                   							end	
	MOV_ad   	: begin  				 MOVad_flag      			   <=0;   	                   							end	
	PUSH 	 	: begin  				 PUSH_flag       			   <=0;                        end	
	POP 	 	: begin    			     POP_flag       			   <=0;    	                   end	
	ADD_Rn 	 	: begin    			     ADD_Rn_flag     			   <=0;                        end
	
	ADD	     	: begin    			     ADD_flag        			   <=0;       			       end	
	ADD_ad 	 	: begin   				 ADD_ad_flag     			   <=0;   	 			       end	
	SUB_Rn 	 	: begin   				 SUB_Rn_flag     		       <=0;   	 			       end	
	SUB_ad 	 	: begin   				 SUB_ad_flag     			   <=0;   	 			       end	
	SUB 	 	: begin   				 SUB_flag       			   <=0;        			       end 	
	
	INC 	 	: begin   				 INC_flag        			   <=0;        			       end
	DEC	     	: begin   				 DEC_flag       			   <=0;        			       end	
	CLR 	 	: begin   				 CLR_flag        			   <=0;   	 			       end	
	RL 	     	: begin   				 RL_flag         			   <=0;   	 			       end	
	RR 	     	: begin   				 RR_flag         			   <=0;   	 			       end	
	RET 	 	: begin   				 RET_flag        			   <=0;       			       end 
	
	SWAP	 	: begin   				 SWAP_flag       			   <=0;       			       end	
	GOTO	 	: begin                  GOTO_flag       			   <=0;       			       end	
	JZ 	     	: begin   				 JZ_flag         			   <=0;   				       end	
	JNZ 	 	: begin   				 JNZ_flag        			   <=0;   	  				   end	
	JIF_Rn 	 	: begin   				 JIF_Rn_flag       			   <=0;   	  				   end	
	LCALL 	 	: begin   				 LCALL_flag      			   <=0;   	 				   end	
	NOP 	 	: begin   				 NOP_flag        			   <=0;        				   end 
	DELAY 	 	: begin      	if (delay_reg!=0) delay_reg<=delay_reg-1; else  DELAY_flag  	   <=0;        				   end 
		
		
	
	endcase	 




end


always @(negedge clk) 

begin

crc_reg1<=Mem[220]+Mem[221]+Mem[222]+Mem[223]+Mem[224]+Mem[225]+Mem[226]+Mem[227]+Mem[228]+Mem[229]+Mem[230]+Mem[231]+Mem[232]+Mem[233]+Mem[234]+Mem[235]+Mem[236]+Mem[237]+Mem[239]; //контрольная сумма первой посылки

if (rx_ready)	uart_port_RX<=uart_in;
	
	
	if (tick4==3'b001) uart_rx_flag<=1; else if (uart_rx_work_flag==1) uart_rx_flag<=0;
	if (tick5==3'b011) uart_tx_flag<=1; else if (tick5==3'b110) uart_tx_flag<=0;
	
end

always @(posedge clk)

if (reset) 

begin

	tk1<=0;
	tk2<=0;
	tk3<=0;
	
	sch_tk<=0;

end else

begin

if (tick1==3'b011) tk1<=1; else tk1<=0; 

if (tick2==3'b011) tk2<=1; else tk2<=0; 

if (tick3==3'b011) tk3<=1; else tk3<=0; 



	
	if (tk1||tk2||tk3) 
	
		begin 
		
	        sch_tk <=sch_tk+1; 
	data_tk[sch_tk]<={tk1,tk2,tk3,min_r[2:0],s_r[5:0],ms_time[9:0],us_time[9:0]};
	
	
	
		end
	
	
	
     us_r<=us_time;
     ms_r<=ms_time;
      s_r<=s;
    min_r<=min;
	  h_r<=h; 
	  
	end

always @(posedge clk) tick1<={tick1[1:0],TK1 };
always @(posedge clk) tick2<={tick2[1:0],TK2 };
always @(posedge clk) tick3<={tick3[1:0],TK3 };
always @(posedge clk) tick4<={tick4[1:0],rx_ready };		
always @(posedge clk) tick5<={tick5[1:0],TX_ready };


endmodule





















