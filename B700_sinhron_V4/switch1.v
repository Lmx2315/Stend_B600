`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:08:22 09/07/2015 
// Design Name: 
// Module Name:    switch1 
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
module switch1(
    input upr,
    input TNC,
    input TNO,
    input TOBM,
    output TNC_o,
    output SIG
    );


assign SIG   = (upr)?TNO:TOBM;
assign TNC_o = TNC; 

endmodule
