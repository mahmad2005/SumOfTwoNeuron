----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/19/2022 02:14:18 PM
-- Design Name: 
-- Module Name: sumofTwoNeuron_8bit - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;
use work.nn_package.all;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sumofTwoNeuron_8bit is
    Port ( CLK : in STD_LOGIC;
           t : in STD_LOGIC_VECTOR (N-1 downto 0);
           y_real : out STD_LOGIC_VECTOR (N-1 downto 0);
           y_imag : out STD_LOGIC_VECTOR (N-1 downto 0));
end sumofTwoNeuron_8bit;

architecture Behavioral of sumofTwoNeuron_8bit is
--constant omega_1 : signed(N-1 downto 0) := to_signed(integer(real(1.0*ONE)),N);         --fixed_8_3
--constant omega_2 : signed(N-1 downto 0) := to_signed(integer(real(2.0*ONE)),N);         --fixed_8_3
--constant phi_1 : signed(N-1 downto 0) := to_signed(integer(real((3.14/2)*ONE)),N);      --fixed_8_3
--constant phi_2 : signed(N-1 downto 0) := to_signed(integer(real((3.14/2)*ONE)),N);      --fixed_8_3
--constant expo_ln_theta_1 : signed(N-1 downto 0) := to_signed(integer(real(2.0*ONE)),N); -- *change with bitsize*   fixed_8_3
--constant expo_ln_theta_2 : signed(N-1 downto 0) := to_signed(integer(real(2.0*ONE)),N); -- *change with bitsize*   fixed_8_3

constant omega_1 : signed(N-1 downto 0) := to_signed(integer(8),N);         --fixed_8_3
constant omega_2 : signed(N-1 downto 0) := to_signed(integer(16),N);         --fixed_8_3
constant phi_1 : signed(N-1 downto 0) := to_signed(integer(13),N);      --fixed_8_3
constant phi_2 : signed(N-1 downto 0) := to_signed(integer(13),N);      --fixed_8_3
constant expo_ln_theta_1 : signed(N-1 downto 0) := to_signed(integer(16),N); -- *change with bitsize*   fixed_8_3
constant expo_ln_theta_2 : signed(N-1 downto 0) := to_signed(integer(16),N); -- *change with bitsize*   fixed_8_3

signal neuron_1_omega_T : signed(N-1 downto 0);
signal neuron_2_omega_T : signed(N-1 downto 0);
signal neuron_1_omega_T_Phi : signed(N-1 downto 0);
signal neuron_2_omega_T_Phi : signed(N-1 downto 0);

signal neuron_1_omega_T_Phi_Norm : signed(N-1 downto 0); --fixed_8_3
signal neuron_2_omega_T_Phi_Norm : signed(N-1 downto 0); --fixed_8_3

constant fix_Adj_Val : signed(N-1 downto 0) := to_signed(integer(2**2),N); -- shifted the fixed point from 11 to 13

signal n_1_omega_T_Phi_Norm_Fix_Adj : signed(N-1 downto 0); --fixed_8_5    *change with bitsize*
signal n_2_omega_T_Phi_Norm_Fix_Adj : signed(N-1 downto 0); --fixed_8_5    *change with bitsize*

signal s_axis_phase_tvalid : STD_LOGIC; 
signal m_axis_dout_tvalid_1 : STD_LOGIC;
signal m_axis_dout_tvalid_2 : STD_LOGIC;

signal neuron_1_Real_Imag : signed(2*N-1 downto 0);  --fixed_8_6
signal neuron_2_Real_Imag : signed(2*N-1 downto 0);  --fixed_8_6

signal neuron_1_Real : signed(N-1 downto 0);    --fixed_8_6
signal neuron_1_Imag : signed(N-1 downto 0);    --fixed_8_6
signal neuron_2_Real : signed(N-1 downto 0);    --fixed_8_6
signal neuron_2_Imag : signed(N-1 downto 0);    --fixed_8_6

--constant fix_Adj_Val_RI : signed(N-1 downto 0) := to_signed(8192,N); -- divide by 2. or multyply by 0.5*2^14 

