//-----------------------------------------------------------------------------
//
// Title       : reset_modul
// Design      : w1
// Author      : Dmitry
// Company     : Nasa
//
//-----------------------------------------------------------------------------
//
// File        : reset_modul.v
// Generated   : Tue Apr 20 17:40:57 2010
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
//{module {reset_modul}}
module reset_modul ( clk ,reset );

output reset ;
wire reset ;

input clk ;
wire clk ;	

reg [15:0] a=16'b0110000000000000;

always @(posedge clk)	a<=a>>1;
	
	assign reset=a[0];
	

endmodule
