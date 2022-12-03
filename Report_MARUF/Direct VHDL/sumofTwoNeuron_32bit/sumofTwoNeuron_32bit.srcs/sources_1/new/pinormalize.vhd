
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;
use work.nn_package.all;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity pinormalize is
    Port ( 
        clk : in std_logic;
        magnitude : in STD_LOGIC_VECTOR (N-1 downto 0);
        magnitude_norm : out STD_LOGIC_VECTOR (N-1 downto 0));
end pinormalize;

architecture Behavioral of pinormalize is           -- *change with bitsize*
--constant pi : integer:= integer(real(3.14*ONE)); -- 3.14*2^27
--constant pi3 : integer:= integer(real(3.0*3.14*ONE)); -- 3*3.14*2^27
--constant pi2 : integer:= integer(real(2.0*3.14*ONE)); -- 2*3.14*2^27
--constant pi4 : integer:= integer(real(4.0*3.14*ONE)); -- 4*3.14*2^27

constant pi : integer:= integer(421443666); -- 3.14*2^27
constant pi3 : integer:= integer(1264330998); -- 3*3.14*2^27
constant pi2 : integer:= integer(842887332); -- 2*3.14*2^27
constant pi4 : integer:= integer(1685774664); -- 4*3.14*2^27
signal temp1 : signed(N-1 downto 0);
begin
process(CLK)
    begin
    if SIGNED(magnitude) > (TO_SIGNED(pi,N)) then
        if SIGNED(magnitude) < (TO_SIGNED(pi3,N)) then
            temp1 <= signed(magnitude) - (TO_SIGNED(pi2,N));
        else
            temp1 <= signed(magnitude) - (TO_SIGNED(pi4,N));
        end if;
    elsif SIGNED(magnitude) < (TO_SIGNED(-pi,N)) then
        if SIGNED(magnitude) > (TO_SIGNED(-pi3,N)) then
            temp1 <= signed(magnitude) + (TO_SIGNED(pi2,N));
        else
            temp1 <= signed(magnitude) + (TO_SIGNED(pi4,N));
        end if;
    else
        temp1 <= signed(magnitude);
    end if;
end process;

magnitude_norm <= std_logic_vector(temp1);

end Behavioral;