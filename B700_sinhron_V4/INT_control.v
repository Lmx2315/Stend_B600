`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:38:51 07/17/2015 
// Design Name: 
// Module Name:    INT_control 
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
module INT_control(
    input INT,
    input clk,
	 input T1us,
    output INT1,
    output INT2
    );

reg [15:0] sch=0;
reg [16:0] sch1=0;
reg [16:0] sch2=0;

reg FLAG1_reg=0;
reg FLAG2_reg=0;

reg INT1_reg=0;
reg INT2_reg=0;

reg [4:0] fr1_reg=0;
reg [4:0] fr2_reg=0;

wire FRONT1;
wire FRONT2;

wire SPAD1;


assign FRONT1 = (~fr1_reg[4])&fr1_reg[3]&fr1_reg[2];
assign FRONT2 = (~fr2_reg[4])&fr2_reg[3]&fr2_reg[2];

assign SPAD1  = fr1_reg[4]&fr1_reg[3]&(~fr1_reg[2]);

always @(posedge clk) fr1_reg<={fr1_reg[3:0],INT};
always @(posedge clk) fr2_reg<={fr2_reg[3:0],T1us};


always @(posedge clk)
begin
if (FRONT1) 
	begin
	sch<=0;
	FLAG1_reg<=1;
	FLAG2_reg<=0;
	end
	else 
		if (SPAD1) 
			begin 
				FLAG1_reg<=0;
				FLAG2_reg<=1;
			end

if ((FLAG1_reg)&&(FRONT2)) 
	begin
	sch<=sch+1; 
	end else if (!FLAG1_reg) sch<=0;

if ((FLAG2_reg)&&(sch>5)&&(sch<15)&&(!INT1_reg))  INT1_reg<=1; //прерывание от К615 если  импульс прерывания длительостью от 5 до 15 мкс! 
	else  
		begin
			if ((INT1_reg==1)&&(sch1<100)&&(FRONT2)) sch1<=sch1+1;//делаем длительность импульса 100 мкс
			else if (sch1==100) begin INT1_reg<=0; sch1<=0; end
		end



if ((FLAG2_reg)&&(sch>25)&&(sch<35)&&(!INT2_reg))  INT2_reg<=1; 
	else  
		begin
			if ((INT2_reg==1)&&(sch2<50000)&&(FRONT2)) sch2<=sch2+1;//делаем длительность импульса 100 мкс
			else if (sch2==50000) begin INT2_reg<=0; sch2<=0; end//прерывание от К615 в части резервирования если импульс прерывания длительостью от 25 до 35 мкс!	
		end

end

assign INT1 = INT1_reg;
assign INT2 = INT2_reg;

endmodule
