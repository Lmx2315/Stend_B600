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
input [15:0] Dniu ;	   // ��� ������������ ��������� ����� ����������
wire [15:0] Dniu ;
input [15:0] Dni ;	    // ���  ��������� ����� ����������
wire [15:0] Dni ;
input [15:0] Dii ;		 // ���  ��������� ���������
wire [15:0] Dii ;
input [15:0] Dnpu ;		 // ��� ������������ ��������� ����� ������
wire [15:0] Dnpu ;
input [15:0] Dnp ;		 // ���  ���������  �����
wire [15:0] Dnp ;
input [15:0] Dip ;		  // ��� ��������� ����� ������
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

reg [15:0] tik=0;  // ������� 8x �����������  
reg [2:0] front_T8us=0; // ������� ������� ������� T8us
reg [2:0] front_Tnc=0; // ������� ������� ������� Tnc	

reg Tnc_flag=0; // ���� ������� ���
reg Tni_flag=0;	// ���� ������� ���
reg Tki_flag=0;	// ���� ������� ���
reg Tnp_flag=0;	// ���� ������� ���
reg Tkp_flag=0;	// ���� ������� ���

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
	
		front_T8us<={front_T8us[1:0],T8us};  // ���������� �������� �������		
		front_Tnc<={front_Tnc[1:0],Tnc};  // ���������� �������� ������� ������� Tnc   
		
		
			
			
		if (front_Tnc==3'b011) Tnc_flag<=1'b1;   // ������� ���� �� ������ ��� 
			
		if (Tnc_flag)
			
		begin
		
				
			if (front_T8us==3'b011) 	
		
			begin
		
		if (!Tni_flag) tik<=tik+1'd1;	else tik<=0;   // ���� ���� �������� ����� 125 ��� �������� - ��������� �������
		
		if (Dni_r==tik) 
				
				begin
					
					Tni<=32'hffff_ffff;
					Tni_flag<=1'b1;			  // ������� ���� �� ������ ��� 
					
				end
		
					
			if (Tni_flag)
			
					begin

				
				
					end	
			
			end
		
					
		end
		
		
		
	end
		 */


endmodule
