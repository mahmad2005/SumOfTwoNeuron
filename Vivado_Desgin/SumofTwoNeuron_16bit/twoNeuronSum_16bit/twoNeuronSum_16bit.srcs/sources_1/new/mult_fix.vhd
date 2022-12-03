library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.nn_package.all;

entity mult_fix is
    Port ( a : in SIGNED (N-1 downto 0);
           b : in SIGNED (N-1 downto 0);
           c : out SIGNED (N-1 downto 0);
           fx : in integer
           );
end mult_fix;

architecture Behavioral of mult_fix is
    signal fxi : integer := N-Fx;
    signal temp: SIGNED (2*N-1 downto 0);
begin

    temp <= a*b;
    c <= temp(2*N-1-I downto fx);

end Behavioral;