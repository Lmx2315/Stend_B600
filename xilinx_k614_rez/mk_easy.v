//-----------------------------------------------------------------------------
//
// Title       : mk_easy
// Design      : sinh1_v1
// Author      : Microsoft
// Company     : Microsoft
//
//-----------------------------------------------------------------------------
//
// File        : mk_easy.v
// Generated   : Wed Oct 30 15:36:37 2013
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
//{module {mk_easy}}
module mk_easy ( clk,in_TOBM ,in_data ,start ,wr1,wr2,wr3,wr4,wr5,wr6,wr7 ,adr_r,adr_w ,data_wr ,str,str2 , str3,tst_sig,usec,usX,uart_tx,uart_flag);

output  tst_sig ;
wire   tst_sig ;	

output   wr1 ;
wire  wr1 ;	

output  wr2 ;
wire   wr2 ;		   

output   wr3 ;
wire wr3 ;

output   wr4 ;
wire   wr4;

output  wr5 ;
wire   wr5 ;	  

output   wr6 ;
wire   wr6 ;  

output   wr7;
wire   wr7 ;

output [7:0] adr_r ;
wire [7:0] adr_r ;	

output [7:0] adr_w ;
wire [7:0] adr_w ;	

output [31:0] data_wr ;
wire [31:0] data_wr ;


output [31:0] usec ;
wire [31:0] usec ;

output [31:0] usX ;
wire [31:0] usX ;

output str ;
wire str ;		

output str2 ;
wire str2 ;	

output str3 ;
wire str3 ;	

input in_TOBM ;
wire in_TOBM ;

input clk ;
wire clk ;
input [7:0] in_data ;
wire [7:0] in_data ;
input start ;
wire start ;


output [7:0] uart_tx ;
wire [7:0] uart_tx ;

output  uart_flag ;
wire   uart_flag ;	

// коды команд	  

parameter dataN=255;	 // число данных в пачке - 1=32-1;
 
parameter   C_1  	  		=8'h30;		// команда установки текущего времени - дни
parameter 	C_2 	  		=8'h31;		// команда установки текущего времени - часы	
parameter 	C_3 	  		=8'h32;		// команда установки текущего времени - минуты
parameter 	C_4 	  		=8'h33;		// команда установки текущего времени - секунды
parameter 	C_5 	  		=8'h34;		// команда установки текущего времени - миллисекунды
parameter 	C_6 	  		=8'h35;		// команда установки текущего времени - микросекунды

parameter   C_21      	=8'h40;		// команда установки Х времени - часы
parameter 	C_31      	=8'h41;		// команда установки Х времени - минуты	
parameter 	C_41      	=8'h42;		// команда установки Х времени - секунды
parameter 	C_51      	=8'h43;		// команда установки Х времени - миллисекунды
parameter 	C_61      	=8'h44;		// команда установки Х времени - микросекунды	

parameter 	Sync       	=8'h52;		// команда начала циклограммы
parameter 	Cgr       	=8'h50;		// команда начала циклограммы
parameter 	Cgr_end  	=8'h51;		// команда окончание циклограммы

parameter   end_pgrm    =8'hfe; // код  команды конец программы
		  
parameter     Start_BP  =8'haa; // код начала пакета	
parameter   crc_packet  =8'hee; // код  команды контрольной суммы пакета	
parameter 	NOP		   =8'h77;		// пустая команда		
parameter 	str_on		=8'h78;		// пустая команда	
parameter 	str_off		=8'h79;		// пустая команда	

parameter 	tst_sig_on	=8'h88;		// пустая команда	
parameter 	tst_sig_off	=8'h89;		// пустая команда	

parameter   TOBM=8'h0d;		
parameter 	TNO =8'h01;
parameter 	TNC =8'h02;
parameter 	TNI =8'h03;
parameter 	TNP =8'h04;
parameter 	TKI =8'h05;
parameter 	TKP =8'h06;
parameter 	Dniu=8'h07;	
parameter 	Dni =8'h08;
parameter   Dnpu=8'h09;
parameter 	Dnp =8'h0a;
parameter   Dip =8'h0b;
parameter   Dii =8'h0c;	 
parameter   Dtnc=8'h0e;	  
parameter   End =8'hff;	 // приказ - конец циклограммы		 	 

