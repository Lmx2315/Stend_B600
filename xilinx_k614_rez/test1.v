//-----------------------------------------------------------------------------
//
// Title       : test1
// Design      : sinh1_v1
// Author      : Microsoft
// Company     : Microsoft
//
//-----------------------------------------------------------------------------
//
// File        : test1.v
// Generated   : Tue Oct 29 15:16:44 2013
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
//{module {test1}}
module test1 ( clk ,ppi ,fs1 ,pf11 );

output [7:0] ppi ;
wire [7:0] ppi ;
output pf11 ;
wire pf11 ;

input clk ;
wire clk ;
input fs1 ;
wire fs1 ;

parameter   C_1  =8'h30;		// eiiaiaa onoaiiaee oaeouaai a?aiaie - aie
parameter 	C_2  =8'h31;		// eiiaiaa onoaiiaee oaeouaai a?aiaie - ?anu	
parameter 	C_3  =8'h32;		// eiiaiaa onoaiiaee oaeouaai a?aiaie - ieioou
parameter 	C_4  =8'h33;		// eiiaiaa onoaiiaee oaeouaai a?aiaie - naeoiau
parameter 	C_5  =8'h34;		// eiiaiaa onoaiiaee oaeouaai a?aiaie - ieeeenaeoiau

parameter   C_21  =8'h40;		// eiiaiaa onoaiiaee O a?aiaie - ?anu
parameter 	C_31  =8'h41;		// eiiaiaa onoaiiaee O a?aiaie - ieioou	
parameter 	C_41  =8'h42;		// eiiaiaa onoaiiaee O a?aiaie - naeoiau
parameter 	C_51  =8'h43;		// eiiaiaa onoaiiaee O a?aiaie - ieeeenaeoiau
parameter 	C_61  =8'h44;		// eiiaiaa onoaiiaee O a?aiaie - iee?inaeoiau	  

parameter 	Cgr       =8'h50;		// eiiaiaa ia?aea oeeeia?aiiu
parameter 	Cgr_end   =8'h51;		// eiiaiaa ieii?aiea oeeeia?aiiu

parameter   end_pgrm=8'hfe; // eia  eiiaiau eiiao i?ia?aiiu
		  
		  
parameter     Start_BP=8'haa; // eia ia?aea iaeaoa	
parameter   crc_packet=8'hee; // eia eia eiiaiau eiio?ieuiie noiiu iaeaoa			  

parameter   TOBM=8'h0d;		
parameter 	TNO =8'h01;
parameter 	TNC =8'h02;
parameter 	TNI =8'h03;
parameter 	TNP =8'h04;
parameter 	TKI =8'h05;
parameter 	TKP =8'h06;
parameter   Do  =8'hd1;	  // eia aeeoaeuiinoe iaci?a , ien - 4 000 000
parameter 	Dniu=8'h07;	

/*Eioa?aae a?aiaie Dieo ,
 o?aaoaiue aey iiaaioiaee neioacaoi?a (DDS)
  e ?aaioa (eieoeaeecaoey ?aaeno?ia ii eioi?iaoee iieo?aiiie io aeai?eoia oi?aaeaiey).
 16-?ac?yaiue eia aeeoaeuiinoe oi?a?aaiiiai eioa?aaea ia?aa ia?aeii eceo?aiey.
   Aie?ai oi?a?aaou eiioeun Oie ia iaiaa, ?ai ia 8 ien 
   ?an?aoiay oi?ioea:   Dieo = Iieo/8, Dieo<Die
      */
parameter 	Dni =8'h08;
 /*

Eioa?aae a?aiaie Iie, ien  (aene?ao eciaiaiey 8 ien)
 ion?eouaaaiue 
 ioiineoaeuii iineaaiaai eiioeuna Oei,
  eeai io eiioeuna Oio (aey ia?aiai eioa?aaea eceo?aiey a neo?aa auee??aiiiai aiiieieoaeuiiai eioa?aaea)
   ai eiioeuna Oie, ii?aaaey?uee iiiaio ia?aea eceo?aiey

 */
