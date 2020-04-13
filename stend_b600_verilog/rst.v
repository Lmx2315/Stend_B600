`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:00:37 10/29/2018 
// Design Name: 
// Module Name:    rst 
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
module rst
(
  input wire clk,
  output wire reset

);

reg [31:0] a=32'hf0000000;

always @(posedge clk)
begin

	a<=a>>1;

end

assign reset = a [0];

endmodule
