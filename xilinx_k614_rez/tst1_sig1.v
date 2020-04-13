//-----------------------------------------------------------------------------
//
// Title       : tst_sig1
// Design      : Sinhron_B700
// Author      : Microsoft
// Company     : Microsoft
//
//-----------------------------------------------------------------------------
//
// File        : tst_sig1.v
// Generated   : Tue Sep  8 18:36:06 2015
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
//{module {tst_sig1}}
module tst1_sig1 ( clk ,upr1 ,upr2 ,upr3 ,TNO ,TNC ,TNI ,TKI ,TNP ,TKP ,TOBM ,TST1 ,TST2 );

output TST1 ;
wire TST1 ;
output TST2 ;
wire TST2 ;

input clk ;
wire clk ;
input upr1 ;
wire upr1 ;
input upr2 ;
wire upr2 ;
input upr3 ;
wire upr3 ;
input TNO ;
wire TNO ;
input TNC ;
wire TNC ;
input TNI ;
wire TNI ;
input TKI ;
wire TKI ;
input TNP ;
wire TNP ;
input TKP ;
wire TKP ;
input TOBM ;
wire TOBM ;

//reg a1;
reg a2;
reg a3;


assign TST1 = a2;
assign TST2 = a3;

always @(posedge clk)
begin

	if ({upr1,upr2,upr3}==3'b000)  
		begin
			a2 <= TNO;
			a3 <= TNC|TNP|TKP|TNI|TKI;
		end else
		
	if ({upr1,upr2,upr3}==3'b111)  
		begin
			a2 <= TNC;
			a3 <= TNP|TKP|TNI|TKI;
		end 
	/*	
	if ({upr1,upr2,upr3}==3'b001)  
		begin
			a2 <= TNC;
			a3 <= TNI|TKI;
		end else
	
	if ({upr1,upr2,upr3}==3'b010)  
		begin
			a2 <= TNC;
			a3 <= TNP|TKP;
		end else
	
	if ({upr1,upr2,upr3}==3'b100)  
		begin
			a2 <= TNC;
			a3 <= TNP|TKP|TNI|TKI;
		end else
	
	if ({upr1,upr2,upr3}==3'b010)  
		begin
			a2 <= TNO;
			a3 <= TNP|TKP|TNI|TKI;
		end else
		
	if ({upr1,upr2,upr3}==3'b100)  
		begin
			a2 <= TNO;
			a3 <= TKP|TKI;
		end 
*/	
	
end

endmodule
