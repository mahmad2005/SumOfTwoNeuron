-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
-- Date        : Sat Dec  3 18:54:53 2022
-- Host        : DESKTOP-1FT5C23 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               e:/FPGAProject/01102022/FPGAResearch/5_Final_Submission/Simulink/BRAM_LT_Based/BRAM16bit/vivado/sysgen_STN/sysgen_STN.gen/sources_1/ip/bram_stn_16bit_0_4/bram_stn_16bit_0_stub.vhdl
-- Design      : bram_stn_16bit_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bram_stn_16bit_0 is
  Port ( 
    input_t : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clk : in STD_LOGIC;
    out_imag : out STD_LOGIC_VECTOR ( 15 downto 0 );
    out_real : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );

end bram_stn_16bit_0;

architecture stub of bram_stn_16bit_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "input_t[15:0],clk,out_imag[15:0],out_real[15:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "bram_stn_16bit,Vivado 2021.1";
begin
end;
