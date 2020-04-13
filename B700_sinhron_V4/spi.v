////////////////////////////////////////////////////////////////// ////
////                                                              ////
//// SPI SLAVE IP Core                                            ////
////                                                              ////
//// This file is part of the spislave project                     ////
//// http://www.opencores.org/project,spislave                    ////
////                                                              ////
//// Description                                                  ////
//// Implementation of spislave IP core according to              ////
//// spislave IP core specification document.                     ////
////                                                              ////
//// To Do:                                                       ////
////   -                                                          ////
////                                                              ////
//// Author(s):                                                   ////
////      - Sivakumar.B , email: siva@zilogic.com                 ////
////                      email: siva12@opencores.org             ////
////        Engineer  Zilogic systems,chennai. www.zilogic.com    ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
////                                                              ////
//// Copyright (C) 2009 Zilogic Systems and OPENCORES.ORG         ////
////                                                              ////
//// This source file may be used and distributed without         ////
//// restriction provided that this copyright statement is not    ////
//// removed from the file and that any derivative work contains  ////
//// the original copyright notice and the associated disclaimer. ////
////                                                              ////
//// This source file is free software; you can redistribute it   ////
//// and/or modify it under the terms of the GNU Lesser General   ////
//// Public License as published by the Free Software Foundation; ////
//// either version 2.1 of the License, or (at your option) any   ////
//// later version.                                               ////
////                                                              ////
//// This source is distributed in the hope that it will be       ////
//// useful, but WITHOUT ANY WARRANTY; without even the implied   ////
//// warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR      ////
//// PURPOSE. See the GNU Lesser General Public License for more ////
//// details.                                                     ////
////                                                              ////
//// You should have received a copy of the GNU Lesser General    ////
//// Public License along with this source; if not, download it   ////
//// from http://www.opencores.org/lgpl.shtml                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
////       RTL program for SPI GPIO -- shift 8 bit register       ////  


 
module spigpio(clk, cs, sr_in, data_out, sr_out);
  
	input clk, cs;	  
	wire clk,cs;
	input sr_in;	  
	wire sr_in;
	output sr_out; 	  
	wire sr_out;
	output [7:0] data_out;	
	wire [7:0] data_out;
		
	
	reg [7:0] data;	
	reg [7:0] sr;
	reg [7:0] tick;

	assign 	data_out= data;
	assign   sr_out=cs;
	
	always@(posedge   clk )
	begin
	
	tick<=tick+1'd1;
	
		if (cs == 1'b0)
		begin 
			 
			sr[7:1] <= sr[6:0];
			sr[0] <= sr_in;
		end 		
		
	end	  
	
	always @(posedge  cs) data<=sr;
		
		
endmodule
