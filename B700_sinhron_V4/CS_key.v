`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:06:05 06/20/2015 
// Design Name: 
// Module Name:    CS_key 
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
module CS_key(
    input key,
    input MISO_w5100,
    input MISO_buf,
    output MISO_BF
    );

assign MISO_BF = (key)?MISO_w5100:MISO_buf;

endmodule
