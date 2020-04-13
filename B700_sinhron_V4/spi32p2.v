//-----------------------------------------------------------------------------
//
// Title       : spi_32bx2
// Design      : sinh1_v1
// Author      : Microsoft
// Company     : Microsoft
//
//-----------------------------------------------------------------------------
//
// File        : spi_32bx2.v
// Generated   : Fri Mar  7 17:08:45 2014
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
//{module {spi_32bx2}}
module spi_32bx2 (clk,cs,cs_out ,sck ,miso ,d32p1 ,d32p2,flag,mosi,rst_event,enb,INT2,INT3,INT4,ALE1,ALE2,ALE3,ERROR,ERROR64,REZERV_M, event_int,GBR,upr1,upr2 );

output upr1 ;
wire upr1 ;

output upr2;
wire upr2;

output GBR ;
wire GBR ;

output event_int ;
wire event_int ;


output miso ;
wire miso ;

output cs_out ;
wire cs_out ;

output rst_event ;
wire rst_event ;


output ALE1 ;
wire ALE1 ;

output ALE2 ;
wire ALE2 ;

output ALE3 ;
wire ALE3 ;

output ERROR ;
wire ERROR ;

input INT2 ;
wire INT2 ;

input INT3 ;
wire INT3 ;

input INT4 ;
wire INT4 ;

input REZERV_M ;
wire REZERV_M ;

input ERROR64 ;
wire ERROR64 ;

input clk ;
wire clk ;
input cs ;
wire cs ;
input sck ;
wire sck ;
input enb ;
wire enb ;

input [31:0] d32p1 ;
wire [31:0]  d32p1 ;
input [31:0] d32p2 ;
wire [31:0]  d32p2 ;

input [15:0] flag ;
wire [15:0]  flag ;

input mosi ;
wire mosi ;	

reg [2:0] front_sck=0;	  
reg [2:0] front_send=0;

reg cs_reg=0;
reg flag_rst=0;



reg [31:0] a [1:0]; //массив данных
reg [31:0] b=0;

reg [31:0] w1=0;
reg [31:0] w2=0;

reg [31:0] w3=0;
reg [31:0] w4=0;

reg [31:0] y=0;
reg rst=0;

reg [31:0] Mosi_reg=0;
reg mosi_z=0;

reg upr1_reg=0;
reg upr2_reg=0;

reg ALE1_reg =0;
reg ALE2_reg =0;
reg ALE3_reg =0;
reg ERROR_reg=0;
reg GBR_reg=0;

reg c1,c2,c3;


reg z=0;
reg flag1=0;
reg  sch=0;
reg [7:0] sch_reg=31;

 	
always@ (negedge clk)

//if (enb)
begin
			
		c1<=enb;
		
		if (sch_reg>31)
		begin
		
		w1<={flag[9:0],d32p1[21:0]}; //длительность ТНЦ и сигналы прерываний от блока синхронизации
   	w2<={REZERV_M,ERROR64,INT2,INT3,INT4,d32p2[26:0]}; //длительность ТНО и сигналы прерываний от кассет синтезаторов
		
		 ALE1_reg <=Mosi_reg[0];
		 ALE2_reg <=Mosi_reg[1];
 		 ALE3_reg <=Mosi_reg[2];
		 ERROR_reg<=Mosi_reg[3];
		 upr1_reg <=Mosi_reg[4];
		 upr2_reg <=Mosi_reg[5];
		 GBR_reg  <=Mosi_reg[7];
			
		end
	
end 
 	
always@ (negedge sck)
if (cs_reg==0)
begin
		c2<=c1;
		
	//	if (c2==0)
			begin
			a[1]<=w1;
	  	   a[0]<=w2;
			end
end


 	
always@ (negedge sck)
 		
	if (cs)
		
		begin
	
		if (sch==1) flag_rst<=flag_rst+1; else flag_rst<=0;
	
			sch<=sch+1; 
				
			b<=a[sch];
			
			cs_reg<=1;
			
			sch_reg<=0;
				
		end	

else	
	if (sch_reg<32)
		begin
		
		sch_reg<=sch_reg+1;
		
		cs_reg<=0;
//----MISO-------				
	 	 b<=b<<1;
	    z<=b[31]; 
//----MOSI-------
       
		 Mosi_reg   <=Mosi_reg<<1;
		 Mosi_reg[0]<=mosi;
		
		end
	
		assign miso=z;
		assign cs_out=cs_reg;
		assign rst_event=flag_rst;
		
		assign ALE1  = ALE1_reg;
		assign ALE2  = ALE2_reg;
		assign ALE3  = ALE3_reg;
		assign ERROR = ERROR_reg;
		assign GBR   = GBR_reg;
		
		assign event_int = enb;
		assign upr1 = upr1_reg;
		assign upr2 = upr2_reg;

endmodule
