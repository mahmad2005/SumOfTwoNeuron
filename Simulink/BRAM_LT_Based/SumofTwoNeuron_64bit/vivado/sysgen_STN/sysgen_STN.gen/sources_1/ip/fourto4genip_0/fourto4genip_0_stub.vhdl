-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
-- Date        : Sat Dec 17 03:43:36 2022
-- Host        : DESKTOP-1FT5C23 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               e:/FPGAProject/01102022/FPGAResearch/6_FinalExam/Vivado/SumofTwoNeuron_64bit/vivado/sysgen_STN/sysgen_STN.gen/sources_1/ip/fourto4genip_0/fourto4genip_0_stub.vhdl
-- Design      : fourto4genip_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fourto4genip_0 is
  Port ( 
    gateway_in : in STD_LOGIC_VECTOR ( 9 downto 0 );
    clk : in STD_LOGIC;
    gateway_out : out STD_LOGIC_VECTOR ( 63 downto 0 )
  );

end fourto4genip_0;

architecture stub of fourto4genip_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "gateway_in[9:0],clk,gateway_out[63:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "fourto4genip,Vivado 2021.1";
begin
end;
