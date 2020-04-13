`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:32:08 10/29/2018 
// Design Name: 
// Module Name:    IBUF8 
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
module IBUF8(
    output [7:0] O,
    input [7:0] I
    );


IBUF 
IBUF_0 (
      .O(O[0]),     // Buffer output
      .I(I[0])      // Buffer input (connect directly to top-level port)
   );

IBUF 
IBUF_1 (
      .O(O[1]),     // Buffer output
      .I(I[1])      // Buffer input (connect directly to top-level port)
   );
	
IBUF 
IBUF_2 (
      .O(O[2]),     // Buffer output
      .I(I[2])      // Buffer input (connect directly to top-level port)
   );

IBUF 
IBUF_3 (
      .O(O[3]),     // Buffer output
      .I(I[3])      // Buffer input (connect directly to top-level port)
   );

IBUF 
IBUF_4 (
      .O(O[4]),     // Buffer output
      .I(I[4])      // Buffer input (connect directly to top-level port)
   );
	
IBUF 
IBUF_5 (
      .O(O[5]),     // Buffer output
      .I(I[5])      // Buffer input (connect directly to top-level port)
   );

IBUF 
IBUF_6 (
      .O(O[6]),     // Buffer output
      .I(I[6])      // Buffer input (connect directly to top-level port)
   );
	
IBUF 
IBUF_7 (
      .O(O[7]),     // Buffer output
      .I(I[7])      // Buffer input (connect directly to top-level port)
   );


endmodule
