`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:51:11 10/16/2013 
// Design Name: 
// Module Name:    tick_tack 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module tick_tack(
    input clk,
    output flag1,
	 output flag2
    );


reg [32:0]  a=0;
reg      flag_r=1;

always @(posedge clk)

begin

	//if (a!=80000000) a<=a+1; else flag_r<=0;
	
	if (a<80000000) begin a<=a+1; flag_r<=1; end else flag_r<=0;

end

assign flag1=flag_r;
assign flag2=~flag_r;

endmodule
