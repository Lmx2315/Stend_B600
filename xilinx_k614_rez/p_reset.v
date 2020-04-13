`timescale 1 ns / 1 ps

//{{ Section below this comment is automatically maintained
//   and may be overwritten
//{module {reset_modul}}
module p_reset( clk ,reset );

output reset ;
wire reset ;

input clk ;
wire clk ;	

reg [15:0] a=16'b0110000000000000;

always @(posedge clk)	a<=a>>1;
	
	assign reset=a[0];
	

endmodule