reg [15:0] interval=0;  // переменный интервал 
reg [15:0] delay=0;     // счётчик задержек	  
reg start_reg=0;		// флаг старта процесса времени
reg str2_reg=0;		// флаг старта процесса
reg str3_reg=0;		// флаг старта процесса
	  
reg [7:0] sch=0;			//счётчик памяти
reg [7:0] sch_data=0;
reg [7:0] sch_abs=0;   
reg [7:0] sch_rezerv=0;
reg [2:0] tick=0;
reg [15:0] stack  [6:0];	  
reg [7:0 ] stack2 [6:0]; //стек данных
reg [15:0] comand;
reg [15:0] data1;
reg [15:0] data2;
reg [7:0]  data_len=0;  // длинна DATA записи в байтах

reg w1,w2,w3,w4,w5,w6,w7;

reg [7:0]  dni_reg=0;
reg [7:0]  h_reg  =0;
reg [7:0]  min_reg=0;
reg [7:0]  sec_reg=0;  
reg [15:0] msec_reg=0;
reg [31:0] usec_reg=0;

reg [7:0]  denX_reg=0;
reg [7:0]  hX_reg  =0;
reg [7:0]  minX_reg=0;
reg [7:0]  secX_reg=0;
reg [15:0] msX_reg =0;
reg [31:0] usX_reg =0; 

reg [7:0] test_reg=0;

reg [7:0] code_process =0;  // код задействвованного процесса
reg   str_on_flag  =0;
reg   str_off_flag =0;
reg   NOP_flag =0;
reg   TOBM_flag=0;     // флаги процессов
reg   TNO_flag =0;	
reg   TNC_flag =0;
reg   TNI_flag =0;
reg   TNP_flag =0;
reg   TKI_flag =0;
reg   TKP_flag =0;
reg   Dni_flag =0;
reg  Dniu_flag =0; 
reg  Dnpu_flag =0;
reg   Dnp_flag =0;
reg   Dip_flag =0;
reg   Dii_flag =0;
reg  Dtnc_flag =0;	 
reg  Sync_flag =0;

reg     C1_flag=0;
reg     C2_flag=0;
reg     C3_flag=0;
reg     C4_flag=0;
reg     C5_flag=0;
reg     C6_flag=0;

reg    C11_flag=0;
reg    C21_flag=0;
reg    C31_flag=0;
reg    C41_flag=0;
reg    C51_flag=0;
reg    C61_flag=0; 
reg    Cgr_flag=0;
reg 	 tst_sig_on_flag=0;
reg   tst_sig_off_flag=0;  

reg 	flag_data=0;

reg   end_prgrm_flag=0;

reg [7:0] puls=8'b00011000;


reg [7:0] flag_uart=0;
reg flag1=0;
reg flag2=0; 

reg [2:0] tick_obm=0;

reg tst_sig_reg=0;

reg flag_start=0;

reg [7:0] d_code=0;	   
reg flag_abs=0;
reg sync_reg=0;

//--------------------

reg flag_str=0;
reg flag_str2=0;
reg [7:0] sch_str=0;
reg str_out_reg=0;
reg str2_out_reg=0;
//----------------------

wire   Process;   
wire   Process2;

assign Process2=  TNO_flag |TNC_flag|TOBM_flag|
			      TNI_flag|TNP_flag|TKI_flag |TKP_flag; // проверка процессов на активность (не поднят ли какой флаг?)

assign Process=C1_flag|C2_flag |C3_flag       |C4_flag |C5_flag    |C6_flag     |C11_flag|C21_flag|C31_flag|C41_flag|C51_flag|C61_flag|
				 TNO_flag |TNC_flag|end_prgrm_flag|Cgr_flag|str_on_flag|str_off_flag|tst_sig_on_flag  |tst_sig_off_flag |
				  TNI_flag|TNP_flag|TKI_flag      |TKP_flag|NOP_flag   |Sync_flag| 
				 Dniu_flag|Dni_flag|Dnpu_flag     |Dnp_flag|
		        Dip_flag|Dii_flag|TOBM_flag     |Dtnc_flag; // проверка процессов на активность (не поднят ли какой флаг?)

