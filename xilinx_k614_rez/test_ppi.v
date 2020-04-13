//-----------------------------------------------------------------------------
//
// Title       : test_ppi
// Design      : dsign1
// Author      : Sergey
// Company     : NIIDAR
//
//-----------------------------------------------------------------------------
//
// File        : test_ppi.v
// Generated   : Wed May 30 17:14:15 2012
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
//{module {test_ppi}}
module test_ppi ( clk ,fs1,fs2,fs3 ,data_ppi,clk_ppi );
	
	
	
	
output fs1 ;
wire fs1 ;

output fs2 ;
wire fs2 ;

output fs3 ;
wire fs3 ;

output clk_ppi ;
wire clk_ppi ;

output [15:0] data_ppi ;
wire [15:0] data_ppi ;


input clk ;
wire clk ;

reg [15:0] i [255:0];	// iannea aaiiuo 
reg [7:0] sch=0;       // n??o?ee aa?anna
reg [31:0] tik=0;
reg time_setup_reg=0;




parameter    start_blok    = 16'hffff; // код начала пачки
parameter    code_time_diag= 16'hfff0; // код команды пачка временная диаграмма
parameter    code_dds      = 16'hfff1; // код команды пачка данные DDS
parameter    code_dds_1    = 16'hffd1; // код номер DDS
parameter 	TNO =16'h01;
parameter 	TNC =16'h02;
parameter 	TNI =16'h03;
parameter 	TNP =16'h04;
parameter 	TKI =16'h05;
parameter 	TKP =16'h06;
parameter 	Dniu=16'h07;	
parameter 	Dni =16'h08;
parameter    Dnpu=16'h09;
parameter 	Dnp =16'h0a;
parameter    Dip =16'h0b;
parameter    Dii =16'h0c;	 
parameter    TOBM=16'h0d;
parameter    Dtnc=16'h0e;	 
parameter    End =16'hff;	 // конец цикла
parameter    CRC =start_blok; // код CRC


reg [7:0] fs1_reg=8'b01000000;
reg [7:0] fs2_reg=8'b01000000;
reg [7:0] fs3_reg=8'b01000000;
reg clk_ppi_r=0;
reg [15:0] crc_reg=start_blok;

reg [7:0] a=29;

initial
	begin
	
	i[0] =start_blok;
	i[1] =code_dds;
	i[2] =code_dds_1;
	i[3] =16'd0000;   // день
	i[4] =16'd0001;   // час
	i[5] =16'd0001;   // минута
	i[6] =16'd0001;   // секунда
	i[7] =16'd0001;   // милисекунда
	i[8] =16'd0050;   // микросекунда
	i[9] =Dtnc;	
	i[10] =16'd0144;
	i[11] =TNC;
	i[12] =Dniu;
	i[13]=16'd0008;
	i[14]=Dni;
	i[15]=16'd0200;
	i[16]=TNI;
	i[17]=Dii;
	i[18]=16'd0150;
	i[19]=TKI;
	i[20]=Dnpu;
	i[21]=16'd0008;
	i[22]=Dnp;
	i[23]=16'd0200;
	i[24]=TNP;
	i[25]=Dip;
	i[26]=16'd0145;
	i[27]=TKP;
	i[28]=TOBM;	 
	i[29]=End; 
	i[249] =16'd0000;	  //iiaia a?aiy : День
	i[250] =16'd0001;	  //iiaia a?aiy : Час
	i[251] =16'd0001;	  //iiaia a?aiy : минута
	i[252] =16'd0001;	  //iiaia a?aiy : секунда
	i[253] =16'd0000;	  //iiaia a?aiy : милисекунда
	i[254] =16'd0000;	  //iiaia a?aiy : микросекунда
	i[255] =CRC;
	
	
	
	
	
	/*	
	i[0] =start_blok;
	i[1] =code_time_diag;
	i[2] =TNO;
	i[3] =16'd0000;   // день
	i[4] =16'd0001;   // час
	i[5] =16'd0001;   // минута
	i[6] =16'd0001;   // секунда
	i[7] =16'd0001;   // милисекунда
	i[8] =16'd0050;   // микросекунда
	i[9] =Dtnc;	
	i[10] =16'd0144;
	i[11] =TNC;
	i[12] =Dniu;
	i[13]=16'd0008;
	i[14]=Dni;
	i[15]=16'd0200;
	i[16]=TNI;
	i[17]=Dii;
	i[18]=16'd0150;
	i[19]=TKI;
	i[20]=Dnpu;
	i[21]=16'd0008;
	i[22]=Dnp;
	i[23]=16'd0200;
	i[24]=TNP;
	i[25]=Dip;
	i[26]=16'd0145;
	i[27]=TKP;
	i[28]=TOBM;	 
	i[29]=End; 
	i[249] =16'd0000;	  //iiaia a?aiy : День
	i[250] =16'd0001;	  //iiaia a?aiy : Час
	i[251] =16'd0001;	  //iiaia a?aiy : минута
	i[252] =16'd0001;	  //iiaia a?aiy : секунда
	i[253] =16'd0000;	  //iiaia a?aiy : милисекунда
	i[254] =16'd0000;	  //iiaia a?aiy : микросекунда
	i[255] =CRC;
	
	
	*/
	while (a<248)
	
	begin
	
	a=a+1;
	
	i[a]=a;
		
	end 
	
	
	end
	
always@(posedge clk)
    if (tik>2) clk_ppi_r<=clk_ppi_r+1;

always@(posedge clk)
	
	begin
	
		if (tik<32'hffff_fffa) tik<=tik+1; else tik<=0;
	
		
	
		if (tik==0)
	
		begin
	
		sch<=0;
	
		end else

		if (tik==1)
	
		begin
	
		fs1_reg<=0;
		fs2_reg<=0;
		fs3_reg<=0;
	
		end else
	
		if (tik==2)
	
		begin
	
		fs1_reg<=1;
		fs2_reg<=1;
		fs3_reg<=1;
			
		end else
	
		if (tik==4)
	
		begin
	
		fs1_reg<=0;
		fs2_reg<=0;
		fs3_reg<=0;
	
		end else
	
		if (tik>5)
	
		begin
	
		if (clk_ppi_r) begin sch<=sch+1'd1;crc_reg<=crc_reg^i[sch+1];  end
		if (sch==254) i[255]<=crc_reg;	
		
		end 
		
				
	end
	
	assign data_ppi=i[sch];
	assign clk_ppi=clk_ppi_r;  
	assign fs1=fs1_reg;
	assign fs2=fs2_reg;
	assign fs3=fs3_reg;
	
		

endmodule
