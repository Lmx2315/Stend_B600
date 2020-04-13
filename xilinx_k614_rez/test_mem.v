//-----------------------------------------------------------------------------
//
// Title       : test_mem
// Design      : Sinhron
// Author      : Sergey
// Company     : NIIDAR
//
//-----------------------------------------------------------------------------
//
// File        : test_mem.v
// Generated   : Thu May 17 13:10:30 2012
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
//{module {test_mem}}
module test_mem ( clk ,we_a ,data ,addr,s ,min ,h ,dni,time_setup );
	
	
	
output time_setup;
wire time_setup ;
output [7:0] s ;
wire [7:0] s ;
output [7:0] min ;
wire [7:0] min ;
output [7:0] h ;
wire [7:0] h ;
output [7:0] dni ;
wire [7:0] dni ;	
	
output we_a ;
wire we_a ;
output [15:0] data ;
wire [15:0] data ;
output [7:0] addr ;
wire [7:0] addr ;

input clk ;
wire clk ;

reg [15:0] i [255:0];	// массив данных 
reg [7:0] sch=0;    // счётчик адресса
reg [7:0] tik=16'b11000000;
reg time_setup_reg=0;


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
parameter   TOBM=8'h0d;
parameter   Dtnc=8'h0e;	 
parameter   End =8'hff;	 // приказ - конец циклограммы


initial
	begin
	
	i[0] =TNO;
	i[1] =16'd0010;
	i[2] =16'd0015;
	i[3] =16'd0045;
	i[4] =16'd0000;
	i[5] =16'd0001;
	i[6] =16'd0050;
	i[7] =Dtnc;	
	i[8] =16'd0144;
	i[9] =TNC;
	i[10] =Dniu;
	i[11]=16'd0008;
	i[12]=Dni;
	i[13]=16'd0200;
	i[14]=TNI;
	i[15]=Dii;
	i[16]=16'd0150;
	i[17]=TKI;
	i[18]=Dnpu;
	i[19]=16'd0008;
	i[20]=Dnp;
	i[21]=16'd0200;
	i[22]=TNP;
	i[23]=Dip;
	i[24]=16'd0145;
	i[25]=TKP;
	i[26]=TOBM;	 
	i[27]=End; 
	i[250] =16'd0010;	  //новое время : День
	i[251] =16'd0015;	  //новое время : Час
	i[252] =16'd0045;	  //новое время : минута
	i[253] =16'd0000;	  //новое время : секунда
	i[254] =16'd0000;	  //новое время : милисекунда
	i[255] =16'd0000;	  //новое время : микросекунда
	
	

	end
	


always@(posedge clk)
	
	begin
		
	sch<=sch+1'd1;	
	tik<=tik>>1;
	
	//i[sch]<={sch,sch};   
		
	end
	
	assign data=i[sch];
	assign addr=sch;   
	assign we_a=1'b1;  
	assign sch_w=sch;  
	assign dni=i[250][7:0];
	assign h  =i[251][7:0];
	assign min=i[252][7:0];
	assign s  =i[253][7:0];		 
	assign time_setup=tik[0];
	

endmodule
