`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:30:10 10/29/2018 
// Design Name: 
// Module Name:    OBUF16 
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
module OBUF16(
    output [15:0] O,
    input [15:0] I
    );


OBUF8 
OBUF8_1 (
      .O(O[7:0]),     // Buffer output (connect directly to top-level port)
      .I(I[7:0])      // Buffer input 
   );
	
OBUF8 
OBUF8_2 (
      .O(O[15:8]),     // Buffer output (connect directly to top-level port)
      .I(I[15:8])      // Buffer input 
   );	

endmodule
