			   //-----------------------------------------------------------------------------
//
// Title       : uart_control
// Design      : DSP_180210
// Author      : Dmitry
// Company     : Nasa
//
//-----------------------------------------------------------------------------
//
// File        : uart_control.v
// Generated   : Mon Aug 16 17:07:32 2010
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
//{module {uart_control}}
module uart_ctr2 ( test,clk ,trs,reset ,rs_clk1,rs_clk2 ,rs_data1,rs_data2 );


input clk ;
wire clk ;
input reset ;
wire reset ;
input rs_clk1 ;
wire rs_clk1 ;
input rs_clk2 ;
wire rs_clk2 ;

input [7:0] rs_data1 ;
wire [7:0] rs_data1 ;
input [7:0] rs_data2 ;
wire [7:0] rs_data2 ;

output [7:0] test;
wire [7:0] test;

output   trs;
wire  trs;

wire rs_clk ;

wire [7:0] rs_data ;

reg [7:0] data1 [5:0];	
reg [7:0] data2 [5:0];
	
reg [7:0] crc;	

reg flag1;
reg trns;


assign test = data1[5];
assign trs = (flag1)?{rs_clk1}:{0};




reg [2:0] rs_clk_trg1; 
reg [2:0] rs_clk_trg2; 

always @(posedge clk) rs_clk_trg1 <= {rs_clk_trg1[1:0], rs_clk1};

always @(posedge clk) rs_clk_trg2 <= {rs_clk_trg2[1:0], rs_clk2};

always @(posedge  clk)


if (reset)
		
		begin
		 
		 crc<=8'b11100111;
		   flag1<=1'd1;
			trns<=0;
		  		
		end
		
		else

if (rs_clk_trg1==3'b010 || rs_clk_trg1==3'b110)	
	begin
		
	   data1[0]<=data1[1];
   	data1[1]<=data1[2];
		data1[2]<=data1[3]; 
		data1[3]<=data1[4];
		data1[4]<=data1[5];
		
	if (rs_data1==8'h6)	flag1<=1;
	else 	if (rs_data1==8'h5) flag1<=0;
	
	if (flag1 && rs_data1!=8'h5) data1[5]<=rs_data1;
			
			
	end
	
always @(posedge  clk)


if (rs_clk_trg2==3'b010 || rs_clk_trg2==3'b110)	
	begin
		
	   data2[0]<=data2[1];
   	data2[1]<=data2[2];
		data2[2]<=data2[3]; 
		data2[3]<=data2[4];
		data2[4]<=data2[5];
		
	data2[5]<=rs_data2;
		
	
			
	end
		
	

endmodule
