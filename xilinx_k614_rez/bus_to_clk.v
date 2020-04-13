`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:08:30 05/13/2015 
// Design Name: 
// Module Name:    bus_to_clk 
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
module bus_to_clk(
    input [7:0] bus_clk,
     output clk5mhz,
    output TNC,
    output TNO,
    output TNP,
    output TKP,
    output TNI,
    output TKI
    );

assign clk5mhz  = bus_clk[0];

assign TNC = bus_clk[2];
assign TNO = bus_clk[3];
assign TNP = bus_clk[4];
assign TKP = bus_clk[5];
assign TNI = bus_clk[6];
assign TKI = bus_clk[7];

endmodule
