`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:24:31 09/17/2013 
// Design Name: 
// Module Name:    TEST_BLOK 
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
module TEST_BLOK(
    input clk,
    output tst1,
    output tst2,
    output tst3,
    output tst4
    );


reg [20:0] a=21'h0;
reg [20:0] b=21'h0;
reg [20:0] c=21'h0;

always @(posedge clk)

	begin
	
		a<=a+1;
		b<=b-1;
		c<=a*b;
		
		
	end
	
	assign tst1=a[20];
	assign tst2=b[20];
   assign tst3=c[20];
   assign tst4=c[10];

endmodule
