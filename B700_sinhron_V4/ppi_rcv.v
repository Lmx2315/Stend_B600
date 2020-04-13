//-----------------------------------------------------------------------------
//
// Title       : PPI_recv
// Design      : sinh1_v1
// Author      : Microsoft
// Company     : Microsoft
//
//-----------------------------------------------------------------------------
//
// File        : PPI_recv.v
// Generated   : Tue Oct 29 10:56:19 2013
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
//{module {PPI_recv}}
module PPI_recv ( clk,sync_FS1,ppi_fs1,clk_ppi ,ppi_data ,ppi_8_pf11,data_bus,fs1,run,fs1_in,TNO,TNC,TOBM,TNI,TKI,TNP,TKP,Rzv,FAIL,tst );

output [7:0] data_bus ;
wire [7:0] data_bus ;	 

output [31:0] TNO ;
wire [31:0] TNO ;	  

output [31:0] TNC ;
wire [31:0] TNC ;

output [31:0] TOBM ;
wire [31:0] TOBM ;

output [31:0] TNI ;
wire [31:0] TNI ;

output [31:0] TKI ;
wire [31:0] TKI ;

output [31:0] TNP ;
wire [31:0] TNP ;

output [31:0] TKP ;
wire [31:0] TKP ;

output [31:0] Rzv ;
wire [31:0] Rzv ;

output tst ;
wire tst ;	

output FAIL ;
wire FAIL ;	

output fs1 ;
wire fs1 ;	  

output run ;
wire run ;

input fs1_in ;
wire fs1_in ;
  
output ppi_fs1 ;
wire ppi_fs1 ;

input clk ;
wire clk ;
input clk_ppi ;
wire clk_ppi ;
input [7:0] ppi_data ;
wire [7:0] ppi_data ;

input ppi_8_pf11 ;
wire ppi_8_pf11 ;

input sync_FS1 ;
wire sync_FS1 ;

parameter dataN=34;	 // длинна принимаемой пачки

reg [7:0] Massiv [64:0];

reg [31:0] TNO_rg =32'hffffffff;   // регистры данных из памяти меток
reg [31:0] TNC_rg =32'hffffffff;
reg [31:0] TOBM_rg=32'hffffffff;
reg [31:0] TNI_rg =32'hffffffff;
reg [31:0] TKI_rg =32'hffffffff;
reg [31:0] TNP_rg =32'hffffffff;
reg [31:0] TKP_rg =32'hffffffff;
reg [31:0] Rzv_rg =32'hffffffff;

reg fs11_r=0;	
reg fs12_r=0;  
 
reg fs2_r=0;


reg fs1_end_reg=0;

reg [3:0] fs_fr1=0;
reg [3:0] fs_fr2=0;

reg [8:0] sch_adr=0;
reg [7:0] crc_reg=0;
reg [7:0] data_reg=0;  

reg [7:0] sch_adr_n=0;
reg [7:0] data_reg_n=0;

reg flag_z=0;  
reg start=0; 
reg w_reg=0;

reg [7:0] sch_fs1=0;

reg       ppi_fs1_reg  =0;
reg       ppi_fs1_reg2 =0;
reg       ppi_fs1_reg3 =0;
reg [7:0] ppi_data_reg=0;
reg flag_OK = 0;
reg flag_CRC_FAIL=0;


always @(negedge clk_ppi) //
	begin
		fs2_r<=	fs11_r;
		sch_adr_n<=sch_adr;
		data_reg_n<=data_reg;
	end

always @(posedge clk_ppi)  fs_fr1<={fs_fr1[2:0],ppi_8_pf11};
always @(posedge clk_ppi)  fs_fr2<={fs_fr2[2:0],sync_FS1};


always @(negedge clk_ppi)
	
begin  

		ppi_fs1_reg2<=fs11_r;	
	
	if (fs_fr1[3:1]==3'b001)  fs11_r<=1;
		else  fs11_r<=0;	
		
	if (fs_fr2[3:1]==3'b001)  fs12_r<=1;
		else  fs12_r<=0;	
								
end	

always @(negedge clk_ppi)	  if (sch_adr==0) w_reg<=1; else if ((sch_adr>(dataN-1))&&(sch_adr<500))   w_reg<=0;  

always @(posedge clk_ppi) begin  ppi_fs1_reg<=ppi_fs1_reg3; ppi_fs1_reg3<=fs11_r;end

always @(posedge clk_ppi) ppi_data_reg<=ppi_data;

always @(negedge clk_ppi)
	
if (fs12_r) 
begin

sch_adr <=511;
crc_reg <=0;
data_reg<=ppi_data;
flag_z  <=1;   
start<=0; 
flag_OK<=0; 
flag_CRC_FAIL<=0;

end  

else if (flag_z)

begin 
	
Massiv[sch_adr]<=data_reg;	  //заполняем массив принятых данных

sch_adr <= sch_adr+1;
data_reg<= ppi_data;  

if (sch_adr<dataN) crc_reg <= crc_reg+data_reg;  

if (sch_adr==dataN) begin flag_z  <=0; start<=1; end  else start<=0;

end	else 
begin
	start<=0;

	if (start)
	begin
	
	   if ((Massiv[ 0]==  8'haa)&&			//проверка начала пакета
		    (Massiv[ 1]==  8'h01)&&		  	//проверка адрессата    
		    (Massiv[34]==crc_reg)) 		   //проверка контрольной суммы
		   							flag_OK<=1; 
		else 
		if ((Massiv[ 0]==  8'haa)&&			//проверка начала пакета
		    (Massiv[ 1]==  8'h01))		  	   //проверка адрессата    
		   
										begin
										flag_OK<=0; 
										flag_CRC_FAIL<=1; //принят битый пакет!
										end
		else
		if ((Massiv[ 0]!=  8'haa)&&			//проверка начала пакета
		    (Massiv[ 1]==  8'h01))		  	   //проверка адрессата    
		   
										begin
										flag_OK<=0; 
										flag_CRC_FAIL<=1; //принят битый пакет!
										end
		

	end	 

end

 always @(posedge clk)	  //заполняем регистры временных интервалов для флагов работы синхронизатора
	
	if (flag_OK)
	begin
	
	TNO_rg <={Massiv[ 2],Massiv[ 3],Massiv[ 4],Massiv[ 5]}; 
	TNC_rg <={Massiv[ 6],Massiv[ 7],Massiv[ 8],Massiv[ 9]}; 
	TOBM_rg<={Massiv[10],Massiv[11],Massiv[12],Massiv[13]};
   TNI_rg <={Massiv[14],Massiv[15],Massiv[16],Massiv[17]};
 	TKI_rg <={Massiv[18],Massiv[19],Massiv[20],Massiv[21]};
	TNP_rg <={Massiv[22],Massiv[23],Massiv[24],Massiv[25]};
	TKP_rg <={Massiv[26],Massiv[27],Massiv[28],Massiv[29]};
	Rzv_rg <={Massiv[30],Massiv[31],Massiv[32],Massiv[33]};
			
	end	  
	
	
assign TNO  = TNO_rg;
assign TNC  = TNC_rg;
assign TOBM = TOBM_rg;
assign TNI  = TNI_rg;
assign TKI  = TKI_rg;
assign TNP  = TNP_rg;
assign TKP	= TKP_rg;
assign Rzv  = Rzv_rg;
	
assign run=flag_OK          ;
assign fs1=fs11_r|fs12_r    ;
assign data_bus=ppi_data_reg;
assign ppi_fs1 = ppi_fs1_reg;	

assign FAIL = flag_CRC_FAIL;
assign tst = ppi_data[0];

endmodule 