//-----------------------------------------------------------------------------
//
// Title       : St_m_SS
// Design      : Sinhron
// Author      : Sergey
// Company     : NIIDAR
//
//-----------------------------------------------------------------------------
//
// File        : St_m_SS.v
// Generated   : Wed May 16 16:33:58 2012
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
//{module {St_m_SS}}
module St_m_SS ( clk,T8us ,Tnc ,Dniu ,Dni ,Dii ,Dnpu ,Dnp ,Dip ,Tni ,Tki ,Tnp ,Tkp );

output Tni ;
wire Tni ;
output Tki ;
wire Tki ;
output Tnp ;
wire Tnp ;
output Tkp ;
wire Tkp ;

input clk ;
wire clk ;	 
input T8us ;
wire T8us ;
input Tnc ;
wire Tnc ;
input [15:0] Dniu ;	   // Код упреждающего интервала перед излучением
wire [15:0] Dniu ;
input [15:0] Dni ;	    // Код  интервала перед излучением
wire [15:0] Dni ;
input [15:0] Dii ;		 // Код  интервала излучения
wire [15:0] Dii ;
input [15:0] Dnpu ;		 // Код упреждающего интервала перед приёмом
wire [15:0] Dnpu ;
input [15:0] Dnp ;		 // Код  интервала  приёма
wire [15:0] Dnp ;
input [15:0] Dip ;		  // Код интервала перед приёмом
wire [15:0] Dip ;

reg [15:0] Dniu_r=0;
reg [15:0] Dni_r=0;	
reg [15:0] Dnpu_r=0; 
reg [15:0] Dnp_r=0;	 
reg [15:0] Dip_r=0;	 
reg [15:0] Dii_r=0;

reg [31:0] Tni_r=32'd0;
reg [31:0] Tnp_r=32'd0;
reg [31:0] Tki_r=32'd0;
reg [31:0] Tkp_r=32'd0;

reg [15:0] tik=0;  // счётчик 8x микросекунд  
reg [2:0] front_T8us=0; // регистр фронтов сигнала T8us
reg [2:0] front_Tnc=0; // регистр фронтов сигнала Tnc	

reg Tnc_flag=0; // флаг сигнала Тнц
reg Tni_flag=0;	// флаг сигнала Тни
reg Tki_flag=0;	// флаг сигнала Тки
reg Tnp_flag=0;	// флаг сигнала Тнп
reg Tkp_flag=0;	// флаг сигнала Ткп

always @(posedge clk)
	
begin

	Dniu_r<=Dniu;
	Dni_r<=Dni;
	Dnpu_r<=Dnpu;
	Dnp_r<=Dnp;
	Dip_r<=Dip;

end

 /*

always @(posedge clk)
	
	begin
	
		front_T8us<={front_T8us[1:0],T8us};  // заполнение регистра фронтов		
		front_Tnc<={front_Tnc[1:0],Tnc};  // заполнение регистра фронтов сигнала Tnc   
		
		
			
			
		if (front_Tnc==3'b011) Tnc_flag<=1'b1;   // подняли флаг на сигнал Тнц 
			
		if (Tnc_flag)
			
		begin
		
				
			if (front_T8us==3'b011) 	
		
			begin
		
		if (!Tni_flag) tik<=tik+1'd1;	else tik<=0;   // если есть передний фронт 125 кГц импульса - запустить счётчик
		
		if (Dni_r==tik) 
				
				begin
					
					Tni<=32'hffff_ffff;
					Tni_flag<=1'b1;			  // подняли флаг на сигнал Тни 
					
				end
		
					
			if (Tni_flag)
			
					begin

				
				
					end	
			
			end
		
					
		end
		
		
		
	end
		 */


endmodule
