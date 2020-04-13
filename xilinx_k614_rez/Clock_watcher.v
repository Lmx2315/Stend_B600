															   //-----------------------------------------------------------------------------
//
// Title       : Clock_watcher
// Design      : dsign1
// Author      : Sergey
// Company     : NIIDAR
//
//-----------------------------------------------------------------------------
//
// File        : Clock_watcher.v
// Generated   : Thu May 24 16:08:12 2012
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
//{module {Clock_watcher}}
module Clock_watcher ( clk ,str2, we_a,usec ,start,usx );

output start ;
wire start ;

input clk ;
wire clk ;

input str2 ;
wire str2 ;

input we_a ;
wire we_a ;



input [31:0] usx ;
wire [31:0] usx ;

input [31:0] usec ;
wire [31:0] usec ;

reg [1:0]  flag_start_control=0;
reg [31:0] i ;	// массив данных 	

reg flag_us =0;	

 //--------------------

reg flag_str=0;
reg flag_str2=0;
reg [7:0] sch_str=0;
reg str_out_reg=0;
reg str2_out_reg=0;
//----------------------

assign start= flag_str; // если все флаги подняты то start - поднят


always @(posedge clk)
begin

		if (flag_us) 
			begin
			sch_str<=0;
			flag_str<=1;
			end else
					
					if (flag_str) if (sch_str<20) sch_str<=sch_str+1; else 	flag_str<=0;

end


always @ (posedge clk)
	
	
		
	if (we_a)
	
	begin
	
	
 	i<=usx;   

	if (flag_start_control==1)	  flag_start_control<=0; else flag_start_control<=2; 
		 
	end else
	
	if (str2)
	
	begin
	
	flag_start_control<=1;
	
	end
	
	
	
always @(negedge clk)
	begin
			
		if ((i==usec)&&(flag_start_control==2))   flag_us<=1;   else  flag_us<=0;	
		
		
	end
	
	

endmodule
