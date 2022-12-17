-- Generated from Simulink block BRAM_STN_64bit/BRAM_SumofTwoNeurons_64bit/Subsystem/BRAM_CORDIC
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity bram_stn_64bit_bram_cordic is
  port (
    in1 : in std_logic_vector( 64-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 64-1 downto 0 );
    out2 : out std_logic_vector( 64-1 downto 0 )
  );
end bram_stn_64bit_bram_cordic;
architecture structural of bram_stn_64bit_bram_cordic is 
  signal clk_net : std_logic;
  signal imag_data_net : std_logic_vector( 64-1 downto 0 );
  signal shift1_op_net : std_logic_vector( 64-1 downto 0 );
  signal ce_net : std_logic;
  signal real_data_net : std_logic_vector( 64-1 downto 0 );
  signal addsub_s_net : std_logic_vector( 64-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 64-1 downto 0 );
  signal divide_op_net : std_logic_vector( 66-1 downto 0 );
  signal constant2_op_net : std_logic_vector( 64-1 downto 0 );
  signal shift_op_net : std_logic_vector( 10-1 downto 0 );
begin
  out1 <= imag_data_net;
  out2 <= real_data_net;
  shift1_op_net <= in1;
  clk_net <= clk_1;
  ce_net <= ce_1;
  addsub : entity xil_defaultlib.bram_stn_64bit_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 61,
    a_width => 64,
    b_arith => xlSigned,
    b_bin_pt => 61,
    b_width => 64,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 65,
    core_name0 => "bram_stn_64bit_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 65,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 60,
    s_width => 64
  )
  port map (
    clr => '0',
    en => "1",
    a => shift1_op_net,
    b => constant1_op_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub_s_net
  );
  constant1 : entity xil_defaultlib.sysgen_constant_3c06a5e127 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  constant2 : entity xil_defaultlib.sysgen_constant_77b0d315c9 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant2_op_net
  );
  divide : entity xil_defaultlib.xldivider_generator_79a03b0c16875112cbcd92a4dcfc2dae 
  port map (
    a_tvalid => '1',
    b_tvalid => '1',
    a => addsub_s_net,
    b => constant2_op_net,
    clk => clk_net,
    ce => ce_net,
    op => divide_op_net
  );
  shift : entity xil_defaultlib.sysgen_shift_95fe856f3d 
  port map (
    clr => '0',
    ip => divide_op_net,
    clk => clk_net,
    ce => ce_net,
    op => shift_op_net
  );
  imag : entity xil_defaultlib.bram_stn_64bit_xlsprom 
  generic map (
    c_address_width => 10,
    c_width => 64,
    latency => 1,
    mem_init_file => "xpm_107094_vivado.mem",
    mem_size => 65536,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => shift_op_net,
    clk => clk_net,
    ce => ce_net,
    data => imag_data_net
  );
  real : entity xil_defaultlib.bram_stn_64bit_xlsprom 
  generic map (
    c_address_width => 10,
    c_width => 64,
    latency => 1,
    mem_init_file => "xpm_b071dd_vivado.mem",
    mem_size => 65536,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => shift_op_net,
    clk => clk_net,
    ce => ce_net,
    data => real_data_net
  );
end structural;
-- Generated from Simulink block BRAM_STN_64bit/BRAM_SumofTwoNeurons_64bit/Subsystem
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity bram_stn_64bit_subsystem is
  port (
    in1 : in std_logic_vector( 64-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 64-1 downto 0 );
    out2 : out std_logic_vector( 64-1 downto 0 )
  );