assign  dni=dni_reg;
assign  h_s=h_reg;
assign  min=min_reg;
assign  sec=sec_reg;
assign  usec=usec_reg;

assign  h_X=hX_reg;
assign minX=minX_reg;
assign secX=secX_reg;
assign  msX=msX_reg;
assign  usX=usX_reg;

//assign adr_r=(~Process)?sch:(adr_w+sch_abs);

assign adr_r=sch;	  
assign str2=str2_reg;
assign str3=Sync_flag;
assign tst_sig=tst_sig_reg;

//управление памятью разных сигналов синхронизатора

assign wr1=TNO_flag;
assign wr2=TNC_flag;
assign wr3=TOBM_flag;
assign wr4=TNI_flag;
assign wr5=TKI_flag;
assign wr6=TNP_flag;
assign wr7=TKP_flag;

assign adr_w=stack[1]-data_len;
assign data_wr={stack2[1],stack2[2],stack2[3],stack2[4]};	   

assign 	str=flag_str; 		 // конец программы и старт исполнительным устройствам	  

//тестовый вывод в уарт
assign uart_tx=stack[0];
assign uart_flag= TNO_flag;	// старт вывод по флагу TNC	   
//******************************


always @(posedge clk)
begin

		if (Sync_flag) 
			begin
			sch_str<=0;
			flag_str<=1;
			end else
					
					if (flag_str) if (sch_str<100) sch_str<=sch_str+1; else 	flag_str<=0;

end

always @(posedge clk) 

begin 

 test_reg<= in_data;
 
 if ((Process==0)&&(flag1==0)&&(end_prgrm_flag==0)&&(flag_start==1)) stack[sch_data-1]<=in_data;

 if ((flag_data==1)&&(flag_start==1)) stack2[sch_data]<=in_data;	

 end
			  
always @(posedge clk) tick<={tick[1:0],start};

