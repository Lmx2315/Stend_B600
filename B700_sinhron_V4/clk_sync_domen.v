/*



  parameter int  pLENGTH = 4;



  logic  pulse_synchronizer__clkin   ;
  logic  pulse_synchronizer__resetin ;
  logic  pulse_synchronizer__sin     ;
  logic  pulse_synchronizer__clkout  ;
  logic  pulse_synchronizer__resetout;
  logic  pulse_synchronizer__sout    ;



  pulse_synchronizer
  #(
    .pLENGTH ( pLENGTH )
  )
  pulse_synchronizer
  (
    .clkin    ( pulse_synchronizer__clkin    ) ,
    .resetin  ( pulse_synchronizer__resetin  ) ,
    .sin      ( pulse_synchronizer__sin      ) ,
    .clkout   ( pulse_synchronizer__clkout   ) ,
    .resetout ( pulse_synchronizer__resetout ) ,
    .sout     ( pulse_synchronizer__sout     )
  );


  assign pulse_synchronizer__clkin    = '0 ;
  assign pulse_synchronizer__resetin  = '0 ;
  assign pulse_synchronizer__sin      = '0 ;
  assign pulse_synchronizer__clkout   = '0 ;
  assign pulse_synchronizer__resetout = '0 ;



*/

//
// pulse syncronizer with loop back
//

module pulse_synchronizer

(
  clkin    ,
  resetin  ,
  sin      ,
  clkout   ,
  resetout ,
  sout
);

  //------------------------------------------------------------------------------------------------------
  //
  //------------------------------------------------------------------------------------------------------

  input  wire  clkin   ;
  input  wire  resetin ;
  input  wire  sin     ;
  input  wire  clkout  ;
  input  wire  resetout;
  output wire  sout    ;
  
  parameter  pLENGTH = 4;

  //------------------------------------------------------------------------------------------------------
  //
  //------------------------------------------------------------------------------------------------------

  reg level         ; // RS level triger for input pulses
  reg level_clrin   ;
  reg level_clrout  ;

  reg         [1:0] dffin;  // clkout -> clk_in synronizer for level clear feedback
  reg [pLENGTH-1:0] dffout; // clkin -> clkout syncronizer for level

  //------------------------------------------------------------------------------------------------------
  // Input converter edge/level clkin -> level clkin
  //------------------------------------------------------------------------------------------------------

  always_ff @(posedge clkin or posedge resetin) begin
    if (resetin)
      level <= 1'b0;
    else if (sin)
      level <= 1'b1;
    else if (level_clrin)
      level <= 1'b0;
  end

  //------------------------------------------------------------------------------------------------------
  // Forward syncronizer level clkin -> edge clkout
  //------------------------------------------------------------------------------------------------------

  always_ff @(posedge clkout or posedge resetout) begin
    if (resetout)
      dffout <=0;
    else
      dffout <= {dffout[pLENGTH-2:0], level};
  end

  assign sout           = ~dffout[pLENGTH-1] & dffout[pLENGTH-2]; // posedge
  assign level_clrout   =  dffout[pLENGTH-2];

  //------------------------------------------------------------------------------------------------------
  // Feedback syncronizer level clkout -> level clkin
  //------------------------------------------------------------------------------------------------------
  always_ff @(posedge clkin or posedge resetin) begin
    if (resetin)
      dffin <= 0;
    else
      dffin <= {dffin[0], level_clrout};
  end

  assign level_clrin = dffin[1];

endmodule