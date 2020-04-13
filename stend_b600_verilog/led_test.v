//-----------------------------------------------------------------------------
//
// Title       : led_test
// Design      : dsign1
// Author      : Sergey
// Company     : NIIDAR
//
//-----------------------------------------------------------------------------
//
// File        : led_test.v
// Generated   : Tue Jul  3 16:32:15 2012
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
//{module {led_test}}
module led_test ( clk ,led1 ,led2 ,led3 ,led4 ,pwr1 ,pwr2,avariya );

output led1 ;
wire led1 ;
output led2 ;
wire led2 ;
output led3 ;
wire led3 ;
output led4 ;
wire led4 ;
output pwr1 ;
wire pwr1 ;
output pwr2 ;
wire pwr2 ;

input clk ;
wire clk ;

input avariya ;
wire avariya ;

reg [24:0] a=21'h0;
reg [24:0] b=21'h0;
reg [24:0] c=21'h0;

always @(posedge clk)
	
	begin
	
		a<=a+1;
		b<=b-1;
		c<=a;
		
		
	end
	
	assign led1=a[21];
	assign led2=b[22];
	assign led3=c[23];
	assign led4=c[24]; 
	assign pwr1=1'b1;
	assign pwr2=avariya;

endmodule 