signal neuron_1_Real_FA : signed(N-1 downto 0);    --fixed_8_3   fixed adjusted
signal neuron_1_Imag_FA : signed(N-1 downto 0);    --fixed_8_3   fixed adjusted
signal neuron_2_Real_FA : signed(N-1 downto 0);    --fixed_8_3   fixed adjusted
signal neuron_2_Imag_FA : signed(N-1 downto 0);    --fixed_8_3   fixed adjusted 

signal neuron_1_Real_ExpolnTheta : signed(N-1 downto 0);
signal neuron_1_Imag_ExpolnTheta : signed(N-1 downto 0);
signal neuron_2_Real_ExpolnTheta : signed(N-1 downto 0);
signal neuron_2_Imag_ExpolnTheta : signed(N-1 downto 0);

signal SumofTwoNeuron_Real : signed(N-1 downto 0);
signal SumofTwoNeuron_Imag : signed(N-1 downto 0);

--signal temp1 : signed(15 downto 0);
--signal temp2 : signed(15 downto 0);
--signal t2 : STD_LOGIC_VECTOR(15 downto 0) := STD_LOGIC_VECTOR(TO_SIGNED(6144,16));

component mult
    port( 
        a : in signed(N-1 downto 0);
        b : in signed(N-1 downto 0);
        c : out signed(N-1 downto 0));
end component;

component pinormalize
    port (
        clk : in std_logic;
        magnitude : in STD_LOGIC_VECTOR (N-1 downto 0);
        magnitude_norm : out STD_LOGIC_VECTOR (N-1 downto 0));
end component;

COMPONENT cordic_0
  PORT (
    aclk : IN STD_LOGIC;
    s_axis_phase_tvalid : IN STD_LOGIC;
    s_axis_phase_tdata : IN STD_LOGIC_VECTOR(N-1 DOWNTO 0);
    m_axis_dout_tvalid : OUT STD_LOGIC;
    m_axis_dout_tdata : OUT STD_LOGIC_VECTOR(2*N-1 DOWNTO 0)
  );
END COMPONENT;

begin
neuron_1_mult_unit: mult
    port map (a=>omega_1, b=>signed(t), c=>neuron_1_omega_T);
    
neuron_2_mult_unit: mult
    port map (a=>omega_2, b=>signed(t), c=>neuron_2_omega_T);

neuron_1_omega_T_Phi <= neuron_1_omega_T + phi_1;
neuron_2_omega_T_Phi <= neuron_2_omega_T + phi_2;

process_pinormalize_unit: pinormalize
    port map (	clk=>clk,
				magnitude=>STD_LOGIC_VECTOR(neuron_1_omega_T_Phi), 
			    signed(magnitude_norm)=>neuron_1_omega_T_Phi_Norm
			);
process_pinormalize_unit2: pinormalize
    port map (	clk=>clk,
				magnitude=>STD_LOGIC_VECTOR(neuron_2_omega_T_Phi), 
			    signed(magnitude_norm)=>neuron_2_omega_T_Phi_Norm
			);

--neuron_1_mult_fx_aj_unit: mult                                          -- Fixed Adjustment fix_16_11 to fix_16_13
--    port map (a=>neuron_1_omega_T_Phi_Norm, b=>fix_Adj_Val, c=>n_1_omega_T_Phi_Norm_Fix_Adj);

--neuron_2_mult_fx_aj_unit: mult
--    port map (a=>neuron_2_omega_T_Phi_Norm, b=>fix_Adj_Val, c=>n_2_omega_T_Phi_Norm_Fix_Adj);
                                                                            -- Fixed Adjustment fix_16_11 to fix_16_13
n_1_omega_T_Phi_Norm_Fix_Adj <= neuron_1_omega_T_Phi_Norm(N-3 downto 0) & "00";
n_2_omega_T_Phi_Norm_Fix_Adj <= neuron_2_omega_T_Phi_Norm(N-3 downto 0) & "00";

