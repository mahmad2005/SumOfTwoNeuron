--Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
--Date        : Sat Dec  3 17:20:40 2022
--Host        : DESKTOP-1FT5C23 running 64-bit major release  (build 9200)
--Command     : generate_target stn_8bit_bd_wrapper.bd
--Design      : stn_8bit_bd_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity stn_8bit_bd_wrapper is
  port (
    clk : in STD_LOGIC;
    input_t : in STD_LOGIC_VECTOR ( 7 downto 0 );
    out_imag : out STD_LOGIC_VECTOR ( 7 downto 0 );
    out_real : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end stn_8bit_bd_wrapper;

architecture STRUCTURE of stn_8bit_bd_wrapper is
  component stn_8bit_bd is
  port (
    clk : in STD_LOGIC;
    input_t : in STD_LOGIC_VECTOR ( 7 downto 0 );
    out_imag : out STD_LOGIC_VECTOR ( 7 downto 0 );
    out_real : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component stn_8bit_bd;
begin
stn_8bit_bd_i: component stn_8bit_bd
     port map (
      clk => clk,
      input_t(7 downto 0) => input_t(7 downto 0),
      out_imag(7 downto 0) => out_imag(7 downto 0),
      out_real(7 downto 0) => out_real(7 downto 0)
    );
end STRUCTURE;
