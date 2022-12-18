--Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
--Date        : Sat Dec 17 03:39:39 2022
--Host        : DESKTOP-1FT5C23 running 64-bit major release  (build 9200)
--Command     : generate_target fourto4genip_bd_wrapper.bd
--Design      : fourto4genip_bd_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fourto4genip_bd_wrapper is
  port (
    clk : in STD_LOGIC;
    gateway_in : in STD_LOGIC_VECTOR ( 9 downto 0 );
    gateway_out : out STD_LOGIC_VECTOR ( 63 downto 0 )
  );
end fourto4genip_bd_wrapper;

architecture STRUCTURE of fourto4genip_bd_wrapper is
  component fourto4genip_bd is
  port (
    clk : in STD_LOGIC;
    gateway_in : in STD_LOGIC_VECTOR ( 9 downto 0 );
    gateway_out : out STD_LOGIC_VECTOR ( 63 downto 0 )
  );
  end component fourto4genip_bd;
begin
fourto4genip_bd_i: component fourto4genip_bd
     port map (
      clk => clk,
      gateway_in(9 downto 0) => gateway_in(9 downto 0),
      gateway_out(63 downto 0) => gateway_out(63 downto 0)
    );
end STRUCTURE;
