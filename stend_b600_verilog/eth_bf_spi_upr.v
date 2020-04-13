`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:19:05 10/29/2018 
// Design Name: 
// Module Name:    eth_bf_spi_upr 
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
module eth_bf_spi_upr(
    input key,
	 input MISO_buf,
    input MISO_eth,
    output clk_SPI_eth,
    output cs_spi2_eth,
    output cs_spi1_eth,
    output MOSI_eth,
    output MISO_BF,
    input CLK_SPI_BF,
    input flag1,
    input flag2,
    input fs3,
    input MOSI_BF,
    input INT_ETH,
    output INT1_BFPPI14,
    output SCK
    );

wire var_MISO_BF;

assign var_MISO_BF = (key)?MISO_eth:MISO_buf;
assign MISO_BF=var_MISO_BF;
assign INT1_BFPPI14=INT_ETH;
assign MOSI_eth=MISO_BF&flag2;
assign cs_spi1_eth=fs3|flag1;
assign cs_spi2_eth=fs3|flag1;

assign clk_SPI_eth=CLK_SPI_BF&flag2;
assign SCK=CLK_SPI_BF;


endmodule
