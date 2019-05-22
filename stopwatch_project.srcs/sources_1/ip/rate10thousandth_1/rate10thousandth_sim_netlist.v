// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.3 (win64) Build 1682563 Mon Oct 10 19:07:27 MDT 2016
// Date        : Sat Mar 30 22:31:09 2019
// Host        : ME4166-19 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {w:/Desktop/ELEC 3500
//               LABS/stopwatch_project/stopwatch_project.srcs/sources_1/ip/rate10thousandth_1/rate10thousandth_sim_netlist.v}
// Design      : rate10thousandth
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "rate10thousandth,c_counter_binary_v12_0_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_10,Vivado 2016.3" *) 
(* NotValidForBitStream *)
module rate10thousandth
   (CLK,
    CE,
    SCLR,
    THRESH0,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) input CE;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 thresh0_intf DATA" *) output THRESH0;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) output [11:0]Q;

  wire CE;
  wire CLK;
  wire [11:0]Q;
  wire SCLR;
  wire THRESH0;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "12" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "111110100" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "1" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "1" *) 
  (* c_thresh0_value = "110010" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  rate10thousandth_c_counter_binary_v12_0_10 U0
       (.CE(CE),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(THRESH0),
        .UP(1'b1));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "111110100" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "1" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "1" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "1" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "1" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "110010" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "12" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_counter_binary_v12_0_10" *) (* downgradeipidentifiedwarnings = "yes" *) 
module rate10thousandth_c_counter_binary_v12_0_10
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
  input [11:0]L;
  output THRESH0;
  output [11:0]Q;

  wire CE;
  wire CLK;
  wire [11:0]Q;
  wire SCLR;
  wire THRESH0;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "12" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "111110100" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "1" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "1" *) 
  (* c_thresh0_value = "110010" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  rate10thousandth_c_counter_binary_v12_0_10_viv i_synth
       (.CE(CE),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
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
AcenzLntyZCj/LlK94UlcpQz5Mh/5inaf1SspoDxcpJG06za8tW5z555C4ZoVrvVet3MOTy7PuJ+
bixsBXjctBqvUHpka6T2K1zjhI7f6MD8MvVVE4+jABHwMWZb/evMN5Ur2kOZAUtgRmZtQ2uhUwPX
08UWpSR1VOJEnssk/KVsKJb8ksMDFkn4IXT+bKDJE4Yig0h5Alur6s6rEC9lGa+Erd10CYxy8zDh
XChFGkq2d9GyDYjIB3DVoo+EsUY1fuAjC0dUPiGvh+IRTiep0aIaoUg6ZOEFAoU6hdKUJ18/rbkZ
gZ8NqPyHREIBDNNFNP+6R8MiV8FKzln4sAJ+pw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP05_001", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
pLB34L2wAPGibXoq4ALhcksXdnZjqSvnOSYSR0UDtd6hnc+IXgexSN1YU7qOKeNPxvt8s9Tgreq5
ZEBYBla2xQ+viAJbSHpW5EGpxz/1tZjyg4EAvAMPkW32z13d6hA2PGY13h2mgf8LDDi9juNEAQ+2
ncNHoBmQKK24P9OirJWxWNxbTaAQ0iKmNcFYrVJCxadNLTPkaYqeupopN5rgDZiCXujRTv78uJcm
9wq9OjWsuwdI6BDdCEizNfy1BEjWozelhGo7Atw8JFEA+TAsBZyKwi4+ud2WGO7XTvttfS+mwScj
KKHxesdZJfvDDkaCM4GZS+v8805Gq8noCyGPHw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10944)
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
