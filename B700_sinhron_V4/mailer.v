//-----------------------------------------------------------------------------
//
// Title       : mailer
// Design      : sinh1_v1
// Author      : Microsoft
// Company     : Microsoft
//
//-----------------------------------------------------------------------------
//
// File        : mailer.v
// Generated   : Tue Oct 29 13:29:32 2013
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
//{module {mailer}}
module mailer ( clk ,data_ram1 ,data_ram2 ,adr1 ,adr2 ,we ,start ,run , tst1,tst2);

output [7:0] data_ram2 ;
wire [7:0] data_ram2 ;
output [7:0] adr1 ;
wire [7:0] adr1 ;
output [7:0] adr2 ;
wire [7:0] adr2 ;
output we ;
wire we ;
output run ;
wire run ;	  

   output tst1 ;
wire tst1 ;

	 output tst2 ;
wire tst2 ;

input clk ;
wire clk ;
input [7:0] data_ram1 ;
wire [7:0] data_ram1 ;
input start ;
wire start ;

parameter  Start_byte=8'haa;
parameter adr_sinhron=8'h01;  
parameter dataN=255;	 // ?enei aaiiuo a ia?ea - 1 

reg tst1_reg=0;
reg tst2_reg=0;

reg [8:0]  sch=0;	  
reg [8:0]  sch_neg=0;
reg [7:0] sch2=0;
reg [7:0] data_ram=0;  
reg [7:0] data_ram_w=0; 
reg [7:0] data_ram_neg=0;
reg [7:0] crc=0;
reg [7:0] crc_code=0;
reg flag1=0;
reg flag2=0;
reg flag3=0;
reg we1=0;
reg we2=0;
reg run_reg=0;

reg [7:0]     addres=0;
reg [7:0] first_byte=0;	  

always @(posedge clk) data_ram<=data_ram1;

always @(negedge clk)  

if (start) 

begin

sch<=0;
sch2<=0;
flag1<=1;
flag2<=0;
flag3<=0;
run_reg<=0; 
//data_ram<=0; 
crc<=0;	
crc_code<=0;  
 we2<=0;
 
 first_byte<=0;
 
 addres<=0;
 

end else

		if (flag1) 
		
		begin

		we2<=1;	

		sch<=sch+1;
		sch2<=sch;

		data_ram_w<=data_ram1;

		if (sch==8'h0) first_byte<=data_ram;   //  

		if (sch==8'h1)     addres<=data_ram;   //  

		if (sch==dataN-1)  crc_code<=data_ram;   //  

		if (sch<dataN-1)    crc<=crc+data_ram;    //  

		if (sch==dataN+1) 
		
			begin 
			flag1<=0; 
			flag2<=1; 
			we2<=0;	 
			end	
	

		if  ((first_byte==Start_byte)&&(addres==adr_sinhron)&&(crc_code==crc)) 
		
			  begin 	
					flag3<=1; 
			   end 
				
		end
				 
			else

			if (flag3) begin run_reg<=1; flag3<=0;  end	 else run_reg<=0;



assign adr1=sch;
assign adr2=sch2;
assign we=we2;
assign run=run_reg;	 
assign data_ram2=data_ram_w;  
assign tst1=tst1_reg;
assign tst2=tst2_reg;


endmodule
