// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.3 (win64) Build 1682563 Mon Oct 10 19:07:27 MDT 2016
// Date        : Thu Mar 28 20:17:04 2019
// Host        : ME4166-09 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {w:/Desktop/ELEC 3500
//               LABS/lab9_3_1/lab9_3_1.srcs/sources_1/ip/refreshrate/refreshrate_stub.v}
// Design      : refreshrate
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "c_counter_binary_v12_0_10,Vivado 2016.3" *)
module refreshrate(CLK, THRESH0, Q)
/* synthesis syn_black_box black_box_pad_pin="CLK,THRESH0,Q[15:0]" */;
  input CLK;
  output THRESH0;
  output [15:0]Q;
endmodule
