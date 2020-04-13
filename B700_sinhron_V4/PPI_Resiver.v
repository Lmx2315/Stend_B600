//-----------------------------------------------------------------------------
//
// Title       : PPI_Resiver
// Design      : dsign1
// Author      : Sergey
// Company     : NIIDAR
//
//-----------------------------------------------------------------------------
//
// File        : PPI_Resiver.v
// Generated   : Wed May 30 10:48:23 2012
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
//{module {PPI_Resiver}}
module PPI_Resiver ( clk ,clk_ppi,fs1,fs2,fs3 ,
data_ppi1,data_ppi2,data_ppi3,data_ppi4,data_ppi5,data_ppi6,data_ppi7 ,data_ram ,addr_ram ,we_a ,s ,min ,h ,
dni ,time_setup ,we_dds,dds_update,cs_izl,cs_get,cs_615,bus8,out_fs1 );

output [15:0] data_ram ;
wire [15:0] data_ram ;
output [7:0] addr_ram ;
wire [7:0] addr_ram ;
output we_a ;
wire we_a ;
output [7:0] s ;
wire [7:0] s ;
output [7:0] min ;
wire [7:0] min ;
output [7:0] h ;
wire [7:0] h ;
output [7:0] dni ;
wire [7:0] dni ;

output [7:0] bus8 ;
wire [7:0] bus8 ;


output out_fs1 ;
wire out_fs1 ;


output time_setup ;
wire time_setup ;
output we_dds ;
wire we_dds ;

output dds_update ;
wire dds_update ;

output fs1 ;
wire fs1;

output fs2 ;
wire fs2;

output fs3 ;
wire fs3;

input clk ;
wire clk ;


input clk_ppi ;
wire clk_ppi ;

input [7:0] data_ppi1 ;
wire [7:0] data_ppi1 ;

input  data_ppi2 ;
wire   data_ppi2 ;


input  data_ppi3 ;
wire   data_ppi3 ;


input  data_ppi4 ;
wire   data_ppi4 ;


input  data_ppi5 ;
wire   data_ppi5 ;


input  data_ppi6 ;
wire   data_ppi6 ;


input  data_ppi7 ;
wire   data_ppi7 ;


output cs_izl;
wire   cs_izl;

output cs_get;
wire   cs_get;

output cs_615;
wire   cs_615;

wire [13:0] data_ppi;

reg izl=0;
reg get=0;
reg cs615=0;

reg fs1_r=0;
reg [2:0] fs_fr=0;

reg [11:0] i [255:0];	  		  // массив данных 
reg [8:0] sch_ppi=0;     	     //счётчик поступивших данных PPI 
reg [7:0] sch_ram=0;            //счётчик адресса памяти 
reg [11:0] crc_r=0;             // регистр контрольной суммы принимаемой пачки
reg [11:0] data_reg_ppi=0; 	  // данные
reg flag_ppi=0;        	    	  // флаг начала пачки PPI
reg flag_datablok=0;            // флаг принятой пачки
reg flag_crc=0;                 // флаг соответствия проверенной контрольной суммы присланной
reg flag_ram_time=0;  			  // флаг памяти временной диаграммы
reg flag_ram_DDS=0;             // флаг памяти DDS
reg [7:0] time_setup_reg=0;
reg dds_update_reg=0;   		  // флаг апдейта DDS

assign  data_ppi={data_ppi7,data_ppi6,data_ppi5,data_ppi4,data_ppi3,data_ppi2,data_ppi1};

always @(negedge clk_ppi)
	
begin  

   	
end

always @(posedge clk_ppi)  fs_fr<={fs_fr[1:0],data_ppi2};

always @(posedge clk_ppi)
	
begin  
	
	if (fs_fr==3'b011)  fs1_r<=1;  else
	if (fs1_r==1)   fs1_r<=0; 

end	




always@(negedge clk)
begin

	

end


assign fs1=fs1_r;
assign we_a		=flag_ram_time;
assign we_dds		=flag_ram_DDS;
assign dds_update=flag_crc;
assign data_ram	=i[sch_ram];
assign addr_ram	=sch_ram;
assign h			=i[250];
assign min		=i[251];
assign s			=i[252];
assign dni		=i[249];
assign time_setup=time_setup_reg[0];
assign cs_615		=((data_ppi[13]==1)&&(data_ppi[12]==1))?fs1:0;
assign cs_get		=((data_ppi[13]==1)&&(data_ppi[12]==0))?fs1:0;
assign cs_izl		=((data_ppi[13]==0)&&(data_ppi[12]==1))?fs1:0;
assign bus8		=data_ppi[7:0]; 
assign out_fs1	=fs1_r;
	

endmodule
