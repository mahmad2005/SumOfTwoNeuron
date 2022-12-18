-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
entity fourto4genip_stub is
  port (
    gateway_in : in std_logic_vector( 10-1 downto 0 );
    clk : in std_logic;
    gateway_out : out std_logic_vector( 64-1 downto 0 )
  );
end fourto4genip_stub;
architecture structural of fourto4genip_stub is 
begin
  sysgen_dut : entity xil_defaultlib.fourto4genip 
  port map (
    gateway_in => gateway_in,
    clk => clk,
    gateway_out => gateway_out
  );
end structural;
