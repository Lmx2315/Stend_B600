/***********************************************************************

  File:   ping_tb.f
  Rev:    3.1.167

  This file contains the input arguments for the Verilog simulator.

  Copyright (c) 2005-2008 Xilinx, Inc.  All rights reserved.

***********************************************************************/

+licq_all+
+access+r

../../src/xpci/pci_lc_i.v
../../src/wrap/pcim_lc_66_3_s.v

../source/cfg_ping.v
../source/ping.v
../source/pcim_top.v
../source/busrecord.v
../source/dumb_arbiter.v
../source/dumb_targ32.v
../source/stimulus.v
../source/ping_tb.v

$XILINX/verilog/src/glbl.v

+libext+.vmd+.v
-y $XILINX/verilog/src/unisims
-y $XILINX/verilog/src/simprims
