`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:34:20 10/29/2018 
// Design Name: 
// Module Name:    IBUF16 
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
module IBUF16(
    output [15:0] O,
    input [15:0] I
    );

IBUF8 
IBUF8_0 (
      .O(O[7:0]),     // Buffer output
      .I(I[7:0])      // Buffer input (connect directly to top-level port)
   );

IBUF8 
IBUF8_1 (
      .O(O[15:8]),     // Buffer output
      .I(I[15:8])      // Buffer input (connect directly to top-level port)
   );

endmodule