always @(posedge clk) if (tick==3'b011) start_reg<=1; else start_reg<=0;




always @(negedge clk)



if (start_reg)

begin

   //    sch<=2;  // стартовый адрес пакета (первые два байта - это начало пакета и адрес)
   flag_abs<=0;
   
   puls<=8'b00011000;
   sch_data<=0;
     flag1<=0;
     flag2<=0;
	d_code<=0;
   sch_abs<=2;
   
  TOBM_flag<=0;     // флаги процессов
  TNO_flag <=0;	
  TNC_flag <=0;
  TNI_flag <=0;
  TNP_flag <=0;
  TKI_flag <=0;
  TKP_flag <=0;
  Dni_flag <=0;
 Dniu_flag <=0; 
 Dnpu_flag <=0;
  Dnp_flag <=0;
  Dip_flag <=0;
  Dii_flag <=0;
 Dtnc_flag <=0;	
 Sync_flag <=0;

    C1_flag<=0;
    C2_flag<=0;
    C3_flag<=0;
    C4_flag<=0;
    C5_flag<=0;
	 C6_flag<=0;

   C11_flag<=0;
   C21_flag<=0;
   C31_flag<=0;
   C41_flag<=0;
   C51_flag<=0;
   C61_flag<=0;

	str_on_flag<=0;
   str_off_flag<=0;
	NOP_flag<=0;
	tst_sig_on_flag<=0;
	tst_sig_off_flag<=0;
	
	 dni_reg <=0;
	   h_reg <=0;
    min_reg <=0;
	 
	  sec_reg <=0;
	   msec_reg<=0;
		usec_reg<=0;
		 hX_reg<=0;
      minX_reg<=0;
		 secX_reg<=0;
        msX_reg<=0;
		  
		  usX_reg<=0;
		tst_sig_reg<=0;
		 sync_reg<=0; 
       str2_reg<=0;	
		  
 
     d_code<=0;
   
   flag_data<=0;  
   
   Cgr_flag<=0;
   
   code_process <=0;
   end_prgrm_flag<=0;   // флаг конца программы	
   
   flag_uart<=8'b00000010;
   
   	 flag_start<=1;
  
	//str2_reg<=0; //флаг сброса счётчика массивов-хранителей импульсов
	str3_reg<=0; //флаг сброса счётчика массивов-хранителей импульсов

end

else 

begin


 if ((Process==0)&&(flag1==0)&&(end_prgrm_flag==0)&&(flag_start==1))

begin 
	
	flag_abs<=0;

if (sch_data<7) sch_data<=sch_data+1; else flag1<=1;  // загрузка команды с данными в стек, относительный адрес
				     sch<=sch_abs+sch_data;           // абсалютный адрес

//stack[sch_data-1]<=in_data;	


  
//test_reg <=8'haa;

end

else if ((flag1)&&(flag_start==1))

begin

 //  test_reg<= in_data;	

//flag_uart<=1;	

case (stack[0]) 
		
		
		
	C_1  			  : begin    C1_flag<=1;            dni_reg <= stack[1];		      	                    d_code<=2; 	 code_process <=C_1;      end	
	C_2  			  : begin    C2_flag<=1;              h_reg <= stack[1]; 		   	                       d_code<=2;  	 code_process <=C_2; 	  end	
	C_3 			  : begin    C3_flag<=1;            min_reg <= stack[1]; 		      	                    d_code<=2; 	 code_process <=C_3; 	  end	
	C_4 	 		  : begin    C4_flag<=1;            sec_reg <= stack[1]; 		       	                    d_code<=2; 	 code_process <=C_4; 	  end	
	C_5 	 		  : begin    C5_flag<=1;   msec_reg<={stack[2],stack[1]};  						              d_code<=3;    code_process <=C_5;      end
	C_6 	 		  : begin    C6_flag<=1;   usec_reg<={stack[1],stack[2],stack[3],stack[4]};               d_code<=5;    code_process <=C_6;      end
	
	C_21	 		  : begin   C21_flag<=1;     hX_reg<= stack[1];		        										  d_code<=2; 		       end	
	C_31 	 		  : begin   C31_flag<=1;   minX_reg<= stack[1]; 			     										  d_code<=2;  		       end	
	C_41 	 		  : begin   C41_flag<=1;   secX_reg<= stack[1]; 			     									     d_code<=2; 			    end	
	C_51 	 		  : begin   C51_flag<=1;    msX_reg<={stack[2],stack[1]}; 									     d_code<=3; 			    end	
	C_61 	 		  : begin   C61_flag<=1;     usX_reg<={stack[1],stack[2],stack[3],stack[4]};              d_code<=5;             end	
	
	tst_sig_on 	  : begin   tst_sig_on_flag <=1; tst_sig_reg<=1;				d_code<=1;             end	
	tst_sig_off	  : begin   tst_sig_off_flag<=1; tst_sig_reg<=0;				d_code<=1;             end	
	
	Cgr 	 		  : begin   Cgr_flag<=1;    								      d_code<=1;             end	
	Sync 	 		  : begin   Sync_flag<=1; sync_reg<=1;					      d_code<=1;             end	
	str_on  		  : begin    str_on_flag<=1; str2_reg<=1;	    			   d_code<=1;             end	
	str_off 		  : begin   str_off_flag<=1;   str2_reg<=0;				   d_code<=1;             end	
	NOP     		  : begin       NOP_flag<=1;                   			   d_code<=1;             end	
	end_pgrm		  : begin   end_prgrm_flag<=1; 	                 						              end
	
	TOBM: begin TOBM_flag<=1; flag_data<=1; data_len<=stack[1];   d_code<=2+((stack[1])<<2);  	end	
 	TNO : begin  TNO_flag<=1; flag_data<=1; data_len<=stack[1];   d_code<=2+((stack[1])<<2);  	end
 	TNC : begin  TNC_flag<=1; flag_data<=1; data_len<=stack[1];   d_code<=2+((stack[1])<<2);  	end
 	TNI : begin  TNI_flag<=1; flag_data<=1; data_len<=stack[1];   d_code<=2+((stack[1])<<2);  	end
 	TNP : begin  TNP_flag<=1; flag_data<=1; data_len<=stack[1];   d_code<=2+((stack[1])<<2);  	end
	TKI : begin  TKI_flag<=1; flag_data<=1; data_len<=stack[1];   d_code<=2+((stack[1])<<2);  	end
 	TKP : begin  TKP_flag<=1; flag_data<=1; data_len<=stack[1];   d_code<=2+((stack[1])<<2);  	end

	
 /*	Dniu: begin Dniu_flag<=1; data_len<=stack[1];   d_code<=2+stack[1]; 	end	
 	Dni : begin  Dni_flag<=1; data_len<=stack[1];   d_code<=2+stack[1];  	end
    Dnpu: begin Dnpu_flag<=1; data_len<=stack[1];   d_code<=2+stack[1]; 	end
 	Dnp : begin  Dnp_flag<=1; data_len<=stack[1];   d_code<=2+stack[1];  	end
    Dip : begin  Dip_flag<=1; data_len<=stack[1];   d_code<=2+stack[1];  	end
    Dii : begin  Dii_flag<=1; data_len<=stack[1];   d_code<=2+stack[1];  	end
  	Dtnc: begin Dtnc_flag<=1; data_len<=stack[1];   d_code<=2+stack[1]; 	end	 */
   // End :  start_reg<=0; 
   
  
	
	endcase	 

	flag1   <=0;
	sch_data<=0;
	
	
end

else if ((Process)&&(flag_data==0)&&(flag_start==1)) 

begin


case (stack[0]) 
		
		
		
	C_1  	 : begin    C1_flag<=0;    		   end	
	C_2  	 : begin    C2_flag<=0;      	      end	
	C_3 	 : begin    C3_flag<=0;             end	
	C_4 	 : begin    C4_flag<=0;     	      end	
	C_5 	 : begin    C5_flag<=0;             end
    C_6 	 : begin    C6_flag<=0;             end
	
	C_21	 : begin   C21_flag<=0;             end	
	C_31 	 : begin   C31_flag<=0;   	         end	
	C_41 	 : begin   C41_flag<=0;   		      end	
	C_51 	 : begin   C51_flag<=0;    	   	end	
	C_61 	 : begin   C61_flag<=0;             end 	
	
	tst_sig_on 	  : begin   tst_sig_on_flag <=0;       end	
	tst_sig_off	  : begin   tst_sig_off_flag<=0;       end	
	
	Cgr 	  : begin   Cgr_flag<=0;            end	
	NOP 	  : begin   NOP_flag<=0;        		end 
	Sync    : begin   Sync_flag<=0;  	   end		
	str_on  : begin   str_on_flag<=0;    end	
	str_off : begin   str_off_flag<=0;        end	
	
	end_pgrm : begin   end_prgrm_flag<=0;  flag_start<=0;	   end
	
	TOBM:   if (data_len==1)  TOBM_flag<=0; else begin  data_len<=data_len-1; flag_data<=1; 	end	
 	TNO :   if (data_len==1)   TNO_flag<=0; else begin  data_len<=data_len-1; flag_data<=1; 	end
 	TNC :   if (data_len==1)   TNC_flag<=0; else begin  data_len<=data_len-1; flag_data<=1; 	end
 	TNI :   if (data_len==1)   TNI_flag<=0; else begin  data_len<=data_len-1; flag_data<=1; 	end
 	TNP :   if (data_len==1)   TNP_flag<=0; else begin  data_len<=data_len-1; flag_data<=1; 	end
	TKI :   if (data_len==1)   TKI_flag<=0; else begin  data_len<=data_len-1; flag_data<=1; 	end
 	TKP :   if (data_len==1)   TKP_flag<=0; else begin  data_len<=data_len-1; flag_data<=1; 	end
	

	
	endcase	
	
	if ((Process2)&&(data_len!=1)) sch_abs<=sch_abs+4; 
		else 
			if ((Process2)&&(data_len==1))  sch_abs<=sch_abs+6; 
			 else  if (flag_abs==0)
								begin 
								flag_abs<=1;
								sch_abs<=sch_abs+d_code;	
								end	 


end	else 

if ((flag_data==1)&&(flag_start==1))
	
	begin
	
	
	if (sch_data<4) sch_data<=sch_data+1; else begin flag_data<=0;  sch_data<=0; end  // загрузка команды с данными в стек, относительный адрес
	
   sch<=sch_abs+sch_data+2;           // абсалютный адрес

 // stack2[sch_data]<=in_data;	
		
		
	end 
	
end 


endmodule