parameter   Dnpu=8'h09;
/*
Iiio, ien  (aene?ao eciaiaiey 8 ien)
Eioa?aae a?aiaie,
 o?aaoaiue aey iiaaioiaee neioacaoi?a (DDS)
  e ?aaioa 
  (eieoeaeecaoey ?aaeno?ia ii eioi?iaoee iieo?aiiie io aeai?eoia oi?aaeaiey). 
  Aie?ai oi?a?aaou eiioeun Oii ia iaiaa, ?ai ia 8 ien

  oi?ioea: Diio = Iiio/8, Diio<Dii

*/
parameter 	Dnp =8'h0a;

/*
16 ?ac?yaiue eia aeeoaeuiinoe eioa?aaea ia?aa ia?aeii i?eaia
Iii, ien ieieiaeuiia cia?aiea 16 (aene?ao eciaiaiey 8 ien)
Eioa?aae a?aiaie ia?ao Oee e Oii
oi?ioea:Dii = Iii/8, Dii>Diio
*/

parameter   Dip =8'h0b;
/*
Iei, ien  (aene?ao eciaiaiey 8 ien), ieieiaeuiia cia?aiea 128
16 ?ac?yaiue eia aeeoaeuiinoe eioa?aaea i?eaia.
 ii?aaaey?uee aeeoaeuiinou i?eaia.
  Caaaao eioa?aae a?aiaie ia?ao eiioeunaie Oii e Oei
  oi?ioea: Dei = Iei/8 - 16

*/
parameter   Dii =8'h0c;		
/*
 16 ?ac?yaiue eia aeeoaeuiinoe eioa?aaea eceo?aiey.
Eioa?aae a?aiaie io Oie ai Oee, a oa?aiea eioi?iai i?iaiaeony eceo?aiea neaiaea.
Oi?ioea : Dieo = Iieo/8;  Iee, ien ; Ieieiaeuiia cia?aiea 128 ien , aene?ao 8 ien.

0A  |  Eia Dee-aaeo 1 (aa?an 7) - eii.1  Eia Dee-aaeo 2 (aa?an 6) - eii.1
    |  7?  6?  5?  4?  3?  2?  1?  0?    7?  6?  5?  4?  3?  2?  1?  0?

 */
parameter   Dtnc=8'h0e;	  
parameter   End =8'hff;	 // i?eeac - eiiao oeeeia?aiiu		
//parameter   end_pgrm=8'hfe; // eia  eiiaiau eiiao i?ia?aiiu

reg flag=0;
reg flag2=0;
reg [8:0] sch=0;  
reg [14:0] sch2=0;
reg [7:0] A[255:0];	
reg [7:0] b=0;
reg [2:0] front=0; 
reg [7:0] crc=0;  

initial A[0  ] =8'haa;	   //ia?aei ia?ee
initial A[1]   =8'h01;	   //aa?an iieo?aoaey
initial A[2]   =C_1;	   // eiiaiaa onoaiiaee oaeouaai a?aiaie - aie
initial A[3]   =8'd0;
initial A[4]   =C_2;	   // eiiaiaa onoaiiaee oaeouaai a?aiaie - ?anu	  
initial A[5]   =8'd11;	
initial A[6]   =C_3;	   // eiiaiaa onoaiiaee oaeouaai a?aiaie - ieioou
initial A[7]   =8'd0;
initial A[8]   =C_4;	   // eiiaiaa onoaiiaee oaeouaai a?aiaie - naeoiau
initial A[9]   =8'd0;	
initial A[10]  =C_5;	  // eiiaiaa onoaiiaee oaeouaai a?aiaie - ieeeenaeoiau	  
initial A[11]  =8'd0;
initial A[12]  =8'd0;
initial A[13]  =C_21;	  // eiiaiaa onoaiiaee O a?aiaie - ?anu
initial A[14]  =8'd11;	
initial A[15]  =C_31;	  // eiiaiaa onoaiiaee O a?aiaie - ieioou	
initial A[16]  =8'd00;
initial A[17]  =C_41;	  // eiiaiaa onoaiiaee O a?aiaie - naeoiau
initial A[18]  =8'h00;	
initial A[19]  =C_51;	  // eiiaiaa onoaiiaee O a?aiaie - ieeeenaeoiau
initial A[20]  =8'h00;
initial A[21]  =8'h00;
initial A[22]  =C_61;	   // eiiaiaa onoaiiaee O a?aiaie - iee?inaeoiau
initial A[23]  =8'h01;
initial A[24]  =8'hf4;

