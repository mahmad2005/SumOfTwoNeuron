--Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
--Date        : Thu Nov 17 23:13:00 2022
--Host        : DESKTOP-1FT5C23 running 64-bit major release  (build 9200)
--Command     : generate_target twoneuronhdl_bd_wrapper.bd
--Design      : twoneuronhdl_bd_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity twoneuronhdl_bd_wrapper is
  port (
    clk : in STD_LOGIC;
    gateway_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gateway_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gateway_out1 : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
end twoneuronhdl_bd_wrapper;

architecture STRUCTURE of twoneuronhdl_bd_wrapper is
  component twoneuronhdl_bd is
  port (
    clk : in STD_LOGIC;
    gateway_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gateway_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gateway_out1 : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component twoneuronhdl_bd;
begin
twoneuronhdl_bd_i: component twoneuronhdl_bd
     port map (
      clk => clk,
      gateway_in(15 downto 0) => gateway_in(15 downto 0),
      gateway_out(15 downto 0) => gateway_out(15 downto 0),
      gateway_out1(15 downto 0) => gateway_out1(15 downto 0)
    );
end STRUCTURE;
