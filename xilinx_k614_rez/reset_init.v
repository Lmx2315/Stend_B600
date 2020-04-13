//-----------------------------------------------------------------------------
//
// Title       : reset_init
// Design      : sinh1_v1
// Author      : Microsoft
// Company     : Microsoft
//
//-----------------------------------------------------------------------------
//
// File        : reset_init.v
// Generated   : Thu Sep 26 11:41:02 2013
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
//{module {reset_init}}
module reset_init ( clk ,reset_init,pwrdwn );

output reset_init ;
wire reset_init ;

output pwrdwn ;
wire pwrdwn ;


input clk ;
wire clk ;

reg [31:0] a=0; 
reg flag_r=1;
reg flag_pwr=0;

always@(posedge clk)
	
	begin
	
							
		if (a!=96000000)	a<=a+1'b1;
			
		if ((a>20000)&&(a<96000000)) flag_r<=0;	else flag_r<=1;
				
		if (a<1000000) flag_pwr<=1; else flag_pwr<=0;
		
	
	end
	
   	assign 	 reset_init=flag_r;
		assign 	 pwrdwn=flag_pwr;
	
endmodule
