// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.3 (win64) Build 1682563 Mon Oct 10 19:07:27 MDT 2016
// Date        : Thu Mar 28 20:17:04 2019
// Host        : ME4166-09 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {w:/Desktop/ELEC 3500
//               LABS/lab9_3_1/lab9_3_1.srcs/sources_1/ip/refreshrate/refreshrate_sim_netlist.v}
// Design      : refreshrate
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "refreshrate,c_counter_binary_v12_0_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_10,Vivado 2016.3" *) 
(* NotValidForBitStream *)
module refreshrate
   (CLK,
    THRESH0,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 thresh0_intf DATA" *) output THRESH0;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) output [15:0]Q;

  wire CLK;
  wire [15:0]Q;
  wire THRESH0;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "16" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1001110001000" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "1" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "1" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  refreshrate_c_counter_binary_v12_0_10 U0
       (.CE(1'b1),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(THRESH0),
        .UP(1'b1));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "1001110001000" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "1" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "1" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "16" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_counter_binary_v12_0_10" *) (* downgradeipidentifiedwarnings = "yes" *) 
module refreshrate_c_counter_binary_v12_0_10
   (CLK,
    CE,
    SCLR,
    SSET,
    SINIT,
    UP,
    LOAD,
    L,
    THRESH0,
    Q);
  input CLK;
  input CE;
  input SCLR;
  input SSET;
  input SINIT;
  input UP;
  input LOAD;
  input [15:0]L;
  output THRESH0;
  output [15:0]Q;

  wire CLK;
  wire [15:0]Q;
  wire THRESH0;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "16" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1001110001000" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "1" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "1" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  refreshrate_c_counter_binary_v12_0_10_viv i_synth
       (.CE(1'b0),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(THRESH0),
        .UP(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
EgsHeoOxdUxsX5gIKiaj0rabVidhYZrAC1ccO7uW1WWUY+5F26NMKfuRo2RbzpHAhKg6YWmehafX
vTPGaJRKHw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Z34YzyhCkqWVBd+wfHLLkUW/H60lDZ7DBcaAzQK4qK/8LgoJdsH6DZ43BtKjfZhNz/T8CrFXpTq4
lXACmrJsvh8DNPmvB7LaQhnP9Q1UWB/2BUP3fAUHMA2d2pKOqEj3XF5pbikvIPiyQENN7Kn513bC
CvwAQIx2bzxkiYX1MZc=

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
SSMUY5NrZw2M/7w7U4gsSjNRmWfRCxfALTKD8+8C1h91c8RWo9X4x7A5m9YG0Pa491k6Lxf7I0eD
goajxjfLKNI+buWpvfZlHEcU7678iPGqz4g94c5n80sa3TKcwpV6f+p7C93Rto4JgUHSigA3gLBN
DzpD+6xOS6P2mkrRsQs=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Tbb//X7l5IJljgHR/Q0swC7OpOr9LwQv6rxLgPXOMJNm5TebIkTTeQKZBlg96/x0gqqgFX19ZASr
qWxh3YL/aoYejZTUMHYF7ktggRgHydykFFfRo8xGrq33bJ1LOeuIQOZyZjZTB9zCoo8CMX8wCtcA
0ovBA4GCY5VFNLy/1whSrZs8R7CLSdrlxUJTTCXjF0f+Tf8OyjSS2VGyZfJbmSNnFJJuItoBbUO0
6qdcZfL3eQrA6y/AWPiFhGILWhBAvVGEahvuOHYDa8S1IUccHMOxQJtq0Y1UqRNB/qNmlHUKL/iH
IEr89vPUXnsfHTV4I+xFieSKz2LwzLXsAys4Yw==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kfJNFYIhzZvlPwb4KI2aCH6Fx40tZkxF1Q5EfJSPdq2JohdV53Dn2x9HbgUIqvISu5UuFwT8R+oV
/B66+AOKivg+iSCvhh+HSv/oQNtgHeIG5xMgV8d3jXD9G4abV/g3jySuWrjXT9Z0IqvTQjqmKOR2
9nVDANRSJiSyM0Y275L4ylvrdjL8Yim0M/e9k+N+kNYfcQAzQYd/lfTmcdkn74/0qt030HQ2LxSy
A+NwqYXBuB4VkkCPvigd/s63XQNHxeHfRZs7q0iWos8Jgu9uI1zA6ZN4O4Cts2V9BF+SRqJdzrLy
1t5mzK/i0gmdsb8ds3y4b3AMet8PeT7w9sZc/A==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinx_2016_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MzDVqgEdc7DZdlm2cItrUQlry/9kVuVoApPpWX7zga11t+tLgAqain8Fhjl9Q1hFV6Rwv6WUUyOW
dL6uK1Pj4Tc0mqHyEMvAW2tHA/QcK0pphBofEd8Sd2oRBJ0l+XghTz/o5eIVzoxDF0h6fERIgAw6
PZK1iaI5d5osnKGqaJVhxQWf/M3XiOn9jCOGskyvtqNiiXNki/oAWPJNgm3Hb599C3ugMxNKGT5x
H76UXyZbcrmrFSkYz6XydewUEOb2eruDdZtf4QmJWyJ+WqAHgjSB7kcn3UfysW1iW59u7oxSpMgU
oLKWKFtXGSzN2+DVJ91qu7hIDmX5Q2X//JK4Cg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
gFZPTzfY7S3b9rQdtkhoGtluGN8fa8R4by7fqIqW0j6Awgar0/bj7qMDSb1beeW5QSKfJkgIk0MW
qQm+gvPpLLINlmuAtr6UK1IULdYidHkuL4JaXzbMH8SvQ25+2rLxroYqOozClKnMDzIAkAVtk1QL
BL6N1DDcMzUWt+8hllWJy1y1LrO/vD2Jie1pY8tWIEGM73IvaPvH5AFT8OobQ6BmetIpxG5SQmPx
ppcJwW1hJlda1DRze/2DLlspAMEwIe+/iGJDb1/ypFu4eeEsODjuIp7Q/TLWEl3Y+H3O/kdr9ZaS
jAABAPyZtkDCZkYYATsHTcv1CXLzqwE0AgjUlw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP05_001", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
QwbQ1NDcznvO6lJgaRjf+i0aliRqYAiSJGeupgmi+NlXzYkY1OFrXQcL6HSJz/ZvmLSdF6+gjUNl
UBKGaUhIiNW7/2/Tqw+T7AYQgCTh5yN8zXo1Uzi2NnHyKq3KsHRLFXGHIt6SdFl3hmqk0hTx7cWU
3y8ck6UKRsqSbJLLSh8yzTsb1Harm+f3N9wbrX6vvFgs151MmFA54J7Amilgsk0LR6lqSXvcfDBF
GHd3whL4+4hw/GTrPsPdcyvKQ7rutArCt1v7wP0J1/1N2oaVNjtkjzG96OxHqkmg4zXmh3pBfskF
HAKmXXLhgg3N0iTrtzW6YDxtDczVXPGib2ZT9A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9104)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
