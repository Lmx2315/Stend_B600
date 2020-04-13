`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:39:46 09/10/2015 
// Design Name: 
// Module Name:    tst_sg1 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module tst_sg1(
    input upr1,
	 input upr2,
    input TNO,
    input TNC,
    input TNI,
    input TKI,
    input TNP,
    input TKP,
    input TOBM,
    output sig1,
    output sig2
    );

reg out_reg1;
reg out_reg2;

assign sig1 = out_reg1;
assign sig2 = out_reg2;

always @(upr1 or upr2)
begin

	if ((upr1==0)&&(upr2==0)) 
	begin
	out_reg1<=TNC;
	out_reg2<=TNI|TKI|TNP|TKP;
	end
	
		if ((upr1==1)&&(upr2==0)) 
	begin
	out_reg1<=TNO;
	out_reg2<=TNC|TNI|TKI|TNP|TKP;
	end
	
			if ((upr1==0)&&(upr2==1)) 
	begin
	out_reg1<=TNC;
	out_reg2<=TNP|TKP;
	end
	
			if ((upr1==1)&&(upr2==1)) 
	begin
	out_reg1<=TNC;
	out_reg2<=TNI|TKI;
	end

end

endmodule
