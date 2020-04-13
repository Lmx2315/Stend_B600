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
module ram_read_control ( clk, start ,q1 ,q2 ,addr_rd ,Tus,Tno,Tnc,Tni ,Tki ,Tnp ,Tkp  );	  
	
output Tnc ;
wire Tnc ;	
output Tni ;
wire Tni ;
output Tki ;
wire Tki ;
output Tnp ;
wire Tnp ;
output Tkp ;
wire Tkp ;
output Tno ;
wire Tno ;	

output [7:0] addr_rd ;
wire [7:0] addr_rd ;

input clk ;
wire clk ; 
input start ;
wire start ;

input [15:0] q1 ;
wire [15:0] q1 ;
input [15:0] q2 ;
wire [15:0] q2 ;
input Tus ;
wire Tus ;

parameter   TOBM=8'h0d;		// коды импульсов и интервалов
parameter 	TNO =8'h01;
parameter 	TNC =8'h02;
parameter 	TNI =8'h03;
parameter 	TNP =8'h04;
parameter 	TKI =8'h05;
parameter 	TKP =8'h06;
parameter 	Dniu=8'h07;	
parameter 	Dni =8'h08;
parameter   Dnpu=8'h09;
parameter 	Dnp =8'h0a;
parameter   Dip =8'h0b;
parameter   Dii =8'h0c;	 
parameter   Dtnc=8'h0e;	  
parameter   End =8'hff;	 // приказ - конец циклограммы


parameter  Tau=16'd001; // длительность импульсов

reg [7:0]  sch_ram=0; //счётчик памяти	  
reg [15:0] Data_ram1=1000; // данные полученные из памяти 2 байта
reg [15:0] Data_ram2=1000; // данные полученные из памяти 2 байта
reg [15:0] interval=0;  // переменный интервал 
reg [15:0] delay=0;     // счётчик задержек	  
reg start_reg=0;		// флаг старта процесса

reg [2:0]  front_Tus; //регистр фронта импульса 1 мкс  
reg [2:0]  front_start; //регистр фронта импульса start

reg  TOBM_flag=0;
reg  TNO_flag=0;	 // флаги процессов
reg  TNC_flag=0;
reg  TNI_flag=0;
reg  TNP_flag=0;
reg  TKI_flag=0;
reg  TKP_flag=0;
reg  Dni_flag=0;
reg Dniu_flag=0; 
reg Dnpu_flag=0;
reg  Dnp_flag=0;
reg  Dip_flag=0;
reg  Dii_flag=0;
reg Dtnc_flag=0;
	
wire  Process; 

assign Process=TNO_flag|TNC_flag|TNI_flag|TNP_flag|TKI_flag|TKP_flag|Dniu_flag|Dni_flag|Dnpu_flag|Dnp_flag|Dip_flag|Dii_flag|TOBM_flag|Dtnc_flag; // проверка процессов на активность (не поднят ли какой флаг?)


always  @(posedge clk)
	
	front_Tus<={front_Tus[1:0],Tus};   
	
always  @(posedge clk)
	
	front_start<={front_start[1:0],start}; 	
	
	
always  @(negedge clk)
	   Data_ram1<=q1;
	

