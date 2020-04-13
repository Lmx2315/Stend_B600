//-----------------------------------------------------------------------------
//
// Title       : uart_serv_v2
// Design      : DSP_180210
// Author      : Dmitry
// Company     : Nasa
//
//-----------------------------------------------------------------------------
//
// File        : uart_serv_v2.v
// Generated   : Wed Feb 24 15:36:51 2010
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
//{module {uart_serv_v2}}
module uart_serv_v2 ( clk ,data_in ,rdy_in ,tx_rdy_in ,data_out ,rst_uart ,send , test, test8,flag_t);

output [7:0] data_out ;
wire [7:0] data_out ;
output rst_uart ;
wire rst_uart ;
output send ;
wire send ;	   

output flag_t ;
wire flag_t ;	

output [11:0] test ;
wire [11:0] test ;		 

output [7:0] test8 ;
wire [7:0] test8 ;


input clk ;
wire clk ;
input [7:0] data_in ;
wire [7:0] data_in ;
input rdy_in ;
wire rdy_in ;
input tx_rdy_in ;
wire tx_rdy_in ;


  
reg flag; 
reg flag_transmit;
reg [7:0] tick;
reg [7:0] sch;
reg [11:0] ram_MEM [129:0];	   
reg [7:0] data_o=8'd0;

reg snd; 
reg reset;		
reg [7:0] i;
reg [7:0] i2;	   
reg [11:0] crc;


always @(negedge  clk)
	 begin
	
	if ((rdy_in==1'd1)&&(flag_transmit==1'd0))
	
	begin 
	reset<=1'd1;
	tick<=8'd0; 
	flag<=1'd1; 
	ram_MEM[0]<=12'h7e;
	i2<=0; 
	sch<=8'd0;
	i<=8'd1;
	flag_transmit<=1'd0;
	sch<=8'd0;
	crc<=12'd0;
	end
	
	else

if (flag==1'd1)		begin	
	
	
if (sch<8'd20)	sch<=sch+8'd1;	 
  
if (sch==8'd2)	reset<=1'd0;   	
	
if ((sch>8'd0)&&(flag_transmit==1'd0)&&(i!=8'd129))  begin crc<=crc^data_in; ram_MEM[i]<= data_in; i<=i+1'd1;  end 
	
if ((i==8'd129)&&(i2==8'd0))  	 flag_transmit<=1'd1; else if (i2==8'd130)  begin flag_transmit<=1'd0;	i<=8'd0;	end
	
if ((flag_transmit==1'd1)&&(tx_rdy_in==1'd1)&&(i2<8'd130))
	
	begin
	
		

if (tick==8'd4)     

	begin						
		
  if (i2!=8'd129) data_o<= ram_MEM[i2] ;	else  data_o<=crc;
	  
  if (i2!=8'd130)  i2<=i2+1'd1;  else i2<=8'd0; 
	end

if (tick==8'd7) snd<=1'd1;
if (tick==8'd8) snd<=1'd0; 	
if (tick>8'd8) tick<=8'd3; 
else tick<=tick+1'd1;
	
	end	
	
	 end

end

	 assign  data_out= data_o;
	 assign  rst_uart=reset;
	 assign  send=snd;		
	 assign test=ram_MEM[i];		 
	 assign	test8=i;	
	 assign flag_t= flag_transmit;
	 

endmodule