neuron_1_CompExpo : cordic_0
  PORT MAP (
    aclk => clk,
    s_axis_phase_tvalid => s_axis_phase_tvalid,
    s_axis_phase_tdata => STD_LOGIC_VECTOR(n_1_omega_T_Phi_Norm_Fix_Adj),
    m_axis_dout_tvalid => m_axis_dout_tvalid_1,
    STD_LOGIC_VECTOR(m_axis_dout_tdata) => neuron_1_Real_Imag
  );

neuron_2_CompExpo : cordic_0
  PORT MAP (
    aclk => clk,
    s_axis_phase_tvalid => s_axis_phase_tvalid,
    s_axis_phase_tdata => STD_LOGIC_VECTOR(n_2_omega_T_Phi_Norm_Fix_Adj),
    m_axis_dout_tvalid => m_axis_dout_tvalid_2,
    STD_LOGIC_VECTOR(m_axis_dout_tdata) => neuron_2_Real_Imag
  );
  
  neuron_1_Real <= neuron_1_Real_Imag(N-1 downto 0);
  neuron_1_Imag <= neuron_1_Real_Imag(2*N-1 downto N);
  neuron_2_Real <= neuron_2_Real_Imag(N-1 downto 0);
  neuron_2_Imag <= neuron_2_Real_Imag(2*N-1 downto N);
 
-- neuron_1_mult_Real_FA: mult                                                -- Fixed Adjustment fix_16_14 to fix_16_13
--    port map (a=>neuron_1_Real, b=>fix_Adj_Val_RI, c=>neuron_1_Real_FA);
-- neuron_1_mult_Imag_FA: mult
--    port map (a=>neuron_1_Imag, b=>fix_Adj_Val_RI, c=>neuron_1_Imag_FA);
-- neuron_2_mult_Real_FA: mult
--    port map (a=>neuron_2_Real, b=>fix_Adj_Val_RI, c=>neuron_2_Real_FA);
-- neuron_2_mult_Imag_FA: mult
--    port map (a=>neuron_2_Imag, b=>fix_Adj_Val_RI, c=>neuron_2_Imag_FA);

                                                                       -- Fixed Adjustment fix_16_14 to fix_16_11
 neuron_1_Real_FA <= neuron_1_Real(N-1) & neuron_1_Real(N-1) & neuron_1_Real(N-1) & neuron_1_Real(N-1 downto 3);                
 neuron_1_Imag_FA <= neuron_1_Imag(N-1) & neuron_1_Imag(N-1) & neuron_1_Imag(N-1) & neuron_1_Imag(N-1 downto 3);
 neuron_2_Real_FA <= neuron_2_Real(N-1) & neuron_2_Real(N-1) & neuron_2_Real(N-1) & neuron_2_Real(N-1 downto 3);
 neuron_2_Imag_FA <= neuron_2_Imag(N-1) & neuron_2_Imag(N-1) & neuron_2_Imag(N-1) & neuron_2_Imag(N-1 downto 3);
  
 neuron_1_mult_Real_ExLnTheta: mult
    port map (a=>neuron_1_Real_FA, b=>expo_ln_theta_1, c=>neuron_1_Real_ExpolnTheta);
 neuron_1_mult_Imag_ExLnTheta: mult
    port map (a=>neuron_1_Imag_FA, b=>expo_ln_theta_1, c=>neuron_1_Imag_ExpolnTheta);
    
 neuron_2_mult_Real_ExLnTheta: mult
    port map (a=>neuron_2_Real_FA, b=>expo_ln_theta_2, c=>neuron_2_Real_ExpolnTheta);
 neuron_2_mult_Imag_ExLnTheta: mult
    port map (a=>neuron_2_Imag_FA, b=>expo_ln_theta_2, c=>neuron_2_Imag_ExpolnTheta);
  	
 SumofTwoNeuron_Real <= neuron_1_Real_ExpolnTheta + neuron_2_Real_ExpolnTheta;          ----fixed_16_13
 SumofTwoNeuron_Imag <= neuron_1_Imag_ExpolnTheta + neuron_2_Imag_ExpolnTheta;          ----fixed_16_13
 	
y_real <= std_logic_vector(SumofTwoNeuron_Real); 
y_imag <= std_logic_vector(SumofTwoNeuron_Imag);

end Behavioral;