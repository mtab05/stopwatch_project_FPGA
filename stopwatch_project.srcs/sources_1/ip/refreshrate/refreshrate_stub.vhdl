-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.3 (win64) Build 1682563 Mon Oct 10 19:07:27 MDT 2016
-- Date        : Thu Mar 28 20:17:04 2019
-- Host        : ME4166-09 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub {w:/Desktop/ELEC 3500
--               LABS/lab9_3_1/lab9_3_1.srcs/sources_1/ip/refreshrate/refreshrate_stub.vhdl}
-- Design      : refreshrate
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity refreshrate is
  Port ( 
    CLK : in STD_LOGIC;
    THRESH0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );

end refreshrate;

architecture stub of refreshrate is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "CLK,THRESH0,Q[15:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "c_counter_binary_v12_0_10,Vivado 2016.3";
begin
end;