always @(posedge clk)

	if (front_start==3'b011) 
		
	begin
	 
	start_reg<=1; 
	
	sch_ram<=0; 			//счётчик памяти	                              
	//Data_ram1<=1000; 	// данные полученные из памяти 2 байта     
	//Data_ram2<=1000; 	// данные полученные из памяти 2 байта     
	interval<=0;		  // переменный интервал                        
	delay<=0;    	 // счётчик задержек	                          
	
	
		
	end	else if (start_reg)
	
	
	begin
		
if (!Process)	
	
	begin
	
	sch_ram<=sch_ram+1'd1; 
	
	interval<=0;
	
	delay<=0;
	
	
	case (Data_ram1) 
		
	TOBM: begin TOBM_flag<=1; 	end	
 	TNO : begin TNO_flag<=1;  	end
 	TNC : begin TNC_flag<=1;  	end
 	TNI : begin TNI_flag<=1;  	end
 	TNP : begin TNP_flag<=1;  	end
	TKI : begin TKI_flag<=1;  	end
 	TKP : begin TKP_flag<=1;  	end
 	Dniu: begin Dniu_flag<=1; 	end	
 	Dni : begin Dni_flag<=1;  	end
    Dnpu: begin Dnpu_flag<=1; 	end
 	Dnp : begin Dnp_flag<=1;  	end
    Dip : begin Dip_flag<=1;  	end
    Dii : begin Dii_flag<=1;  	end
  	Dtnc: begin Dtnc_flag<=1; 	end	 
    End :  start_reg<=0;
	
	endcase	 
	
	end
	
else 
	
	begin	
		

		
	if ((TNO_flag)&&(Tau!=delay))  begin if (front_Tus==3'b011) delay<=delay+1; end	else  TNO_flag<=0; 
	if ((TNC_flag)&&(Tau!=delay))  begin if (front_Tus==3'b011) delay<=delay+1;	end else  TNC_flag<=0;  
	if ((TNI_flag)&&(Tau!=delay))  begin if (front_Tus==3'b011) delay<=delay+1;	end else  TNI_flag<=0; 
	if ((TNP_flag)&&(Tau!=delay))  begin if (front_Tus==3'b011) delay<=delay+1;	end else  TNP_flag<=0; 	
	if ((TKI_flag)&&(Tau!=delay))  begin if (front_Tus==3'b011) delay<=delay+1;	end else  TKI_flag<=0; 
	if ((TKP_flag)&&(Tau!=delay))  begin if (front_Tus==3'b011) delay<=delay+1;	end else  TKP_flag<=0; 
	if ((TOBM_flag)&&(Tau!=delay)) begin if (front_Tus==3'b011) delay<=delay+1;	end else TOBM_flag<=0; 		
		
	if ((Dtnc_flag)&&(!interval))  
		begin
		
		//sch_ram<=sch_ram-2'd2; 	
		interval<=q1<<1;
		
		end	  else if ((Dtnc_flag)&&(interval!=delay))  begin if (front_Tus==3'b011) delay<=delay+1; end	else if ((Dtnc_flag)&&(interval==delay))begin Dtnc_flag<=0; sch_ram<=sch_ram+1; end	
	
	if ((Dniu_flag)&&(!interval))  
		begin
		
		//sch_ram<=sch_ram-2'd2; 	
		interval<=q1;
		
		end	  else if ((Dniu_flag)&&(interval!=delay))  begin if (front_Tus==3'b011) delay<=delay+1; end	else if ((Dniu_flag)&&(interval==delay))begin Dniu_flag<=0; sch_ram<=sch_ram+1; end	 
		
	
	if ((Dni_flag)&&(!interval))  
		begin
		
		//sch_ram<=sch_ram-2'd2; 	
		interval<=q1;
		
		end	  else if ((Dni_flag)&&(interval!=delay))  begin if (front_Tus==3'b011) delay<=delay+1;	end else if ((Dni_flag)&&(interval==delay))begin Dni_flag<=0; sch_ram<=sch_ram+1; end	  
		
			
	if ((Dnpu_flag)&&(!interval))  
		begin
		
		//sch_ram<=sch_ram-2; 	
		interval<=q1;
		
		end	  else if ((Dnpu_flag)&&(interval!=delay)) begin  if (front_Tus==3'b011) delay<=delay+1; end else if ((Dnpu_flag)&&(interval==delay))begin Dnpu_flag<=0; sch_ram<=sch_ram+1; end	  	
	
	if ((Dnp_flag)&&(!interval))  
		begin
		
		//sch_ram<=sch_ram-2; 	
		interval<=q1;
		
		end	  else if ((Dnp_flag)&&(interval!=delay)) begin if (front_Tus==3'b011) delay<=delay+1;	end else if ((Dnp_flag)&&(interval==delay))begin Dnp_flag<=0; sch_ram<=sch_ram+1; end	
	
	if ((Dip_flag)&&(!interval))  
		begin
		
		//sch_ram<=sch_ram-2; 	
		interval<=q1;
		
		end	  else if ((Dip_flag)&&(interval!=delay)) begin  if (front_Tus==3'b011) delay<=delay+1;	end else if ((Dip_flag)&&(interval==delay))begin Dip_flag<=0; sch_ram<=sch_ram+1; end		
			
	if ((Dii_flag)&&(!interval))  
		begin
		
		//sch_ram<=sch_ram-2; 	
		interval<=q1;
		
		end	  else if ((Dii_flag)&&(interval!=delay))  begin if (front_Tus==3'b011) delay<=delay+1;	end else if ((Dii_flag)&&(interval==delay))begin Dii_flag<=0; sch_ram<=sch_ram+1; end		
		
		
		
		
	
     end

	
	end
	
	
assign  addr_rd=sch_ram;   
assign  Tno=TNO_flag;
assign  Tnc=TNC_flag;
assign  Tni=TNI_flag;
assign  Tki=TKI_flag;
assign  Tnp=TNP_flag;
assign  Tkp=TKP_flag;
	
endmodule