end bram_stn_64bit_subsystem;
architecture structural of bram_stn_64bit_subsystem is 
  signal addsub4_s_net : std_logic_vector( 64-1 downto 0 );
  signal constant7_op_net : std_logic_vector( 64-1 downto 0 );
  signal constant4_op_net : std_logic_vector( 64-1 downto 0 );
  signal addsub3_s_net : std_logic_vector( 64-1 downto 0 );
  signal constant9_op_net : std_logic_vector( 64-1 downto 0 );
  signal constant8_op_net : std_logic_vector( 64-1 downto 0 );
  signal constant6_op_net : std_logic_vector( 64-1 downto 0 );
  signal addsub2_s_net : std_logic_vector( 64-1 downto 0 );
  signal constant3_op_net : std_logic_vector( 64-1 downto 0 );
  signal addsub1_s_net : std_logic_vector( 64-1 downto 0 );
  signal constant_op_net : std_logic_vector( 64-1 downto 0 );
  signal constant5_op_net : std_logic_vector( 64-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal imag_data_net : std_logic_vector( 64-1 downto 0 );
  signal real_data_net : std_logic_vector( 64-1 downto 0 );
  signal addsub_s_net : std_logic_vector( 64-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal shift1_op_net : std_logic_vector( 64-1 downto 0 );
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
  signal inverter1_op_net : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational3_op_net : std_logic_vector( 1-1 downto 0 );
  signal logical1_y_net : std_logic_vector( 1-1 downto 0 );
  signal mux_y_net : std_logic_vector( 64-1 downto 0 );
  signal logical3_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical2_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational2_op_net : std_logic_vector( 1-1 downto 0 );
  signal mux3_y_net : std_logic_vector( 64-1 downto 0 );
  signal mux4_y_net : std_logic_vector( 64-1 downto 0 );
  signal mux1_y_net : std_logic_vector( 64-1 downto 0 );
  signal slice_y_net : std_logic_vector( 1-1 downto 0 );
  signal mux2_y_net : std_logic_vector( 64-1 downto 0 );
begin
  out1 <= imag_data_net;
  out2 <= real_data_net;
  addsub_s_net <= in1;
  clk_net <= clk_1;
  ce_net <= ce_1;
  bram_cordic : entity xil_defaultlib.bram_stn_64bit_bram_cordic 
  port map (
    in1 => shift1_op_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => imag_data_net,
    out2 => real_data_net
  );
  addsub1 : entity xil_defaultlib.bram_stn_64bit_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 59,
    a_width => 64,
    b_arith => xlSigned,
    b_bin_pt => 59,
    b_width => 64,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 65,
    core_name0 => "bram_stn_64bit_c_addsub_v12_0_i1",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 65,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 59,
    s_width => 64
  )
  port map (
    clr => '0',
    en => "1",
    a => addsub_s_net,
    b => constant4_op_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub1_s_net
  );
  addsub2 : entity xil_defaultlib.bram_stn_64bit_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 59,
    a_width => 64,
    b_arith => xlSigned,
    b_bin_pt => 59,
    b_width => 64,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 65,
    core_name0 => "bram_stn_64bit_c_addsub_v12_0_i1",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 65,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 59,
    s_width => 64
  )
  port map (
    clr => '0',
    en => "1",
    a => addsub_s_net,
    b => constant5_op_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub2_s_net
  );
  addsub3 : entity xil_defaultlib.bram_stn_64bit_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 59,
    a_width => 64,
    b_arith => xlSigned,
    b_bin_pt => 59,
    b_width => 64,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 65,
    core_name0 => "bram_stn_64bit_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 65,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 59,
    s_width => 64
  )
  port map (
    clr => '0',
    en => "1",
    a => addsub_s_net,
    b => constant8_op_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub3_s_net
  );
  addsub4 : entity xil_defaultlib.bram_stn_64bit_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 59,
    a_width => 64,
    b_arith => xlSigned,
    b_bin_pt => 59,
    b_width => 64,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 65,
    core_name0 => "bram_stn_64bit_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 65,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 59,
    s_width => 64
  )
  port map (
    clr => '0',
    en => "1",
    a => addsub_s_net,
    b => constant9_op_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub4_s_net
  );
  constant_x0 : entity xil_defaultlib.sysgen_constant_57f5449656 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  constant3 : entity xil_defaultlib.sysgen_constant_37797ed9f2 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant3_op_net
  );
  constant4 : entity xil_defaultlib.sysgen_constant_e86bcf4630 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant4_op_net
  );
  constant5 : entity xil_defaultlib.sysgen_constant_3c06a5e127 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant5_op_net
  );
  constant6 : entity xil_defaultlib.sysgen_constant_e652a24335 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant6_op_net
  );
  constant7 : entity xil_defaultlib.sysgen_constant_d3daf5279f 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant7_op_net
  );
  constant8 : entity xil_defaultlib.sysgen_constant_e86bcf4630 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant8_op_net
  );
  constant9 : entity xil_defaultlib.sysgen_constant_3c06a5e127 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant9_op_net
  );
  inverter : entity xil_defaultlib.sysgen_inverter_996b725f98 
  port map (
    clr => '0',
    ip => relational1_op_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  inverter1 : entity xil_defaultlib.sysgen_inverter_996b725f98 
  port map (
    clr => '0',
    ip => relational3_op_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter1_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_440ac81634 
  port map (
    clr => '0',
    d0 => relational_op_net,
    d1 => relational1_op_net,
    clk => clk_net,
    ce => ce_net,
    y => logical_y_net
  );
  logical1 : entity xil_defaultlib.sysgen_logical_440ac81634 
  port map (
    clr => '0',
    d0 => inverter_op_net,
    d1 => relational_op_net,
    clk => clk_net,
    ce => ce_net,
    y => logical1_y_net
  );
  logical2 : entity xil_defaultlib.sysgen_logical_440ac81634 
  port map (
    clr => '0',
    d0 => relational2_op_net,
    d1 => relational3_op_net,
    clk => clk_net,
    ce => ce_net,
    y => logical2_y_net
  );
  logical3 : entity xil_defaultlib.sysgen_logical_440ac81634 
  port map (
    clr => '0',
    d0 => inverter1_op_net,
    d1 => relational2_op_net,
    clk => clk_net,
    ce => ce_net,
    y => logical3_y_net
  );
  mux : entity xil_defaultlib.sysgen_mux_0964b0300d 
  port map (
    clr => '0',
    sel => logical_y_net,
    d0 => addsub_s_net,
    d1 => addsub1_s_net,
    clk => clk_net,
    ce => ce_net,
    y => mux_y_net
  );
  mux1 : entity xil_defaultlib.sysgen_mux_0964b0300d 
  port map (
    clr => '0',
    sel => logical1_y_net,
    d0 => mux_y_net,
    d1 => addsub2_s_net,
    clk => clk_net,
    ce => ce_net,
    y => mux1_y_net
  );
  mux2 : entity xil_defaultlib.sysgen_mux_0964b0300d 
  port map (
    clr => '0',
    sel => logical2_y_net,
    d0 => addsub_s_net,
    d1 => addsub3_s_net,
    clk => clk_net,
    ce => ce_net,
    y => mux2_y_net
  );
  mux3 : entity xil_defaultlib.sysgen_mux_0964b0300d 
  port map (
    clr => '0',
    sel => logical3_y_net,
    d0 => mux2_y_net,
    d1 => addsub4_s_net,
    clk => clk_net,
    ce => ce_net,
    y => mux3_y_net
  );
  mux4 : entity xil_defaultlib.sysgen_mux_0964b0300d 
  port map (
    clr => '0',
    sel => slice_y_net,
    d0 => mux1_y_net,
    d1 => mux3_y_net,
    clk => clk_net,
    ce => ce_net,
    y => mux4_y_net
  );
  relational : entity xil_defaultlib.sysgen_relational_62bd1e4e88 
  port map (
    clr => '0',
    a => addsub_s_net,
    b => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational_op_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_4cea71015c 
  port map (
    clr => '0',
    a => addsub_s_net,
    b => constant3_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational1_op_net
  );
  relational2 : entity xil_defaultlib.sysgen_relational_4cea71015c 
  port map (
    clr => '0',
    a => addsub_s_net,
    b => constant6_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational2_op_net
  );
  relational3 : entity xil_defaultlib.sysgen_relational_62bd1e4e88 
  port map (
    clr => '0',
    a => addsub_s_net,
    b => constant7_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational3_op_net
  );
  shift1 : entity xil_defaultlib.sysgen_shift_dce27c0784 
  port map (
    clr => '0',
    ip => mux4_y_net,
    clk => clk_net,
    ce => ce_net,
    op => shift1_op_net
  );
  slice : entity xil_defaultlib.bram_stn_64bit_xlslice 
  generic map (
    new_lsb => 63,
    new_msb => 63,
    x_width => 64,
    y_width => 1
  )
  port map (
    x => addsub_s_net,
    y => slice_y_net
  );
end structural;
-- Generated from Simulink block BRAM_STN_64bit/BRAM_SumofTwoNeurons_64bit/Subsystem1/BRAM_CORDIC
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity bram_stn_64bit_bram_cordic_x0 is
  port (
    in1 : in std_logic_vector( 64-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 64-1 downto 0 );
    out2 : out std_logic_vector( 64-1 downto 0 )
  );
end bram_stn_64bit_bram_cordic_x0;
architecture structural of bram_stn_64bit_bram_cordic_x0 is 
  signal ce_net : std_logic;
  signal divide_op_net : std_logic_vector( 66-1 downto 0 );
  signal imag_data_net : std_logic_vector( 64-1 downto 0 );
  signal shift1_op_net : std_logic_vector( 64-1 downto 0 );
  signal clk_net : std_logic;
  signal addsub_s_net : std_logic_vector( 64-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 64-1 downto 0 );
  signal real_data_net : std_logic_vector( 64-1 downto 0 );
  signal constant2_op_net : std_logic_vector( 64-1 downto 0 );
  signal shift_op_net : std_logic_vector( 10-1 downto 0 );
begin
  out1 <= imag_data_net;
  out2 <= real_data_net;
  shift1_op_net <= in1;
  clk_net <= clk_1;
  ce_net <= ce_1;
  addsub : entity xil_defaultlib.bram_stn_64bit_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 61,
    a_width => 64,
    b_arith => xlSigned,
    b_bin_pt => 61,
    b_width => 64,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 65,
    core_name0 => "bram_stn_64bit_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 65,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 60,
    s_width => 64
  )
  port map (
    clr => '0',
    en => "1",
    a => shift1_op_net,
    b => constant1_op_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub_s_net
  );
  constant1 : entity xil_defaultlib.sysgen_constant_3c06a5e127 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  constant2 : entity xil_defaultlib.sysgen_constant_77b0d315c9 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant2_op_net
  );
  divide : entity xil_defaultlib.xldivider_generator_79a03b0c16875112cbcd92a4dcfc2dae 
  port map (
    a_tvalid => '1',
    b_tvalid => '1',
    a => addsub_s_net,
    b => constant2_op_net,
    clk => clk_net,
    ce => ce_net,
    op => divide_op_net
  );
  shift : entity xil_defaultlib.sysgen_shift_95fe856f3d 
  port map (
    clr => '0',
    ip => divide_op_net,
    clk => clk_net,
    ce => ce_net,
    op => shift_op_net
  );
  imag : entity xil_defaultlib.bram_stn_64bit_xlsprom 
  generic map (
    c_address_width => 10,
    c_width => 64,
    latency => 1,
    mem_init_file => "xpm_107094_vivado.mem",
    mem_size => 65536,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => shift_op_net,
    clk => clk_net,
    ce => ce_net,
    data => imag_data_net
  );
  real : entity xil_defaultlib.bram_stn_64bit_xlsprom 
  generic map (
    c_address_width => 10,
    c_width => 64,
    latency => 1,
    mem_init_file => "xpm_b071dd_vivado.mem",
    mem_size => 65536,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => shift_op_net,
    clk => clk_net,
    ce => ce_net,
    data => real_data_net
  );
end structural;
-- Generated from Simulink block BRAM_STN_64bit/BRAM_SumofTwoNeurons_64bit/Subsystem1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity bram_stn_64bit_subsystem1 is
  port (
    in1 : in std_logic_vector( 64-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 64-1 downto 0 );
    out2 : out std_logic_vector( 64-1 downto 0 )
  );
end bram_stn_64bit_subsystem1;
architecture structural of bram_stn_64bit_subsystem1 is 
  signal logical3_y_net : std_logic_vector( 1-1 downto 0 );
  signal mux_y_net : std_logic_vector( 64-1 downto 0 );
  signal mux3_y_net : std_logic_vector( 64-1 downto 0 );
  signal mux2_y_net : std_logic_vector( 64-1 downto 0 );
  signal mux1_y_net : std_logic_vector( 64-1 downto 0 );
  signal slice_y_net : std_logic_vector( 1-1 downto 0 );
  signal mux4_y_net : std_logic_vector( 64-1 downto 0 );
  signal constant4_op_net : std_logic_vector( 64-1 downto 0 );
  signal constant5_op_net : std_logic_vector( 64-1 downto 0 );
  signal addsub1_s_net : std_logic_vector( 64-1 downto 0 );
  signal addsub3_s_net_x0 : std_logic_vector( 64-1 downto 0 );
  signal clk_net : std_logic;
  signal imag_data_net : std_logic_vector( 64-1 downto 0 );
  signal shift1_op_net : std_logic_vector( 64-1 downto 0 );
  signal real_data_net : std_logic_vector( 64-1 downto 0 );
  signal addsub2_s_net : std_logic_vector( 64-1 downto 0 );
  signal ce_net : std_logic;
  signal constant8_op_net : std_logic_vector( 64-1 downto 0 );
  signal addsub3_s_net : std_logic_vector( 64-1 downto 0 );
  signal constant9_op_net : std_logic_vector( 64-1 downto 0 );
  signal addsub4_s_net : std_logic_vector( 64-1 downto 0 );
  signal constant3_op_net : std_logic_vector( 64-1 downto 0 );
  signal constant_op_net : std_logic_vector( 64-1 downto 0 );
  signal constant6_op_net : std_logic_vector( 64-1 downto 0 );
  signal relational2_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational3_op_net : std_logic_vector( 1-1 downto 0 );
  signal inverter1_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant7_op_net : std_logic_vector( 64-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical1_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical2_y_net : std_logic_vector( 1-1 downto 0 );
begin
  out1 <= imag_data_net;
  out2 <= real_data_net;
  addsub3_s_net_x0 <= in1;
  clk_net <= clk_1;
  ce_net <= ce_1;
  bram_cordic : entity xil_defaultlib.bram_stn_64bit_bram_cordic_x0 
  port map (
    in1 => shift1_op_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => imag_data_net,
    out2 => real_data_net
  );
  addsub1 : entity xil_defaultlib.bram_stn_64bit_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 59,
    a_width => 64,
    b_arith => xlSigned,
    b_bin_pt => 59,
    b_width => 64,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 65,
    core_name0 => "bram_stn_64bit_c_addsub_v12_0_i1",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 65,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 59,
    s_width => 64
  )
  port map (
    clr => '0',
    en => "1",
    a => addsub3_s_net_x0,
    b => constant4_op_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub1_s_net
  );
  addsub2 : entity xil_defaultlib.bram_stn_64bit_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 59,
    a_width => 64,
    b_arith => xlSigned,
    b_bin_pt => 59,
    b_width => 64,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 65,
    core_name0 => "bram_stn_64bit_c_addsub_v12_0_i1",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 65,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 59,
    s_width => 64
  )
  port map (
    clr => '0',
    en => "1",
    a => addsub3_s_net_x0,
    b => constant5_op_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub2_s_net
  );
  addsub3 : entity xil_defaultlib.bram_stn_64bit_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 59,
    a_width => 64,
    b_arith => xlSigned,
    b_bin_pt => 59,
    b_width => 64,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 65,
    core_name0 => "bram_stn_64bit_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 65,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 59,
    s_width => 64
  )
  port map (
    clr => '0',
    en => "1",
    a => addsub3_s_net_x0,
    b => constant8_op_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub3_s_net
  );
  addsub4 : entity xil_defaultlib.bram_stn_64bit_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 59,
    a_width => 64,
    b_arith => xlSigned,
    b_bin_pt => 59,
    b_width => 64,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 65,
    core_name0 => "bram_stn_64bit_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 65,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 59,
    s_width => 64
  )
  port map (
    clr => '0',
    en => "1",
    a => addsub3_s_net_x0,
    b => constant9_op_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub4_s_net
  );
  constant_x0 : entity xil_defaultlib.sysgen_constant_57f5449656 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  constant3 : entity xil_defaultlib.sysgen_constant_37797ed9f2 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant3_op_net
  );
  constant4 : entity xil_defaultlib.sysgen_constant_e86bcf4630 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant4_op_net
  );
  constant5 : entity xil_defaultlib.sysgen_constant_3c06a5e127 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant5_op_net
  );
  constant6 : entity xil_defaultlib.sysgen_constant_e652a24335 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant6_op_net
  );
  constant7 : entity xil_defaultlib.sysgen_constant_d3daf5279f 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant7_op_net
  );
  constant8 : entity xil_defaultlib.sysgen_constant_e86bcf4630 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant8_op_net
  );
  constant9 : entity xil_defaultlib.sysgen_constant_3c06a5e127 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant9_op_net
  );
  inverter : entity xil_defaultlib.sysgen_inverter_996b725f98 
  port map (
    clr => '0',
    ip => relational1_op_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  inverter1 : entity xil_defaultlib.sysgen_inverter_996b725f98 
  port map (
    clr => '0',
    ip => relational3_op_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter1_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_440ac81634 
  port map (
    clr => '0',
    d0 => relational_op_net,
    d1 => relational1_op_net,
    clk => clk_net,
    ce => ce_net,
    y => logical_y_net
  );
  logical1 : entity xil_defaultlib.sysgen_logical_440ac81634 
  port map (
    clr => '0',
    d0 => inverter_op_net,
    d1 => relational_op_net,
    clk => clk_net,
    ce => ce_net,
    y => logical1_y_net
  );
  logical2 : entity xil_defaultlib.sysgen_logical_440ac81634 
  port map (
    clr => '0',
    d0 => relational2_op_net,
    d1 => relational3_op_net,
    clk => clk_net,
    ce => ce_net,
    y => logical2_y_net
  );
  logical3 : entity xil_defaultlib.sysgen_logical_440ac81634 
  port map (
    clr => '0',
    d0 => inverter1_op_net,
    d1 => relational2_op_net,
    clk => clk_net,
    ce => ce_net,
    y => logical3_y_net
  );
  mux : entity xil_defaultlib.sysgen_mux_0964b0300d 
  port map (
    clr => '0',
    sel => logical_y_net,
    d0 => addsub3_s_net_x0,
    d1 => addsub1_s_net,
    clk => clk_net,
    ce => ce_net,
    y => mux_y_net
  );
  mux1 : entity xil_defaultlib.sysgen_mux_0964b0300d 
  port map (
    clr => '0',
    sel => logical1_y_net,
    d0 => mux_y_net,
    d1 => addsub2_s_net,
    clk => clk_net,
    ce => ce_net,
    y => mux1_y_net
  );
  mux2 : entity xil_defaultlib.sysgen_mux_0964b0300d 
  port map (
    clr => '0',
    sel => logical2_y_net,
    d0 => addsub3_s_net_x0,
    d1 => addsub3_s_net,
    clk => clk_net,
    ce => ce_net,
    y => mux2_y_net
  );
  mux3 : entity xil_defaultlib.sysgen_mux_0964b0300d 
  port map (
    clr => '0',
    sel => logical3_y_net,
    d0 => mux2_y_net,
    d1 => addsub4_s_net,
    clk => clk_net,
    ce => ce_net,
    y => mux3_y_net
  );
  mux4 : entity xil_defaultlib.sysgen_mux_0964b0300d 
  port map (
    clr => '0',
    sel => slice_y_net,
    d0 => mux1_y_net,
    d1 => mux3_y_net,
    clk => clk_net,
    ce => ce_net,
    y => mux4_y_net
  );
  relational : entity xil_defaultlib.sysgen_relational_62bd1e4e88 
  port map (
    clr => '0',
    a => addsub3_s_net_x0,
    b => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational_op_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_4cea71015c 
  port map (
    clr => '0',
    a => addsub3_s_net_x0,
    b => constant3_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational1_op_net
  );
  relational2 : entity xil_defaultlib.sysgen_relational_4cea71015c 
  port map (
    clr => '0',
    a => addsub3_s_net_x0,
    b => constant6_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational2_op_net
  );
  relational3 : entity xil_defaultlib.sysgen_relational_62bd1e4e88 
  port map (
    clr => '0',
    a => addsub3_s_net_x0,
    b => constant7_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational3_op_net
  );
  shift1 : entity xil_defaultlib.sysgen_shift_dce27c0784 
  port map (
    clr => '0',
    ip => mux4_y_net,
    clk => clk_net,
    ce => ce_net,
    op => shift1_op_net
  );
  slice : entity xil_defaultlib.bram_stn_64bit_xlslice 
  generic map (
    new_lsb => 63,
    new_msb => 63,
    x_width => 64,
    y_width => 1
  )
  port map (
    x => addsub3_s_net_x0,
    y => slice_y_net
  );
end structural;
-- Generated from Simulink block BRAM_STN_64bit/BRAM_SumofTwoNeurons_64bit
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity bram_stn_64bit_bram_sumoftwoneurons_64bit is
  port (
    input_t : in std_logic_vector( 64-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out_imag : out std_logic_vector( 64-1 downto 0 );
    out_real : out std_logic_vector( 64-1 downto 0 )
  );
end bram_stn_64bit_bram_sumoftwoneurons_64bit;
architecture structural of bram_stn_64bit_bram_sumoftwoneurons_64bit is 
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal register1_q_net : std_logic_vector( 64-1 downto 0 );
  signal input_t_net : std_logic_vector( 64-1 downto 0 );
  signal register2_q_net : std_logic_vector( 64-1 downto 0 );
  signal real_data_net_x0 : std_logic_vector( 64-1 downto 0 );
  signal imag_data_net : std_logic_vector( 64-1 downto 0 );
  signal imag_data_net_x0 : std_logic_vector( 64-1 downto 0 );
  signal addsub3_s_net : std_logic_vector( 64-1 downto 0 );
  signal phi_hdl_1_op_net : std_logic_vector( 64-1 downto 0 );
  signal mult_p_net : std_logic_vector( 64-1 downto 0 );
  signal addsub_s_net : std_logic_vector( 64-1 downto 0 );
  signal real_data_net : std_logic_vector( 64-1 downto 0 );
  signal mult1_p_net : std_logic_vector( 64-1 downto 0 );
  signal phi_hdl_2_op_net : std_logic_vector( 64-1 downto 0 );
  signal addsub6_s_net : std_logic_vector( 64-1 downto 0 );
  signal mult2_p_net : std_logic_vector( 64-1 downto 0 );
  signal mult4_p_net : std_logic_vector( 64-1 downto 0 );
  signal mult5_p_net : std_logic_vector( 64-1 downto 0 );
  signal addsub7_s_net : std_logic_vector( 64-1 downto 0 );
  signal exp_theta_hdl_2_op_net : std_logic_vector( 64-1 downto 0 );
  signal omega_hdl_1_op_net : std_logic_vector( 64-1 downto 0 );
  signal register_q_net : std_logic_vector( 64-1 downto 0 );
  signal mult3_p_net : std_logic_vector( 64-1 downto 0 );
  signal exp_theta_hdl_1_op_net : std_logic_vector( 64-1 downto 0 );
  signal register5_q_net : std_logic_vector( 64-1 downto 0 );
  signal omega_hdl_2_op_net : std_logic_vector( 64-1 downto 0 );
  signal register6_q_net : std_logic_vector( 64-1 downto 0 );
  signal register7_q_net : std_logic_vector( 64-1 downto 0 );
  signal register8_q_net : std_logic_vector( 64-1 downto 0 );
begin
  input_t_net <= input_t;
  out_imag <= register1_q_net;
  out_real <= register2_q_net;
  clk_net <= clk_1;
  ce_net <= ce_1;
  subsystem : entity xil_defaultlib.bram_stn_64bit_subsystem 
  port map (
    in1 => addsub_s_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => imag_data_net_x0,
    out2 => real_data_net_x0
  );
  subsystem1 : entity xil_defaultlib.bram_stn_64bit_subsystem1 
  port map (
    in1 => addsub3_s_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => imag_data_net,
    out2 => real_data_net
  );
  addsub : entity xil_defaultlib.bram_stn_64bit_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 59,
    a_width => 64,
    b_arith => xlSigned,
    b_bin_pt => 59,
    b_width => 64,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 65,
    core_name0 => "bram_stn_64bit_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 65,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 59,
    s_width => 64
  )
  port map (
    clr => '0',
    en => "1",
    a => phi_hdl_1_op_net,
    b => mult_p_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub_s_net
  );
  addsub3 : entity xil_defaultlib.bram_stn_64bit_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 59,
    a_width => 64,
    b_arith => xlSigned,
    b_bin_pt => 59,
    b_width => 64,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 65,
    core_name0 => "bram_stn_64bit_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 65,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 59,
    s_width => 64
  )
  port map (
    clr => '0',
    en => "1",
    a => mult1_p_net,
    b => phi_hdl_2_op_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub3_s_net
  );
  addsub6 : entity xil_defaultlib.bram_stn_64bit_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 59,
    a_width => 64,
    b_arith => xlSigned,
    b_bin_pt => 59,
    b_width => 64,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 65,
    core_name0 => "bram_stn_64bit_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 65,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 59,
    s_width => 64
  )
  port map (
    clr => '0',
    en => "1",
    a => mult2_p_net,
    b => mult4_p_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub6_s_net
  );
  addsub7 : entity xil_defaultlib.bram_stn_64bit_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 59,
    a_width => 64,
    b_arith => xlSigned,
    b_bin_pt => 59,
    b_width => 64,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 65,
    core_name0 => "bram_stn_64bit_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 65,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 59,
    s_width => 64
  )
  port map (
    clr => '0',
    en => "1",
    a => mult3_p_net,
    b => mult5_p_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub7_s_net
  );
  exp_theta_hdl_1 : entity xil_defaultlib.sysgen_constant_18a67479bb 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => exp_theta_hdl_1_op_net
  );
  exp_theta_hdl_2 : entity xil_defaultlib.sysgen_constant_18a67479bb 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => exp_theta_hdl_2_op_net
  );
  mult : entity xil_defaultlib.bram_stn_64bit_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 59,
    a_width => 64,
    b_arith => xlSigned,
    b_bin_pt => 59,
    b_width => 64,
    c_a_type => 0,
    c_a_width => 64,
    c_b_type => 0,
    c_b_width => 64,
    c_baat => 64,
    c_output_width => 128,
    c_type => 0,
    core_name0 => "bram_stn_64bit_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 59,
    p_width => 64,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => omega_hdl_1_op_net,
    b => register_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult_p_net
  );
  mult1 : entity xil_defaultlib.bram_stn_64bit_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 59,
    a_width => 64,
    b_arith => xlSigned,
    b_bin_pt => 59,
    b_width => 64,
    c_a_type => 0,
    c_a_width => 64,
    c_b_type => 0,
    c_b_width => 64,
    c_baat => 64,
    c_output_width => 128,
    c_type => 0,
    core_name0 => "bram_stn_64bit_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 59,
    p_width => 64,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => register_q_net,
    b => omega_hdl_2_op_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult1_p_net
  );
  mult2 : entity xil_defaultlib.bram_stn_64bit_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 59,
    a_width => 64,
    b_arith => xlSigned,
    b_bin_pt => 62,
    b_width => 64,
    c_a_type => 0,
    c_a_width => 64,
    c_b_type => 0,
    c_b_width => 64,
    c_baat => 64,
    c_output_width => 128,
    c_type => 0,
    core_name0 => "bram_stn_64bit_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 59,
    p_width => 64,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => exp_theta_hdl_1_op_net,
    b => register5_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult2_p_net
  );
  mult3 : entity xil_defaultlib.bram_stn_64bit_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 59,
    a_width => 64,
    b_arith => xlSigned,
    b_bin_pt => 62,
    b_width => 64,
    c_a_type => 0,
    c_a_width => 64,
    c_b_type => 0,
    c_b_width => 64,
    c_baat => 64,
    c_output_width => 128,
    c_type => 0,
    core_name0 => "bram_stn_64bit_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 59,
    p_width => 64,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => exp_theta_hdl_1_op_net,
    b => register6_q_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult3_p_net
  );
  mult4 : entity xil_defaultlib.bram_stn_64bit_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 62,
    a_width => 64,
    b_arith => xlSigned,
    b_bin_pt => 59,
    b_width => 64,
    c_a_type => 0,
    c_a_width => 64,
    c_b_type => 0,
    c_b_width => 64,
    c_baat => 64,
    c_output_width => 128,
    c_type => 0,
    core_name0 => "bram_stn_64bit_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 59,
    p_width => 64,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => register7_q_net,
    b => exp_theta_hdl_2_op_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult4_p_net
  );
  mult5 : entity xil_defaultlib.bram_stn_64bit_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 62,
    a_width => 64,
    b_arith => xlSigned,
    b_bin_pt => 59,
    b_width => 64,
    c_a_type => 0,
    c_a_width => 64,
    c_b_type => 0,
    c_b_width => 64,
    c_baat => 64,
    c_output_width => 128,
    c_type => 0,
    core_name0 => "bram_stn_64bit_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 59,
    p_width => 64,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => register8_q_net,
    b => exp_theta_hdl_2_op_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult5_p_net
  );
  omega_hdl_1 : entity xil_defaultlib.sysgen_constant_94780511fa 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => omega_hdl_1_op_net
  );
  omega_hdl_2 : entity xil_defaultlib.sysgen_constant_18a67479bb 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => omega_hdl_2_op_net
  );
  phi_hdl_1 : entity xil_defaultlib.sysgen_constant_49e8ebca86 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => phi_hdl_1_op_net
  );
  phi_hdl_2 : entity xil_defaultlib.sysgen_constant_49e8ebca86 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => phi_hdl_2_op_net
  );
  register_x0 : entity xil_defaultlib.bram_stn_64bit_xlregister 
  generic map (
    d_width => 64,
    init_value => b"0000000000000000000000000000000000000000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => input_t_net,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
  register1 : entity xil_defaultlib.bram_stn_64bit_xlregister 
  generic map (
    d_width => 64,
    init_value => b"0000000000000000000000000000000000000000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => addsub6_s_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  register2 : entity xil_defaultlib.bram_stn_64bit_xlregister 
  generic map (
    d_width => 64,
    init_value => b"0000000000000000000000000000000000000000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => addsub7_s_net,
    clk => clk_net,
    ce => ce_net,
    q => register2_q_net
  );
  register5 : entity xil_defaultlib.bram_stn_64bit_xlregister 
  generic map (
    d_width => 64,
    init_value => b"0000000000000000000000000000000000000000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => imag_data_net_x0,
    clk => clk_net,
    ce => ce_net,
    q => register5_q_net
  );
  register6 : entity xil_defaultlib.bram_stn_64bit_xlregister 
  generic map (
    d_width => 64,
    init_value => b"0000000000000000000000000000000000000000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => real_data_net_x0,
    clk => clk_net,
    ce => ce_net,
    q => register6_q_net
  );
  register7 : entity xil_defaultlib.bram_stn_64bit_xlregister 
  generic map (
    d_width => 64,
    init_value => b"0000000000000000000000000000000000000000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => imag_data_net,
    clk => clk_net,
    ce => ce_net,
    q => register7_q_net
  );
  register8 : entity xil_defaultlib.bram_stn_64bit_xlregister 
  generic map (
    d_width => 64,
    init_value => b"0000000000000000000000000000000000000000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => real_data_net,
    clk => clk_net,
    ce => ce_net,
    q => register8_q_net
  );
end structural;
-- Generated from Simulink block BRAM_STN_64bit_struct
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity bram_stn_64bit_struct is
  port (
    input_t : in std_logic_vector( 64-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out_imag : out std_logic_vector( 64-1 downto 0 );
    out_real : out std_logic_vector( 64-1 downto 0 )
  );
end bram_stn_64bit_struct;
architecture structural of bram_stn_64bit_struct is 
  signal ce_net : std_logic;
  signal input_t_net : std_logic_vector( 64-1 downto 0 );
  signal clk_net : std_logic;
  signal register2_q_net : std_logic_vector( 64-1 downto 0 );
  signal register1_q_net : std_logic_vector( 64-1 downto 0 );
begin
  input_t_net <= input_t;
  out_imag <= register1_q_net;
  out_real <= register2_q_net;
  clk_net <= clk_1;
  ce_net <= ce_1;
  bram_sumoftwoneurons_64bit : entity xil_defaultlib.bram_stn_64bit_bram_sumoftwoneurons_64bit 
  port map (
    input_t => input_t_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out_imag => register1_q_net,
    out_real => register2_q_net
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity bram_stn_64bit_default_clock_driver is
  port (
    bram_stn_64bit_sysclk : in std_logic;
    bram_stn_64bit_sysce : in std_logic;
    bram_stn_64bit_sysclr : in std_logic;
    bram_stn_64bit_clk1 : out std_logic;
    bram_stn_64bit_ce1 : out std_logic
  );
end bram_stn_64bit_default_clock_driver;
architecture structural of bram_stn_64bit_default_clock_driver is 
begin
  clockdriver : entity xil_defaultlib.xlclockdriver 
  generic map (
    period => 1,
    log_2_period => 1
  )
  port map (
    sysclk => bram_stn_64bit_sysclk,
    sysce => bram_stn_64bit_sysce,
    sysclr => bram_stn_64bit_sysclr,
    clk => bram_stn_64bit_clk1,
    ce => bram_stn_64bit_ce1
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity bram_stn_64bit is
  port (
    input_t : in std_logic_vector( 64-1 downto 0 );
    clk : in std_logic;
    out_imag : out std_logic_vector( 64-1 downto 0 );
    out_real : out std_logic_vector( 64-1 downto 0 )
  );
end bram_stn_64bit;
architecture structural of bram_stn_64bit is 
  attribute core_generation_info : string;
  attribute core_generation_info of structural : architecture is "bram_stn_64bit,sysgen_core_2021_1,{,compilation=IP Catalog,block_icon_display=Default,family=zynq,part=xc7z020,speed=-1,package=clg484,synthesis_language=vhdl,hdl_library=xil_defaultlib,synthesis_strategy=Vivado Synthesis Defaults,implementation_strategy=Vivado Implementation Defaults,testbench=0,interface_doc=0,ce_clr=0,clock_period=100,system_simulink_period=1,waveform_viewer=0,axilite_interface=0,ip_catalog_plugin=0,hwcosim_burst_mode=0,simulation_time=7500,addsub=14,constant=26,divide=2,inv=4,logical=8,mult=6,mux=10,register=7,relational=8,shift=4,slice=2,sprom=4,}";
  signal ce_1_net : std_logic;
  signal clk_1_net : std_logic;
begin
  bram_stn_64bit_default_clock_driver : entity xil_defaultlib.bram_stn_64bit_default_clock_driver 
  port map (
    bram_stn_64bit_sysclk => clk,
    bram_stn_64bit_sysce => '1',
    bram_stn_64bit_sysclr => '0',
    bram_stn_64bit_clk1 => clk_1_net,
    bram_stn_64bit_ce1 => ce_1_net
  );
  bram_stn_64bit_struct : entity xil_defaultlib.bram_stn_64bit_struct 
  port map (
    input_t => input_t,
    clk_1 => clk_1_net,
    ce_1 => ce_1_net,
    out_imag => out_imag,
    out_real => out_real
  );
end structural;
