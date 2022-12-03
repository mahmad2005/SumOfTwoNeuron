----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/22/2022 03:49:08 PM
-- Design Name: 
-- Module Name: sysgen_STN - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use work.nn_package.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sysgen_STN is
    Port ( 
    CLK : in STD_LOGIC;
    input_t : IN STD_LOGIC_VECTOR(N-1 DOWNTO 0);
    out_imag : OUT STD_LOGIC_VECTOR(N-1 DOWNTO 0);
    out_real : OUT STD_LOGIC_VECTOR(N-1 DOWNTO 0)
    );
end sysgen_STN;

architecture Behavioral of sysgen_STN is
COMPONENT stn_32bit_0
  PORT (
    input_t : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    clk : IN STD_LOGIC;
    out_imag : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    out_real : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END COMPONENT;
begin
your_instance_name : stn_32bit_0
  PORT MAP (
    input_t => input_t,
    clk => clk,
    out_imag => out_imag,
    out_real => out_real
  );

end Behavioral;
