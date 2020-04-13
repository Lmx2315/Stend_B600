`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:05:15 10/29/2018 
// Design Name: 
// Module Name:    top_list 
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
module top_list(
    output RSCLK0,
    input TFS0,
    output T_TEST3_VDD,
    output UART_TX,
    input UART_RX,
    output T_TEST2_VDD,
    output ENABLE_BUS_IN,
    input TSCLK,
    output T_TEST1_VDD,
    output BUS_T_SEC,
    output BUS_ALE3,
    output T_TEST4_VDD,
    output BUS_ALE2,
    output BUS_ALE1,
    output RFS0,
    output REZERV_33V,
    output BUS_CLK,
    output [7:0] BUS_DATA,
    output BUS_WR,
    output BUS_RD,
    input RZV1,
    input RZV2,
    input [7:0] PPI,
    input data_PPI8,
    input data_PPI9,
    input data_PPI10,
    input data_PPI11,
    output data_PPI12,
    input data_PPI13,
    output data_PPI14,
    input data_PPI15,
    output ENABLE_HM_DR,
    output RZV4,
    output ENABLE_EXT_VDD,
    output RZV3,
    input PPI_FS3,
    input MOSI,
    output MISO,
    input CS_SPARTAN,
    output SCLK,
    output RX_DSP,
    input TX_DSP,
    input RX_485_MG,
    input TX_485_MG,
    output RX_FTDI_1,
    input TX_FTDI_1,
    output WD_SUPERVISOR,
    output TNI,
    output TKI,
    output TNI_1,
    output TKI_1,
    input CLK20MHz,
    output T1_4,
    output RESET_MK_PLIS,
    input EXT_A7,
    input EXT_A0,
    input TIMER_BF,
    output PPI_F_SYN2,
    output PPI_FRAM_SYN1,
    output PPI_CLK,
    output RE_485,
    input T_5MIN_3V3,
    input RESET_USB11,
    input TKONTR3_3V3,
    input TKONTR1_3V3,
    input TKONTR2_3V3,
    input DT0SEC,
    input DT0PRI,
    input BUS_INT2,
    input BUS_INT3,
    input BUS_INT4,
    input BUS_INT1,
    output [7:0] BUS_ADDR,
    input ENABLE_BUS_OUT,
    input INT_W5100,
    output SCLK_W5100,
    output CS_W5100,
    output SCS_W5100,
    output MOSI_W5100,
    input MISO_W5100,
    output WR_W5100,
    output RD_W5100,
    input TNP,
    input TKP,
    input TKP1,
    output VS0,
    output VS1,
    output VS2,
    output DEBAG_LED4,
    output DEBAG_PWM1,
    output DEBAG_PWM2,
    output DR0PRI,
    input CLK_5_CMOS,
    output TNO,
    output TNC,
    output TOBM,
    input EXT_A2,
    input EXT_A3,
    input EXT_A4,
    output RTS_485,
    input RS232_RX_VDD,
    input RS232_TX_VDD
    );


wire wRSCLK0;
wire wTFS0;
wire wT_TEST3_VDD;
wire wUART_TX;

wire wT_TEST2_VDD;
wire wENABLE_BUS_IN;
wire wT_TEST1_VDD;
wire wBUS_T_SEC;
wire wBUS_ALE3;
wire wT_TEST4_VDD;
wire wBUS_ALE2;
wire wBUS_ALE1;
wire wRFS0;
wire wREZERV_33V;
wire wENABLE_HM_DR;
wire wRZV4;
wire wENABLE_EXT_VDD;
wire wRZV3;
wire wMISO;
wire wSCLK;

wire wRX_DSP;
wire wRX_485_MG;
wire wRX_FTDI_1;
wire wWD_SUPERVISOR;
wire wTNI;
wire wTKI;
wire wTNI_1;
wire wTKI_1;
wire wT1_4;
wire wRE_485;
wire wSCLK_W5100;
wire wSCS_W5100;
wire wMOSI_W5100;
wire wVS0;
wire wVS1;
wire wVS2;

wire wDEBAG_LED4;
wire wDEBAG_PWM1;
wire wDEBAG_PWM2;
wire wDR0PRI;
wire wTNO;
wire wTNC;
wire wTOBM;
wire wRTS_485;

wire wTSCLK;
wire wBUS_CLK;
wire wBUS_WR;
wire wBUS_RD;
wire wRZV1;
wire wRZV2;
wire wPPI_FS3;
wire wMOSI;
wire wCS_SPARTAN;
wire wTX_DSP;
wire wTX_485_MG;
wire wTX_FTDI_1;
wire wEXT_A7;
wire wEXT_A0;
wire wTIMER_BF;
wire wPPI_F_SYN2;

wire wPPI_FRAM_SYN1;
wire wT_5MIN_3V3;
wire wRESET_USB11;
wire wTKONTR3_3V3;
wire wTKONTR1_3V3;
wire wTKONTR2_3V3;
wire wDT0SEC;
wire wDT0PRI;
wire wBUS_INT2;
wire wBUS_INT3;
wire wBUS_INT4;
wire wBUS_INT1;
wire wENABLE_BUS_OUT;
wire wINT_W5100;
wire wMISO_W5100;
wire wEXT_A2;
wire wEXT_A3;
wire wEXT_A4;

wire [7 :0] wBUS_DATA;
wire [15:0] wPPI;


OBUF 
OBUF_1 (
      .O( UART_TX),     // Buffer output (connect directly to top-level port)
      .I(wUART_TX)      // Buffer input 
   );

OBUF 
OBUF_2 (
      .O( T_TEST3_VDD),     // Buffer output (connect directly to top-level port)
      .I(wT_TEST3_VDD)      // Buffer input 
   );

OBUF 
OBUF_3 (
      .O( RSCLK0),     // Buffer output (connect directly to top-level port)
      .I(wRSCLK0)      // Buffer input 
   );

OBUF 
OBUF_4 (
      .O( RESET_MK_PLIS),     // Buffer output (connect directly to top-level port)
      .I(wRESET_MK_PLIS)      // Buffer input 
   );

OBUF 
OBUF_5 (
      .O( BUS_RD),     // Buffer output (connect directly to top-level port)
      .I(wBUS_RD)      // Buffer input 
   );

OBUF8 
OBUF8_1 (
      .O({DEBAG_LED4,
          DEBAG_PWM1,
          DEBAG_PWM2,
         // DR0PRI,
          TNO,
          TNC,
          TOBM,
          RTS_485}),     // Buffer output (connect directly to top-level port)
      .I({wDEBAG_LED4,
          wDEBAG_PWM1,
          wDEBAG_PWM2,
         // wDR0PRI,
          wTNO,
          wTNC,
          wTOBM,
          wRTS_485})      // Buffer input 
   );



OBUF8 
OBUF8_2 (
      .O({T_TEST2_VDD,
          ENABLE_BUS_IN,
          T_TEST1_VDD,
          BUS_T_SEC,
          BUS_ALE3,
          T_TEST4_VDD,
          BUS_ALE2,
          BUS_ALE1
               }),     // Buffer output (connect directly to top-level port)
      .I({wT_TEST2_VDD,
          wENABLE_BUS_IN,
          wT_TEST1_VDD,
          wBUS_T_SEC,
          wBUS_ALE3,
          wT_TEST4_VDD,
          wBUS_ALE2,
          wBUS_ALE1
      })      // Buffer input 
   );
	
OBUF4 
OBUF4_1 (
      .O({RFS0,
          REZERV_33V,
          ENABLE_HM_DR,
          RZV4                    
               }),     // Buffer output (connect directly to top-level port)
      .I({wRFS0,
          wREZERV_33V,
          wENABLE_HM_DR,
          wRZV4                    
      })      // Buffer input 
   );
	

OBUF16 
OBUF16_2 (
      .O({RX_DSP,
        //  RX_485_MG,
          RX_FTDI_1,
          WD_SUPERVISOR,
          TNI,
          TKI,
          TNI_1,
          TKI_1,
          T1_4,
          RE_485,
          SCLK_W5100,
          SCS_W5100,
          MOSI_W5100,
          VS0,
          VS1,
          VS2
          }),     // Buffer output (connect directly to top-level port)
      .I({wRX_DSP,
        //  wRX_485_MG,
          wRX_FTDI_1,
          wWD_SUPERVISOR,
          wTNI,
          wTKI,
          wTNI_1,
          wTKI_1,
          wT1_4,
          wRE_485,
          wSCLK_W5100,
          wSCS_W5100,
          wMOSI_W5100,
          wVS0,
          wVS1,
          wVS2})      // Buffer input 
   );

IBUF 
IBUF_1 (
      .O(wTFS0),     // Buffer output
      .I( TFS0)      // Buffer input (connect directly to top-level port)
   );
	

IBUF 
IBUF_2 (
      .O(wUART_RX),     // Buffer output
      .I( UART_RX)      // Buffer input (connect directly to top-level port)
   );


IBUF 
IBUF_3 (
      .O(wDR0PRI),     // Buffer output
      .I( DR0PRI)      // Buffer input (connect directly to top-level port)
   );

IBUF8 
IBUF8_1 (
      .O({wBUS_DATA[7:0]}),     // Buffer output
      .I({ BUS_DATA[7:0]})      // Buffer input (connect directly to top-level port)
   );

IBUF16 
IBUF16_3 (
      .O({wPPI_FRAM_SYN1,
          wT_5MIN_3V3,
          wRESET_USB11,
          wTKONTR3_3V3,
          wTKONTR1_3V3,
          wTKONTR2_3V3,
          wDT0SEC,
          wDT0PRI,
          wBUS_INT2,
          wBUS_INT3,
          wBUS_INT4,
          wBUS_INT1,
          wENABLE_BUS_OUT,
          wINT_W5100,
          wMISO_W5100,
          wEXT_A2,
          wEXT_A3,
          wEXT_A4}),     // Buffer output
      .I({PPI_FRAM_SYN1,
          T_5MIN_3V3,
          RESET_USB11,
          TKONTR3_3V3,
          TKONTR1_3V3,
          TKONTR2_3V3,
          DT0SEC,
          DT0PRI,
          BUS_INT2,
          BUS_INT3,
          BUS_INT4,
          BUS_INT1,
          ENABLE_BUS_OUT,
          INT_W5100,
          MISO_W5100,
          EXT_A2,
          EXT_A3,
          EXT_A4})      // Buffer input (connect directly to top-level port)
   );
	
wire DCM_locked;
wire reset_dcm;

rst reset1
(
.clk(CLK),
.reset(reset_dcm)
);

	
dcm_clk
dcm1
(.CLKIN_IN(CLK20MHz), 
 .RST_IN(reset_dcm), 
 .CLKDV_OUT(CLK_5MHz), 
 .CLKFX_OUT(CLK_100MHz), 
 .CLKIN_IBUFG_OUT(CLK), 
 .CLK0_OUT(CLK_20Mhz), 
 .LOCKED_OUT(DCM_locked)
 );
 
reset_init 
rst_init1
( .clk(CLK) ,
  .reset_init(wRESET_MK_PLIS),
  .pwrdwn(wVS0)
  );

assign wWD_SUPERVISOR=CLK_5MHz; //сигнал на супервизор чтобы не ресетился.
assign wENABLE_BUS_OUT=1'b1;
assign wENABLE_BUS_IN =1'b1;

wire w_flag1;
wire w_flag2;
wire w_MISO_BF;

tick_tack
tick1(
    .clk(CLK),
    .flag1(w_flag1),
	 .flag2(w_flag2)
    );

OBUFT 
OBUFT_inst1 (
   .O(MISO),     // Buffer output (connect directly to top-level port)
   .I(w_MISO_BF),     // Buffer input
   .T(w_flag1)      // 3-state enable input 
);

eth_bf_spi_upr
x1(
    .key(data_PPI13),
	 .MISO_buf(0),
    .MISO_eth(wMISO_W5100),
    .clk_SPI_eth(wSCLK_W5100),
    .cs_spi2_eth(wSCS_W5100),
    .cs_spi1_eth(),
    .MOSI_eth(wMOSI_W5100),
    .MISO_BF(w_MISO_BF),
    .CLK_SPI_BF(wSCLK),
    .flag1(w_flag1),
    .flag2(w_flag2),
    .fs3(wPPI_FS3),
    .MOSI_BF(wMOSI),
    .INT_ETH(0),//wINT_W5100
    .INT1_BFPPI14(data_PPI14),
    .SCK()
    );
	 
led_test 
led1( .clk (CLK) ,
		.led1(wVS1) ,
		.led2(wVS2) ,
		.led3() ,
		.led4() ,
		.pwr1(wDEBAG_PWM1) ,
		.pwr2(wDEBAG_PWM2),
		.avariya(data_PPI10)
		);
		
		
wire wslave_rx;	
	
assign wBUS_RD		=wslave_rx;
assign wTX_485_MG	=wslave_rx;
assign wRZV3		=wslave_rx;
	
uart_all 
u1( 	.rts(),
		.master_tx(wTX_DSP) ,
		.slave1_tx() ,
		.slave2_tx() ,
		.slave3_tx() ,
		.slave4_tx() ,
		.slave5_tx(wT_5MIN_3V3),
		.slave6_tx(wRX_485_MG),
		.master_rx(),
		.slave_rx(wslave_rx),
		.FTDI_RX(wRX_FTDI_1),
		.FTDI_TX(wTX_FTDI_1)
		);
		
		
assign wRE_485 =data_PPI9;
assign wRTS_485=data_PPI9;

wire w_T1us;

time_1us_2us 
time1_1us
( .clk20mhz(CLK),
	.clk64() ,
	.t1us_64() ,
	.t1us_20(w_T1us),
	.t1us_tau10(),
	.tst_1sec(),
	.t1_min()
	);

wire w_REZERV_M;

INT_control
int1(
     .INT(wBUS_INT1),
     .clk(CLK),
	  .T1us(w_T1us),
     .INT1(data_PPI12),
     .INT2(w_REZERV_M)
    );
	 
assign wBUS_T_SEC=1;
assign wDEBAG_LED4=1;
assign PPI_F_SYN2=w_T1us;

wire wTOBM_FPGA;

spi_32bx2 
bx(
.clk(CLK),
.cs(wTFS0),
.cs_out(wRFS0) ,
.sck(TSCLK) ,
.miso(DR0PRI) ,
.d32p1(0) ,
.d32p2(0),
.flag(0),
.mosi(DT0PRI),
.rst_event(),
.enb(wTOBM_FPGA),
.INT2(0),
.INT3(0),
.INT4(0),
.ALE1(),
.ALE2(),
.ALE3(),
.ERROR(),
.ERROR64(0),
.REZERV_M(w_REZERV_M), 
.event_int(),
.GBR(),
.upr1(),
.upr2()
 );
 
 wire w_fs1_event;
 wire w_RUN;
 wire w_PPI_fail;
 
 PPI_recv 
 ppi_rcv1( 
 .clk(CLK),
 .sync_FS1(data_PPI11),
 .ppi_fs1(BUS_WR),
 .clk_ppi(CLK) ,
 .ppi_data(PPI) ,
 .ppi_8_pf11(data_PPI8),
 .data_bus(BUS_DATA),
 .fs1(w_fs1_event),
 .run(w_RUN),
 .fs1_in(w_fs1_event),
 .TNO(),
 .TNC(),
 .TOBM(),
 .TNI(),
 .TKI(),
 .TNP(),
 .TKP(),
 .Rzv(),
 .FAIL(w_PPI_fail),
 .tst()
 );

assign PPI_CLK=CLK;
assign BUS_CLK=CLK;

assign PPI_FRAM_SYN1=w_fs1_event;



endmodule
