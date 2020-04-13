//-----------------------------------------------------------------------------
//
// Title       : ram_read_control
// Design      : dsign1
// Author      : Sergey
// Company     : NIIDAR
//
//-----------------------------------------------------------------------------
//
// File        : ram_read_control.v
// Generated   : Tue May 22 14:57:16 2012
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
//{module {ram_read_control}}
module ram_read_control_dds ( clk, start ,q1 ,
q2 ,addr_rd , data8_spi,clk8_spi  );	  
	

output [7:0] addr_rd ;
wire [7:0] addr_rd ;

output [7:0] data8_spi ;
wire [7:0] data8_spi ;

output clk8_spi;
wire   clk8_spi;



input clk ;
wire clk ; 

input start ;
wire start ;

input [15:0] q1 ;
wire [15:0] q1 ;
input [15:0] q2 ;
wire [15:0] q2 ;



reg [7:0]  sch_ram=0;      //счётчик памяти	  
reg [15:0] Data_ram1=1000; // данные полученные из памяти 2 байта
reg [15:0] Data_ram2=1000; // данные полученные из памяти 2 байта
reg [15:0] interval=0;     // переменный интервал 
reg [15:0] delay=0;        // счётчик задержек	 
reg [7:0]  tik=0;          // 
reg [7:0] data8_spi_reg=0; //
reg start_reg=0;		       // флаг старта процесса

reg [2:0]  front_start;    //регистр фронта импульса start

wire  Process; 
   
	
always  @(posedge clk)
	
	front_start<={front_start[1:0],start}; 

always  @(posedge clk)
	
	tik<=tik+1;	
	
	
always  @(negedge clk)
	   Data_ram1<=q1;
	   
	   
always  @(negedge clk)

		begin
		
		  if ((delay==260)&&(tik[0]))	data8_spi_reg<=q1[7:0];
		
			 else if  (delay==260)	data8_spi_reg<=q1[15:8];
		
		end
	

always @(posedge clk)

	if (front_start==3'b001) 
		
	begin
	 
	start_reg<=1; 
	
	sch_ram<=0; 			//счётчик памяти	                              
	//Data_ram1<=1000;   	// данные полученные из памяти 2 байта     
	//Data_ram2<=1000;  	// данные полученные из памяти 2 байта     
	interval<=0;		   // переменный интервал                        
	delay<=0;    	      // счётчик задержек	                          
			
	end	else if (start_reg)
	
	
	begin
		
		if (delay!=260) delay<=delay+1;

      if ((delay==260)&&(tik[0]))		sch_ram<=sch_ram+1;
			
	end
	
else 
	
	begin	
		

		
	

	
	end
	
	
assign	addr_rd=sch_ram;  
assign data8_spi=data8_spi_reg; 

	
endmodule
