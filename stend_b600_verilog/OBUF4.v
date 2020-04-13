`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:06:41 10/29/2018 
// Design Name: 
// Module Name:    OBUF4 
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
module OBUF4(
    output [3:0] O,
    input [3:0] I
    );
OBUF 
OBUF_0 (
      .O( O[0]),     // Buffer output (connect directly to top-level port)
      .I(I[0])      // Buffer input 
   );
	
OBUF 
OBUF_1 (
      .O( O[1]),     // Buffer output (connect directly to top-level port)
      .I(I[1])      // Buffer input 
   );
		
OBUF 
OBUF_2 (
      .O( O[2]),     // Buffer output (connect directly to top-level port)
      .I(I[2])      // Buffer input 
   );

OBUF 
OBUF_3 (
      .O( O[3]),     // Buffer output (connect directly to top-level port)
      .I(I[3])      // Buffer input 
   );
	


endmodule