initial A[25]  =Cgr;	//eiiaiaa - ia?aei oeeeia?aiiu

initial A[26]  =TNO;   // eiiaiaa caiene iaiyoe n?aaaouaaiee neaiaea TNO , iaiyou 32 aeoa
initial A[27]  =8'd02; // ?enei caienae a iaiyoe a oao?aaaeoao,

initial A[28]  =8'h00; // noa?oee aaeo ia?aie caiene  { caiene a?aiaie n?aaaouaaiee neaiaeia ioiineoaeuii ia?aea ion??oa ?acaeou ia aaa 8-ie aeoiuo ianoa }
initial A[29]  =8'h00; // 3-e aaeo ia?aie caiene
initial A[30]  =8'h00; // 2-e aaeo ia?aie caiene
initial A[31]  =8'h00; // ieaaoee aaeo ia?aie caiene

initial A[32]  =8'd00; // noa?oee aaeo aoi?ie caiene	
initial A[33]  =8'h1E; // 3-e aaeo aoi?ie caiene
initial A[34]  =8'h84; // 2-e aaeo aoi?ie caiene
initial A[35]  =8'h80; // ieaaoee aaeo aoi?ie caiene

initial A[36]  =8'hff; // noa?oee aaeo aoi?ie caiene	
initial A[37]  =8'hff; // 3-e aaeo aoi?ie caiene
initial A[38]  =8'hff; // 2-e aaeo aoi?ie caiene
initial A[39]  =8'hff; // ieaaoee aaeo aoi?ie caiene
	
initial A[40]  =TNC;	// eiiaiaa caiene iaiyoe n?aaaouaaiee neaiaea TNC
initial A[41]  =8'h01;

initial A[42]  =8'h00;  // noa?oee aaeo ia?aie caiene	
initial A[43]  =8'h00;  // 3-e aaeo ia?aie caiene
initial A[44]  =8'h00;  // 2-e aaeo ia?aie caiene
initial A[45]  =8'h90;  // ieaaoee aaeo ia?aie caiene

initial A[46]  =8'hff; // noa?oee aaeo aoi?ie caiene	
initial A[47]  =8'hff; // 3-e aaeo aoi?ie caiene
initial A[48]  =8'hff; // 2-e aaeo aoi?ie caiene
initial A[49]  =8'hff; // ieaaoee aaeo aoi?ie caiene
	
initial A[50]  =TOBM;
initial A[51]  =8'h01;

initial A[52]  =8'h00;	
initial A[53]  =8'h00;
initial A[54]  =8'h00;
initial A[55]  =8'h08;

initial A[56]  =8'hff; // noa?oee aaeo aoi?ie caiene	
initial A[57]  =8'hff; // 3-e aaeo aoi?ie caiene
initial A[58]  =8'hff; // 2-e aaeo aoi?ie caiene
initial A[59]  =8'hff; // ieaaoee aaeo aoi?ie caiene

initial A[60]  =TNI;
initial A[61]  =8'h02;
	
initial A[62]  =8'h00;
initial A[63]  =8'h00;
initial A[64]  =8'h01;	
initial A[65]  =8'h90;

initial A[66]  =8'h00;
initial A[67]  =8'h00;
initial A[68]  =8'h03;	
initial A[69]  =8'h20;

initial A[70]  =8'hff; // noa?oee aaeo aoi?ie caiene	
initial A[71]  =8'hff; // 3-e aaeo aoi?ie caiene
initial A[72]  =8'hff; // 2-e aaeo aoi?ie caiene
initial A[73]  =8'hff; // ieaaoee aaeo aoi?ie caiene
	
initial A[74]  =TKI;
initial A[75]  =8'h02;

initial A[76]  =8'h00;
initial A[77]  =8'h00;
initial A[78]  =8'h01;	
initial A[79]  =8'hf4;

