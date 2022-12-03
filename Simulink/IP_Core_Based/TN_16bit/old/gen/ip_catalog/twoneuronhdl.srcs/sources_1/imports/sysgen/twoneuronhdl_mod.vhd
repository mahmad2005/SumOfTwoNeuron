-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
entity twoneuronhdl_stub is
  port (
    gateway_in : in std_logic_vector( 16-1 downto 0 );
    clk : in std_logic;
    gateway_out : out std_logic_vector( 16-1 downto 0 );
    gateway_out1 : out std_logic_vector( 16-1 downto 0 )
  );
end twoneuronhdl_stub;
architecture structural of twoneuronhdl_stub is 
begin
  sysgen_dut : entity xil_defaultlib.twoneuronhdl_0 
  port map (
    gateway_in => gateway_in,
    clk => clk,
    gateway_out => gateway_out,
    gateway_out1 => gateway_out1
  );
end structural;
