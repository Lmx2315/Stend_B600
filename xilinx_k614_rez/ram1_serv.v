//-----------------------------------------------------------------------------
//
// Title       : ram1
// Design      : Sinhron_B700
// Author      : Microsoft
// Company     : Microsoft
//
//-----------------------------------------------------------------------------
//
// File        : ram1.v
// Generated   : Mon Jun 15 10:16:19 2015
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
//{module {ram1}}
module ram1_serv ( clk,we ,start,reset,in_data ,FS ,out_data, adr_wr, adr_rd,A1in,A2in,A3in,A1out,A2out,A3out);

output [7:0] out_data ;
wire [7:0] out_data ;  

output [7:0] adr_wr ;
wire [7:0] adr_wr ;	   

output [7:0] adr_rd ;
wire [7:0] adr_rd ;		 

output we ;
wire   we ;	

input A1in ;
wire A1in ;	 

input A2in ;
wire A2in ; 

input A3in ;
wire A3in ; 


output A1out ;
wire A1out ;	 

output A2out ;
wire A2out ; 

output A3out ;
wire A3out ; 

input clk ;
wire clk ;
input start ;
wire start ; 
input reset ;
wire reset ;
input [7:0] in_data ;
wire [7:0] in_data ;
input FS ;
wire FS ;

parameter delay1 = 16'd10;  //задержка срабатывани€ импульса
parameter delay2 = 16'd20000;//задержка отвечающа€ за длительность импульса

reg [7:0] A [7:0];
reg [7:0] sch_adr_PPI=0;  
reg [7:0] sch_adr_SPI=0;
reg [7:0] data_reg=0;
reg flag1=0;	  
reg flag2=0; 
reg flag3=0;
reg [3:0] front1; 
reg we_reg=0;

reg ao1_reg=0;
reg ao2_reg=0;
reg ao3_reg=0;

reg bo1_reg=0;
reg bo2_reg=0;
reg bo3_reg=0;

reg a1_reg=0;
reg a2_reg=0;
reg a3_reg=0;

reg [15:0] sch_a1=0;
reg [15:0] sch_a2=0;
reg [15:0] sch_a3=0;

reg [15:0] sch_b1=0;
reg [15:0] sch_b2=0;
reg [15:0] sch_b3=0;

always @(posedge clk) front1<={front1[2:0],start};			
always @(posedge clk) data_reg<=in_data;

always @(posedge clk)
begin

	if (A1in) a1_reg<=1; else	
	if ((a1_reg)&&(sch_a1<delay1))  //при частоте 20 ћ√ц 1000 - это 50 мкс
		begin
		sch_a1<=sch_a1+1;
		end 
	else 
		if (a1_reg) 
		begin 
		sch_a1<=0;
		a1_reg<=1'b0;
		ao1_reg<=1'b1;
		bo1_reg<=1'b1;
		end 
		else 
			if ((ao1_reg)&&(sch_b1<delay2)) 
			begin  
			
			sch_b1<=sch_b1+1;
			
			if (sch_b1==(delay2-100)) bo1_reg<=1'b0;			
			
			end 
			else if (ao1_reg) begin ao1_reg<=1'b0; sch_b1<=0; end 
			
			
   
	if (A2in) a2_reg<=1; else	
	if ((a2_reg)&&(sch_a2<delay1))  //при частоте 20 ћ√ц 1000 - это 50 мкс
		begin
		sch_a2<=sch_a2+1;
		end 
	else 
		if (a2_reg) 
		begin 
		sch_a2<=0;
		a2_reg<=1'b0;
		ao2_reg<=1'b1;
		bo2_reg<=1'b1;
		end 
		else 
			if ((ao2_reg)&&(sch_b2<delay2)) 
			begin  
			
			sch_b2<=sch_b2+1;
			
			if (sch_b2==(delay2-100)) bo2_reg<=1'b0;			
			
			end 
			else if (ao2_reg) begin ao2_reg<=1'b0; sch_b2<=0; end 


end



always @(negedge clk)
		
	if (FS)
		begin
		sch_adr_PPI<=8'h0;
		flag1<=1'b0;  
		flag3<=1'b0;  
		//we_reg<=1'b1;
		
		end	else
	
	if (bo1_reg) 
		begin
		sch_adr_PPI<=8'd20; //адресс §чейки с данными о состо€нии синтезатора
		we_reg<=1'b1;
		end	else
	
	if (bo2_reg)  
		begin
		sch_adr_PPI<=8'd21; //адресс §чейки с данными о состо§нии гетеродина
		we_reg<=1'b1;
		end	
	
	else 
		begin
			we_reg<=1'b0;
			
				if (sch_adr_PPI<8'd19)	sch_adr_PPI<=sch_adr_PPI+1'b1; 	 
						else
							begin
								sch_adr_PPI<=8'd0; //адресс €чейки с мусорными данными 							
									we_reg<=1'b0;
									
									if (flag2==1'b0) 
										begin 
											flag1<=1'b1; 
										//	we_reg<=1'b0;
										end
							end
		
		end	 
	
 always @(posedge clk)
	 if (reset)
		begin
		
		  	sch_adr_SPI<=0;
			flag2<=1'b0;
		
		end	else 
		
		 if (front1[3:1]==3'b011)
		 begin 
			 
		 sch_adr_SPI<=sch_adr_SPI+1'b1;	
		 if (flag1==1'b0) flag2<=1'b0;
					 
		 end  else
	
		 if (FS)   
		 begin 
		 sch_adr_SPI<=0; 
		 flag2<=1'b1;  
		 end
		 
			 
		
	assign 	adr_wr   = sch_adr_PPI; 
	assign 	adr_rd   = sch_adr_SPI; 	
	assign  out_data = data_reg;
	assign  we = we_reg;
	
	assign A1out = ao1_reg;
	assign A2out = ao2_reg;
	assign A3out = ao3_reg;
	


endmodule
