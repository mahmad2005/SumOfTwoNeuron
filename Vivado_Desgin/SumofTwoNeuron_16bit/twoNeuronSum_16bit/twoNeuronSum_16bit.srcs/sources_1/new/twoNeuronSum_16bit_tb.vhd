library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

use STD.textio.all;
use ieee.std_logic_textio.all;

use work.nn_package.all;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity twoNeuronSum_16bit_tb is
--  Port ( );
end twoNeuronSum_16bit_tb;

architecture Behavioral of twoNeuronSum_16bit_tb is

file result : text is out "FinalData.txt";
file result_cos : text is out "FinalData_cos.txt";
file result_sin : text is out "FinalData_sin.txt";

file file_RESULTS : text;
file file_RESULTS_Sin : text;
file file_RESULTS_Cos : text;

    signal  CLK     :  std_logic :=  '0'; 
    
    signal inpuy_t     :  STD_LOGIC_VECTOR (N-1 downto 0):= (others=>'0'); 
    signal  y_real       :  STD_LOGIC_VECTOR (N-1 downto 0);
    signal  y_imag       :  STD_LOGIC_VECTOR (N-1 downto 0);
    
    constant CLOCK_PERIOD   :   time                           := 100 ns;
begin

file_open(file_RESULTS, "output_results.txt", write_mode);
file_open(file_RESULTS_Sin, "output_sin.txt", write_mode);
file_open(file_RESULTS_Cos, "output_cos.txt", write_mode);

count_inst: entity work.twoNeuronSum_16bit
   port map (
            CLK => CLK,
            t   =>  inpuy_t,
            y_real => y_real,
            y_imag => y_imag
   );


   process
   
   variable v_OLINE     : line;
   variable v_OLINE_Sin     : line;
   variable v_OLINE_Cos     : line;
   VARIABLE  outLine  : LINE;
   variable number12 : real;
   VARIABLE  outLine_cos  : LINE;
   VARIABLE  outLine_sin  : LINE;
        begin
        
        for i in 0 to 628 loop
                
            CLK <= '1';
            wait for (CLOCK_PERIOD)/2;
            CLK <= '0';
            inpuy_t <= STD_LOGIC_VECTOR(to_signed(integer(input_1(i)*ONE),N));            --  3.1416 ->  1686633657 
            wait for (CLOCK_PERIOD)/2; 
                 
--           write(v_OLINE, (expout(63 downto 32)) , right, 32);
--           write(v_OLINE, 0 , right, 10);
--           write(v_OLINE, (expout(31 downto 0)) , right, 32);
           
--           write(v_OLINE_Sin, (expout(63 downto 32)) , right, 32);
--           write(v_OLINE_Cos, (expout(31 downto 0)) , right, 32);
--           writeline(file_RESULTS, v_OLINE);
--           writeline(file_RESULTS_Sin, v_OLINE_Sin);
--           writeline(file_RESULTS_Cos, v_OLINE_Cos);

--           number12 := real(TO_INTEGER(SIGNED(expout(63 downto 32))))/real(2**30);
--           write(outLine, number12);
--           write(outLine,string'(" , "));
--           write(outLine, real(TO_INTEGER(SIGNED(expout(31 downto 0))))/real(2**30));
           
		   write(outLine_cos,real(TO_INTEGER(SIGNED(y_real(15 downto 0))))/real(2**11));
		   write(outLine_sin,real(TO_INTEGER(SIGNED(y_imag(15 downto 0))))/real(2**11));
           
           --writeline(result,outLine);
		   writeline(result_cos,outLine_cos);
		   writeline(result_sin,outLine_sin);
       end loop;
       
    end process;
--     file_close(file_RESULTS);
--     file_close(file_RESULTS_Sin);
--     file_close(file_RESULTS_Cos);
end Behavioral;