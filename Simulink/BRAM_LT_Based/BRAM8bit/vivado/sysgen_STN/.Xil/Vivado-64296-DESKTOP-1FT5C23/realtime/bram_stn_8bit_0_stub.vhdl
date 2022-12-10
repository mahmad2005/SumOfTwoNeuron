-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bram_stn_8bit_0 is
  Port ( 
    input_t : in STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    out_imag : out STD_LOGIC_VECTOR ( 7 downto 0 );
    out_real : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );

end bram_stn_8bit_0;

architecture stub of bram_stn_8bit_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "bram_stn_8bit,Vivado 2021.1";
begin
end;
