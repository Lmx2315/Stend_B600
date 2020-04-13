/***********************************************************************

  File:   userapp.v
  Rev:    3.1.167

  This is an example template for the user backend application.

  Copyright (c) 2005-2008 Xilinx, Inc.  All rights reserved.

***********************************************************************/


module userapp (
                FRAMEQ_N,
                TRDYQ_N,
                IRDYQ_N,
                STOPQ_N,
                DEVSELQ_N,
                ADDR,
                ADIO,
                CFG_VLD,
                CFG_HIT,
                C_TERM,
                C_READY,
                ADDR_VLD,
                BASE_HIT,
                S_TERM,
                S_READY,
                S_ABORT,
                S_WRDN,
                S_SRC_EN,
                S_DATA_VLD,
                S_CBE,
                PCI_CMD,
                REQUEST,
                REQUESTHOLD,
                COMPLETE,
                M_WRDN,
                M_READY,
                M_SRC_EN,
                M_DATA_VLD,
                M_CBE,
                TIME_OUT,
                CFG_SELF,
                M_DATA,
                DR_BUS,
                I_IDLE,
                M_ADDR_N,
                IDLE,
                B_BUSY,
                S_DATA,
                BACKOFF,
                INTR_N,
                PERRQ_N,
                SERRQ_N,
                KEEPOUT,
                CSR,
                SUB_DATA,
                CFG,
                RST,
                CLK
                );
                // synthesis attribute syn_edif_bit_format = "%u<%i>"
                // synthesis attribute syn_edif_scalar_format = "%u"
                // synthesis attribute syn_noclockbuf = 1
                // synthesis attribute syn_hier = "hard"


  // Declare the port directions.

  input         FRAMEQ_N;
  input         TRDYQ_N;
  input         IRDYQ_N;
  input         STOPQ_N;
  input         DEVSELQ_N;
  input  [31:0] ADDR;
  inout  [31:0] ADIO;
  input         CFG_VLD;
  input         CFG_HIT;
  output        C_TERM;
  output        C_READY;
  input         ADDR_VLD;
  input   [7:0] BASE_HIT;
  output        S_TERM;
  output        S_READY;
  output        S_ABORT;
  input         S_WRDN;
  input         S_SRC_EN;
  input         S_DATA_VLD;
  input   [3:0] S_CBE;
  input  [15:0] PCI_CMD;
  output        REQUEST;
  output        REQUESTHOLD;
  output        COMPLETE;
  output        M_WRDN;
  output        M_READY;
  input         M_SRC_EN;
  input         M_DATA_VLD;
  output  [3:0] M_CBE;
  input         TIME_OUT;
  output        CFG_SELF;
  input         M_DATA;
  input         DR_BUS;
  input         I_IDLE;
  input         M_ADDR_N;
  input         IDLE;
  input         B_BUSY;
  input         S_DATA;
  input         BACKOFF;
  output        INTR_N;
  input         PERRQ_N;
  input         SERRQ_N;
  output        KEEPOUT;
  input  [39:0] CSR;
  output [31:0] SUB_DATA;
  input [255:0] CFG;
  input         RST;
  input         CLK;


  // Add user logic here


endmodule
