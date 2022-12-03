-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
-- Date        : Sat Dec  3 00:03:45 2022
-- Host        : DESKTOP-1FT5C23 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               e:/FPGAProject/01102022/FPGAResearch/5_Final_Submission/Simulink/IP_Core_Based/TN_32bit/STN_32bit/vivado/sysgen_STN/sysgen_STN.gen/sources_1/ip/stn_32bit_0_1/stn_32bit_0_stub.vhdl
-- Design      : stn_32bit_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity stn_32bit_0 is
  Port ( 
    input_t : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    out_imag : out STD_LOGIC_VECTOR ( 31 downto 0 );
    out_real : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end stn_32bit_0;

architecture stub of stn_32bit_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "input_t[31:0],clk,out_imag[31:0],out_real[31:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "stn_32bit,Vivado 2021.1";
begin
end;
