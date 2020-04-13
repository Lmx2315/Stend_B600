`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:39:30 05/03/2012 
// Design Name: 
// Module Name:    arbitr_dcm 
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
module arbitr_dcm(
    input locked_f1,
    input locked_f2,
    output f_select
    );


assign f_select=(locked_f2)?{1}:{0};

endmodule
