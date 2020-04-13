`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:19:54 10/29/2018 
// Design Name: 
// Module Name:    OBUF8 
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
module OBUF8(
    output [7:0] O,
    input [7:0] I
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
	
OBUF 
OBUF_4 (
      .O( O[4]),     // Buffer output (connect directly to top-level port)
      .I(I[4])      // Buffer input 
   );
	
OBUF 
OBUF_5 (
      .O( O[5]),     // Buffer output (connect directly to top-level port)
      .I(I[5])      // Buffer input 
   );
	
OBUF 
OBUF_6 (
      .O( O[6]),     // Buffer output (connect directly to top-level port)
      .I(I[6])      // Buffer input 
   );
	
OBUF 
OBUF_7 (
      .O( O[7]),     // Buffer output (connect directly to top-level port)
      .I(I[7])      // Buffer input 
   );
	
	
	
	
			

endmodule
