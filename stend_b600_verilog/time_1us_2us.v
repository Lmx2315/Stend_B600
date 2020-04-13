//-----------------------------------------------------------------------------
//
// Title       : time_1us_2us
// Design      : dsign1
// Author      : Sergey
// Company     : NIIDAR
//
//-----------------------------------------------------------------------------
//
// File        : time_1us_2us.v
// Generated   : Thu Jun  7 11:41:40 2012
// From        : interface description file
// By          : Itf2Vhdl ver. 1.21
//
//-----------------------------------------------------------------------------
//
// Description : 
//
//-----------------------------------------------------------------------------
`timescale 1 ns / 1 ps

//{{ Section below this comment is automatically maintained
//   and may be overwritten
//{module {time_1us_2us}}
module time_1us_2us ( clk20mhz, clk64 ,t1us_64 ,t1us_20,t1us_tau10,tst_1sec,t1_min );

output t1us_64 ;
wire t1us_64 ;
output t1us_20 ;
wire t1us_20 ;

output t1us_tau10 ;
wire t1us_tau10 ;

output tst_1sec ;
wire tst_1sec ;

output t1_min ;
wire t1_min ;


input clk20mhz ;
wire clk20mhz ;	

input clk64 ;
wire clk64 ;	

reg [8:0] tik1=0;	
reg [8:0] tik2=0;
reg fr1=0; 
reg fr2=0;

reg [2:0] a=0;
reg [15:0] tau_reg=0;
reg t1us_tau10_reg=0;
reg tst1sec_reg=0;
reg tst1sec_reg5=0;
reg [31:0] tick1=0;
reg [7:0] tick_min=0;
reg tst1_min=0;


//always @(posedge clk) a<=a+1

always @(posedge clk20mhz)
	begin
	
	 tst1sec_reg5<=tst1sec_reg;
	 
	 if  (tik1!=19) tik1<=tik1+1; else tik1<=0;	   
		
	 if ((tik1>0)&&(tik1<10))   fr1<=1; else fr1<=0; 
	 
	 if (tau_reg<400) tau_reg<=tau_reg+1; else tau_reg<=0;
		
	 if ((tau_reg>0)&&(tau_reg<200)) t1us_tau10_reg<=1; else  t1us_tau10_reg<=0;
	 
	 if  (tick1<31999999) tick1<=tick1+1; else tick1<=0;  //счётчик микросекунд
		
	 if ((tick1>0)&&(tick1<9999999)) tst1sec_reg<=1; else  tst1sec_reg<=0; //флаг секунд
	 
	 if (tick1==0) if (tick_min!=14) tick_min<=tick_min+1; else tick_min<=0;
	 
	 if (tick_min==1) tst1_min<=1; else  tst1_min<=0; //флаг минут (пока флаг 15 секунд)
	 

	end
	

always @(posedge clk64)

	begin
	/*
	
		if (tik1!=63) tik1<=tik1+1; else tik1<=0;	   
		
		if ((tik1>31)&&(tik1<64))   fr1<=1; else fr1<=0; 
			
		if (tik2!=31) tik2<=tik2+1; else tik2<=0;	   
		
		if (tik2==31)   fr2<=1; else fr2<=0; 
		
		if (tau_reg<1200) tau_reg<=tau_reg+1; else tau_reg<=0;
		
		if ((tau_reg>600)&&(tau_reg<1100)) t1us_tau10_reg<=1; else  t1us_tau10_reg<=0;
		
		if  (tick1<64000000) tick1<=tick1+1; else tick1<=0;
		
		if ((tick1>32000000)&&(tick1<32000200)) tst1sec_reg<=1; else  tst1sec_reg<=0;
		*/
			
	end
	
assign t1us_64   =fr1;
assign t1us_20   =fr1;
assign t1us_tau10=t1us_tau10_reg;
assign tst_1sec  =tst1sec_reg5;
assign t1_min = tst1_min;

endmodule
