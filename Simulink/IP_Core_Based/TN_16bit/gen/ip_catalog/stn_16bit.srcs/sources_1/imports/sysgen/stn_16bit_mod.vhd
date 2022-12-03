-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
entity stn_16bit_stub is
  port (
    input_t : in std_logic_vector( 16-1 downto 0 );
    clk : in std_logic;
    out_imag : out std_logic_vector( 16-1 downto 0 );
    out_real : out std_logic_vector( 16-1 downto 0 )
  );
end stn_16bit_stub;
architecture structural of stn_16bit_stub is 
begin
  sysgen_dut : entity xil_defaultlib.stn_16bit_0 
  port map (
    input_t => input_t,
    clk => clk,
    out_imag => out_imag,
    out_real => out_real
  );
end structural;
