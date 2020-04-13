//-----------------------------------------------------------------------------
//
// Title       : uart_all
// Design      : dsign1
// Author      : Sergey
// Company     : NIIDAR
//
//-----------------------------------------------------------------------------
//
// File        : uart_all.v
// Generated   : Wed Jul 11 16:25:40 2012
// From        : interface description file
// By          : Itf2Vhdl ver. 1.21
//
//-----------------------------------------------------------------------------
//
// Description : 
//
//-----------------------------------------------------------------------------
`timescale 1 ns / 1 ps

//{{ Section below this comment is automatically maintained
//   and may be overwritten
//{module {uart_all}}
module uart_all ( rts,master_tx ,slave1_tx ,slave2_tx ,slave3_tx ,slave4_tx , slave5_tx,slave6_tx,master_rx,slave_rx,FTDI_RX,FTDI_TX );

output master_rx ;
wire master_rx ;

output slave_rx ;
wire slave_rx ;

output FTDI_RX ;
wire FTDI_RX ;


input rts ;
wire rts ;

input FTDI_TX ;
wire FTDI_TX ;
input master_tx ;
wire master_tx ;
input slave1_tx ;
wire slave1_tx ;
input slave2_tx ;
wire slave2_tx ;
input slave3_tx ;
wire slave3_tx ;
input slave4_tx ;
wire slave4_tx ;
input slave5_tx ;
wire slave5_tx ;
input slave6_tx ;
wire slave6_tx ;


assign master_rx=FTDI_TX&slave6_tx&slave5_tx;
assign slave_rx=master_tx;
assign FTDI_RX =master_tx;

endmodule
