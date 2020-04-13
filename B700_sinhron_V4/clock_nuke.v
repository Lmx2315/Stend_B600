																																				   //-----------------------------------------------------------------------------
//
// Title       : clock_nuke
// Design      : Sinhron
// Author      : Sergey
// Company     : NIIDAR
//
//-----------------------------------------------------------------------------
//
// File        : clock_nuke.v
// Generated   : Thu May 10 15:02:59 2012
// From        : interface description file
// By          : Itf2Vhdl ver. 1.22
//
//-----------------------------------------------------------------------------
//
// Description : 
//
//-----------------------------------------------------------------------------
`timescale 1 ns / 1 ps

//{{ Section below this comment is automatically maintained
//   and may be overwritten
//{module {clock_nuke}}
module clock_nuke ( clk,t1us ,reset,usec);

output [31:0] usec ;
wire [31:0] usec ;

input t1us ;
wire t1us ;
input clk ;
wire clk ;
input reset ;
wire reset ;

reg [31:0] r_us=0;


reg [2:0] r_sync=0;	  
reg [2:0] front_t1us=0;	  
reg r_sync_flag=0;
	   
	
always@ (posedge clk)
	front_t1us<={front_t1us[1:0],t1us};

always@(posedge clk) 
	
	if (reset) r_us<=0;
				
	else
					
		if (front_t1us==3'b011)	r_us<=r_us+1'd1; 
	 				
	
		assign usec=r_us;
		
endmodule