initial A[80]  =8'h00;
initial A[81]  =8'h00;
initial A[82]  =8'h03;	
initial A[83]  =8'h84;

initial A[84]  =8'hff; // noa?oee aaeo aoi?ie caiene	
initial A[85]  =8'hff; // 3-e aaeo aoi?ie caiene
initial A[86]  =8'hff; // 2-e aaeo aoi?ie caiene
initial A[87]  =8'hff; // ieaaoee aaeo aoi?ie caiene

initial A[88]  =TNP;
initial A[89]  =8'd4;

initial A[90]  =8'h00;
initial A[91]  =8'h00;
initial A[92]  =8'h00;	
initial A[93]  =8'hc8;

initial A[94]  =8'h00;
initial A[95]  =8'h00;
initial A[96]  =8'h01;	
initial A[97]  =8'h2c;

initial A[98]  =8'h00;
initial A[99]  =8'h00;
initial A[100]  =8'h02;	
initial A[101]  =8'h58;

initial A[102]  =8'h00;
initial A[103]  =8'h00;
initial A[104]  =8'h03;	
initial A[105]  =8'he8;

initial A[106]  =8'hff; // noa?oee aaeo aoi?ie caiene	
initial A[107]  =8'hff; // 3-e aaeo aoi?ie caiene
initial A[108]  =8'hff; // 2-e aaeo aoi?ie caiene
initial A[109]  =8'hff; // ieaaoee aaeo aoi?ie caiene

initial A[110]  =TKP;
initial A[111]  =8'd05;

initial A[112]  =8'h00;
initial A[113]  =8'h00;
initial A[114]  =8'h00;	
initial A[115]  =8'h88;

initial A[116]  =8'h00;
initial A[117]  =8'h00;
initial A[118]  =8'h01;	
initial A[119]  =8'h18;

initial A[120]  =8'h00;
initial A[121]  =8'h00;
initial A[122]  =8'h01;	
initial A[123]  =8'h5e;

initial A[124]  =8'h00;
initial A[125]  =8'h00;
initial A[126]  =8'h02;	
initial A[127]  =8'hbc;

initial A[128]  =8'h00;
initial A[129]  =8'h00;
initial A[130]  =8'h04;	
initial A[131]  =8'h4c;

initial A[132]  =8'hff; // noa?oee aaeo aoi?ie caiene	
initial A[133]  =8'hff; // 3-e aaeo aoi?ie caiene
initial A[134]  =8'hff; // 2-e aaeo aoi?ie caiene
initial A[135]  =8'hff; // ieaaoee aaeo aoi?ie caiene

initial A[136]  =end_pgrm;     // eiiao oeeeia?aiiu

initial A[137]  =end_pgrm;	 // eiiao i?ia?aiiu

initial A[138]  =8'hff;
initial A[139]  =8'hff;	
initial A[140]  =8'h00;
initial A[141]  =8'hff;	
initial A[142]  =8'h00;

initial A[143]  =8'hff;
initial A[144]  =8'hff;	
initial A[145]  =8'h00;
initial A[146]  =8'hff;	
initial A[147]  =8'h00;

initial A[148]  =8'hff;
initial A[149]  =8'hff;	
initial A[150]  =8'h00;
initial A[151]  =8'hff;
initial A[152]  =8'hff;	
initial A[153]  =8'h00;
initial A[154]  =8'h00;

initial A[255]  =crc;	  // eiio?ieuiay noiia


always @(posedge clk) front<={front[1:0],fs1};	  
	
always @(posedge clk) if (fs1) begin flag2<=1; sch<=0; crc<=0; end else if (sch==255) flag2<=0; 	

always @(posedge clk) sch2<=sch2+1;		 	
	
always @(negedge clk) if (flag2) begin  sch<=sch+1;	  end	   
	


always @(negedge clk)
begin
 


 if (sch2<10) flag<=1; else flag<=0;
 
 if ((flag2) &&(sch<255)) begin b<=A[sch]; crc<=crc+A[sch]; end else if (sch==255) begin  b<=crc; A[sch]<=crc; end else b<=8'hff;


end
	 	
	assign pf11=flag;
    assign ppi=b;	 
		
endmodule
