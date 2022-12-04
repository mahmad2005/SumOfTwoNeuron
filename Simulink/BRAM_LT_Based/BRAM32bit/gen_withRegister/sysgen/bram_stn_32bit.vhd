-- Generated from Simulink block BRAM_STN_32bit/BRAM_SumofTwoNeurons_32bit/Subsystem/BRAM_CORDIC
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity bram_stn_32bit_bram_cordic is
  port (
    in1 : in std_logic_vector( 32-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 32-1 downto 0 );
    out2 : out std_logic_vector( 32-1 downto 0 )
  );
end bram_stn_32bit_bram_cordic;
architecture structural of bram_stn_32bit_bram_cordic is 
  signal addsub_s_net : std_logic_vector( 32-1 downto 0 );
  signal divide_op_net : std_logic_vector( 34-1 downto 0 );
  signal constant2_op_net : std_logic_vector( 32-1 downto 0 );
  signal shift_op_net : std_logic_vector( 10-1 downto 0 );
  signal shift1_op_net : std_logic_vector( 32-1 downto 0 );
  signal clk_net : std_logic;
  signal real_data_net : std_logic_vector( 32-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 32-1 downto 0 );
  signal imag_data_net : std_logic_vector( 32-1 downto 0 );
  signal ce_net : std_logic;
begin
  out1 <= imag_data_net;
  out2 <= real_data_net;
  shift1_op_net <= in1;
  clk_net <= clk_1;
  ce_net <= ce_1;
  addsub : entity xil_defaultlib.bram_stn_32bit_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 29,
    a_width => 32,
    b_arith => xlSigned,
    b_bin_pt => 29,
    b_width => 32,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 33,
    core_name0 => "bram_stn_32bit_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 33,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 28,
    s_width => 32
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
  constant1 : entity xil_defaultlib.sysgen_constant_c12dc6e360 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  constant2 : entity xil_defaultlib.sysgen_constant_96baa3406c 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant2_op_net
  );
  divide : entity xil_defaultlib.xldivider_generator_37a331c541434d60a99b7e10be4b4fac 
  port map (
    a_tvalid => '1',
    b_tvalid => '1',
    a => addsub_s_net,
    b => constant2_op_net,
    clk => clk_net,
    ce => ce_net,
    op => divide_op_net
  );
  shift : entity xil_defaultlib.sysgen_shift_0361ceaa31 
  port map (
    clr => '0',
    ip => divide_op_net,
    clk => clk_net,
    ce => ce_net,
    op => shift_op_net
  );
  imag : entity xil_defaultlib.bram_stn_32bit_xlsprom 
  generic map (
    c_address_width => 10,
    c_width => 32,
    latency => 1,
    mem_init_file => "xpm_f35e4b_vivado.mem",
    mem_size => 32768,
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
  real : entity xil_defaultlib.bram_stn_32bit_xlsprom 
  generic map (
    c_address_width => 10,
    c_width => 32,
    latency => 1,
    mem_init_file => "xpm_b9d794_vivado.mem",
    mem_size => 32768,
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
-- Generated from Simulink block BRAM_STN_32bit/BRAM_SumofTwoNeurons_32bit/Subsystem
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity bram_stn_32bit_subsystem is
  port (
    in1 : in std_logic_vector( 32-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 32-1 downto 0 );
    out2 : out std_logic_vector( 32-1 downto 0 )
  );
end bram_stn_32bit_subsystem;
architecture structural of bram_stn_32bit_subsystem is 
  signal addsub1_s_net : std_logic_vector( 32-1 downto 0 );
  signal constant5_op_net : std_logic_vector( 32-1 downto 0 );
  signal imag_data_net : std_logic_vector( 32-1 downto 0 );
  signal real_data_net : std_logic_vector( 32-1 downto 0 );
  signal clk_net : std_logic;
  signal addsub2_s_net : std_logic_vector( 32-1 downto 0 );
  signal ce_net : std_logic;
  signal constant4_op_net : std_logic_vector( 32-1 downto 0 );
  signal shift1_op_net : std_logic_vector( 32-1 downto 0 );
  signal addsub_s_net : std_logic_vector( 32-1 downto 0 );
  signal addsub3_s_net : std_logic_vector( 32-1 downto 0 );
  signal constant8_op_net : std_logic_vector( 32-1 downto 0 );
  signal constant9_op_net : std_logic_vector( 32-1 downto 0 );
  signal addsub4_s_net : std_logic_vector( 32-1 downto 0 );
  signal constant_op_net : std_logic_vector( 32-1 downto 0 );
  signal constant3_op_net : std_logic_vector( 32-1 downto 0 );
  signal constant7_op_net : std_logic_vector( 32-1 downto 0 );
  signal constant6_op_net : std_logic_vector( 32-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical2_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational2_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
  signal inverter1_op_net : std_logic_vector( 1-1 downto 0 );
  signal logical1_y_net : std_logic_vector( 1-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational3_op_net : std_logic_vector( 1-1 downto 0 );
  signal mux4_y_net : std_logic_vector( 32-1 downto 0 );
  signal slice_y_net : std_logic_vector( 1-1 downto 0 );
  signal mux1_y_net : std_logic_vector( 32-1 downto 0 );
  signal mux3_y_net : std_logic_vector( 32-1 downto 0 );
  signal mux2_y_net : std_logic_vector( 32-1 downto 0 );
  signal logical3_y_net : std_logic_vector( 1-1 downto 0 );
  signal mux_y_net : std_logic_vector( 32-1 downto 0 );
begin
  out1 <= imag_data_net;
  out2 <= real_data_net;
  addsub_s_net <= in1;
  clk_net <= clk_1;
  ce_net <= ce_1;
  bram_cordic : entity xil_defaultlib.bram_stn_32bit_bram_cordic 
  port map (
    in1 => shift1_op_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => imag_data_net,
    out2 => real_data_net
  );
  addsub1 : entity xil_defaultlib.bram_stn_32bit_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 27,
    a_width => 32,
    b_arith => xlSigned,
    b_bin_pt => 27,
    b_width => 32,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 33,
    core_name0 => "bram_stn_32bit_c_addsub_v12_0_i1",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 33,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 27,
    s_width => 32
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
  addsub2 : entity xil_defaultlib.bram_stn_32bit_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 27,
    a_width => 32,
    b_arith => xlSigned,
    b_bin_pt => 27,
    b_width => 32,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 33,
    core_name0 => "bram_stn_32bit_c_addsub_v12_0_i1",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 33,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 27,
    s_width => 32
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
  addsub3 : entity xil_defaultlib.bram_stn_32bit_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 27,
    a_width => 32,
    b_arith => xlSigned,
    b_bin_pt => 27,
    b_width => 32,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 33,
    core_name0 => "bram_stn_32bit_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 33,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 27,
    s_width => 32
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
  addsub4 : entity xil_defaultlib.bram_stn_32bit_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 27,
    a_width => 32,
    b_arith => xlSigned,
    b_bin_pt => 27,
    b_width => 32,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 33,
    core_name0 => "bram_stn_32bit_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 33,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 27,
    s_width => 32
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
  constant_x0 : entity xil_defaultlib.sysgen_constant_4d3d040bea 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  constant3 : entity xil_defaultlib.sysgen_constant_f0bdbb1afc 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant3_op_net
  );
  constant4 : entity xil_defaultlib.sysgen_constant_1cb06a7daa 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant4_op_net
  );
  constant5 : entity xil_defaultlib.sysgen_constant_c12dc6e360 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant5_op_net
  );
  constant6 : entity xil_defaultlib.sysgen_constant_bcb3021260 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant6_op_net
  );
  constant7 : entity xil_defaultlib.sysgen_constant_c82c22241d 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant7_op_net
  );
  constant8 : entity xil_defaultlib.sysgen_constant_1cb06a7daa 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant8_op_net
  );
  constant9 : entity xil_defaultlib.sysgen_constant_c12dc6e360 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant9_op_net
  );
  inverter : entity xil_defaultlib.sysgen_inverter_3392b3e69f 
  port map (
    clr => '0',
    ip => relational1_op_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  inverter1 : entity xil_defaultlib.sysgen_inverter_3392b3e69f 
  port map (
    clr => '0',
    ip => relational3_op_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter1_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_0e44ba8fe7 
  port map (
    clr => '0',
    d0 => relational_op_net,
    d1 => relational1_op_net,
    clk => clk_net,
    ce => ce_net,
    y => logical_y_net
  );
  logical1 : entity xil_defaultlib.sysgen_logical_0e44ba8fe7 
  port map (
    clr => '0',
    d0 => inverter_op_net,
    d1 => relational_op_net,
    clk => clk_net,
    ce => ce_net,
    y => logical1_y_net
  );
  logical2 : entity xil_defaultlib.sysgen_logical_0e44ba8fe7 
  port map (
    clr => '0',
    d0 => relational2_op_net,
    d1 => relational3_op_net,
    clk => clk_net,
    ce => ce_net,
    y => logical2_y_net
  );
  logical3 : entity xil_defaultlib.sysgen_logical_0e44ba8fe7 
  port map (
    clr => '0',
    d0 => inverter1_op_net,
    d1 => relational2_op_net,
    clk => clk_net,
    ce => ce_net,
    y => logical3_y_net
  );
  mux : entity xil_defaultlib.sysgen_mux_845e9c73a6 
  port map (
    clr => '0',
    sel => logical_y_net,
    d0 => addsub_s_net,
    d1 => addsub1_s_net,
    clk => clk_net,
    ce => ce_net,
    y => mux_y_net
  );
  mux1 : entity xil_defaultlib.sysgen_mux_845e9c73a6 
  port map (
    clr => '0',
    sel => logical1_y_net,
    d0 => mux_y_net,
    d1 => addsub2_s_net,
    clk => clk_net,
    ce => ce_net,
    y => mux1_y_net
  );
  mux2 : entity xil_defaultlib.sysgen_mux_845e9c73a6 
  port map (
    clr => '0',
    sel => logical2_y_net,
    d0 => addsub_s_net,
    d1 => addsub3_s_net,
    clk => clk_net,
    ce => ce_net,
    y => mux2_y_net
  );
  mux3 : entity xil_defaultlib.sysgen_mux_845e9c73a6 
  port map (
    clr => '0',
    sel => logical3_y_net,
    d0 => mux2_y_net,
    d1 => addsub4_s_net,
    clk => clk_net,
    ce => ce_net,
    y => mux3_y_net
  );
  mux4 : entity xil_defaultlib.sysgen_mux_845e9c73a6 
  port map (
    clr => '0',
    sel => slice_y_net,
    d0 => mux1_y_net,
    d1 => mux3_y_net,
    clk => clk_net,
    ce => ce_net,
    y => mux4_y_net
  );
  relational : entity xil_defaultlib.sysgen_relational_216090f021 
  port map (
    clr => '0',
    a => addsub_s_net,
    b => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational_op_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_a7a4b3c77f 
  port map (
    clr => '0',
    a => addsub_s_net,
    b => constant3_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational1_op_net
  );
  relational2 : entity xil_defaultlib.sysgen_relational_a7a4b3c77f 
  port map (
    clr => '0',
    a => addsub_s_net,
    b => constant6_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational2_op_net
  );
  relational3 : entity xil_defaultlib.sysgen_relational_216090f021 
  port map (
    clr => '0',
    a => addsub_s_net,
    b => constant7_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational3_op_net
  );
  shift1 : entity xil_defaultlib.sysgen_shift_af4f5ba2a9 
  port map (
    clr => '0',
    ip => mux4_y_net,
    clk => clk_net,
    ce => ce_net,
    op => shift1_op_net
  );
  slice : entity xil_defaultlib.bram_stn_32bit_xlslice 
  generic map (
    new_lsb => 31,
    new_msb => 31,
    x_width => 32,
    y_width => 1
  )
  port map (
    x => addsub_s_net,
    y => slice_y_net
  );
end structural;
-- Generated from Simulink block BRAM_STN_32bit/BRAM_SumofTwoNeurons_32bit/Subsystem1/BRAM_CORDIC
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity bram_stn_32bit_bram_cordic_x0 is
  port (
    in1 : in std_logic_vector( 32-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 32-1 downto 0 );
    out2 : out std_logic_vector( 32-1 downto 0 )
  );
end bram_stn_32bit_bram_cordic_x0;
architecture structural of bram_stn_32bit_bram_cordic_x0 is 
  signal addsub_s_net : std_logic_vector( 32-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 32-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal shift1_op_net : std_logic_vector( 32-1 downto 0 );
  signal real_data_net : std_logic_vector( 32-1 downto 0 );
  signal constant2_op_net : std_logic_vector( 32-1 downto 0 );
  signal imag_data_net : std_logic_vector( 32-1 downto 0 );
  signal divide_op_net : std_logic_vector( 34-1 downto 0 );
  signal shift_op_net : std_logic_vector( 10-1 downto 0 );
begin
  out1 <= imag_data_net;
  out2 <= real_data_net;
  shift1_op_net <= in1;
  clk_net <= clk_1;
  ce_net <= ce_1;
  addsub : entity xil_defaultlib.bram_stn_32bit_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 29,
    a_width => 32,
    b_arith => xlSigned,
    b_bin_pt => 29,
    b_width => 32,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 33,
    core_name0 => "bram_stn_32bit_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 33,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 28,
    s_width => 32
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
  constant1 : entity xil_defaultlib.sysgen_constant_c12dc6e360 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  constant2 : entity xil_defaultlib.sysgen_constant_96baa3406c 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant2_op_net
  );
  divide : entity xil_defaultlib.xldivider_generator_37a331c541434d60a99b7e10be4b4fac 
  port map (
    a_tvalid => '1',
    b_tvalid => '1',
    a => addsub_s_net,
    b => constant2_op_net,
    clk => clk_net,
    ce => ce_net,
    op => divide_op_net
  );
  shift : entity xil_defaultlib.sysgen_shift_0361ceaa31 
  port map (
    clr => '0',
    ip => divide_op_net,
    clk => clk_net,
    ce => ce_net,
    op => shift_op_net
  );
  imag : entity xil_defaultlib.bram_stn_32bit_xlsprom 
  generic map (
    c_address_width => 10,
    c_width => 32,
    latency => 1,
    mem_init_file => "xpm_f35e4b_vivado.mem",
    mem_size => 32768,
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
  real : entity xil_defaultlib.bram_stn_32bit_xlsprom 
  generic map (
    c_address_width => 10,
    c_width => 32,
    latency => 1,
    mem_init_file => "xpm_b9d794_vivado.mem",
    mem_size => 32768,
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
-- Generated from Simulink block BRAM_STN_32bit/BRAM_SumofTwoNeurons_32bit/Subsystem1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity bram_stn_32bit_subsystem1 is
  port (
    in1 : in std_logic_vector( 32-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 32-1 downto 0 );
    out2 : out std_logic_vector( 32-1 downto 0 )
  );
end bram_stn_32bit_subsystem1;
architecture structural of bram_stn_32bit_subsystem1 is 
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
  signal inverter1_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational3_op_net : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational2_op_net : std_logic_vector( 1-1 downto 0 );
  signal mux_y_net : std_logic_vector( 32-1 downto 0 );
  signal logical3_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical1_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical2_y_net : std_logic_vector( 1-1 downto 0 );
  signal mux1_y_net : std_logic_vector( 32-1 downto 0 );
  signal mux2_y_net : std_logic_vector( 32-1 downto 0 );
  signal mux4_y_net : std_logic_vector( 32-1 downto 0 );
  signal mux3_y_net : std_logic_vector( 32-1 downto 0 );
  signal slice_y_net : std_logic_vector( 1-1 downto 0 );
  signal imag_data_net : std_logic_vector( 32-1 downto 0 );
  signal addsub2_s_net : std_logic_vector( 32-1 downto 0 );
  signal addsub3_s_net_x0 : std_logic_vector( 32-1 downto 0 );
  signal clk_net : std_logic;
  signal addsub1_s_net : std_logic_vector( 32-1 downto 0 );
  signal constant4_op_net : std_logic_vector( 32-1 downto 0 );
  signal real_data_net : std_logic_vector( 32-1 downto 0 );
  signal ce_net : std_logic;
  signal shift1_op_net : std_logic_vector( 32-1 downto 0 );
  signal constant5_op_net : std_logic_vector( 32-1 downto 0 );
  signal constant7_op_net : std_logic_vector( 32-1 downto 0 );
  signal addsub3_s_net : std_logic_vector( 32-1 downto 0 );
  signal constant9_op_net : std_logic_vector( 32-1 downto 0 );
  signal constant6_op_net : std_logic_vector( 32-1 downto 0 );
  signal constant8_op_net : std_logic_vector( 32-1 downto 0 );
  signal constant3_op_net : std_logic_vector( 32-1 downto 0 );
  signal addsub4_s_net : std_logic_vector( 32-1 downto 0 );
  signal constant_op_net : std_logic_vector( 32-1 downto 0 );
begin
  out1 <= imag_data_net;
  out2 <= real_data_net;
  addsub3_s_net_x0 <= in1;
  clk_net <= clk_1;
  ce_net <= ce_1;
  bram_cordic : entity xil_defaultlib.bram_stn_32bit_bram_cordic_x0 
  port map (
    in1 => shift1_op_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => imag_data_net,
    out2 => real_data_net
  );
  addsub1 : entity xil_defaultlib.bram_stn_32bit_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 27,
    a_width => 32,
    b_arith => xlSigned,
    b_bin_pt => 27,
    b_width => 32,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 33,
    core_name0 => "bram_stn_32bit_c_addsub_v12_0_i1",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 33,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 27,
    s_width => 32
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
  addsub2 : entity xil_defaultlib.bram_stn_32bit_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 27,
    a_width => 32,
    b_arith => xlSigned,
    b_bin_pt => 27,
    b_width => 32,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 33,
    core_name0 => "bram_stn_32bit_c_addsub_v12_0_i1",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 33,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 27,
    s_width => 32
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
  addsub3 : entity xil_defaultlib.bram_stn_32bit_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 27,
    a_width => 32,
    b_arith => xlSigned,
    b_bin_pt => 27,
    b_width => 32,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 33,
    core_name0 => "bram_stn_32bit_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 33,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 27,
    s_width => 32
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
  addsub4 : entity xil_defaultlib.bram_stn_32bit_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 27,
    a_width => 32,
    b_arith => xlSigned,
    b_bin_pt => 27,
    b_width => 32,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 33,
    core_name0 => "bram_stn_32bit_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 33,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 27,
    s_width => 32
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
  constant_x0 : entity xil_defaultlib.sysgen_constant_4d3d040bea 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  constant3 : entity xil_defaultlib.sysgen_constant_f0bdbb1afc 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant3_op_net
  );
  constant4 : entity xil_defaultlib.sysgen_constant_1cb06a7daa 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant4_op_net
  );
  constant5 : entity xil_defaultlib.sysgen_constant_c12dc6e360 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant5_op_net
  );
  constant6 : entity xil_defaultlib.sysgen_constant_bcb3021260 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant6_op_net
  );
  constant7 : entity xil_defaultlib.sysgen_constant_c82c22241d 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant7_op_net
  );
  constant8 : entity xil_defaultlib.sysgen_constant_1cb06a7daa 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant8_op_net
  );
  constant9 : entity xil_defaultlib.sysgen_constant_c12dc6e360 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant9_op_net
  );
  inverter : entity xil_defaultlib.sysgen_inverter_3392b3e69f 
  port map (
    clr => '0',
    ip => relational1_op_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  inverter1 : entity xil_defaultlib.sysgen_inverter_3392b3e69f 
  port map (
    clr => '0',
    ip => relational3_op_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter1_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_0e44ba8fe7 
  port map (
    clr => '0',
    d0 => relational_op_net,
    d1 => relational1_op_net,
    clk => clk_net,
    ce => ce_net,
    y => logical_y_net
  );
  logical1 : entity xil_defaultlib.sysgen_logical_0e44ba8fe7 
  port map (
    clr => '0',
    d0 => inverter_op_net,
    d1 => relational_op_net,
    clk => clk_net,
    ce => ce_net,
    y => logical1_y_net
  );
  logical2 : entity xil_defaultlib.sysgen_logical_0e44ba8fe7 
  port map (
    clr => '0',
    d0 => relational2_op_net,
    d1 => relational3_op_net,
    clk => clk_net,
    ce => ce_net,
    y => logical2_y_net
  );
  logical3 : entity xil_defaultlib.sysgen_logical_0e44ba8fe7 
  port map (
    clr => '0',
    d0 => inverter1_op_net,
    d1 => relational2_op_net,
    clk => clk_net,
    ce => ce_net,
    y => logical3_y_net
  );
  mux : entity xil_defaultlib.sysgen_mux_845e9c73a6 
  port map (
    clr => '0',
    sel => logical_y_net,
    d0 => addsub3_s_net_x0,
    d1 => addsub1_s_net,
    clk => clk_net,
    ce => ce_net,
    y => mux_y_net
  );
  mux1 : entity xil_defaultlib.sysgen_mux_845e9c73a6 
  port map (
    clr => '0',
    sel => logical1_y_net,
    d0 => mux_y_net,
    d1 => addsub2_s_net,
    clk => clk_net,
    ce => ce_net,
    y => mux1_y_net
  );
  mux2 : entity xil_defaultlib.sysgen_mux_845e9c73a6 
  port map (
    clr => '0',
    sel => logical2_y_net,
    d0 => addsub3_s_net_x0,
    d1 => addsub3_s_net,
    clk => clk_net,
    ce => ce_net,
    y => mux2_y_net
  );
  mux3 : entity xil_defaultlib.sysgen_mux_845e9c73a6 
  port map (
    clr => '0',
    sel => logical3_y_net,
    d0 => mux2_y_net,
    d1 => addsub4_s_net,
    clk => clk_net,
    ce => ce_net,
    y => mux3_y_net
  );
  mux4 : entity xil_defaultlib.sysgen_mux_845e9c73a6 
  port map (
    clr => '0',
    sel => slice_y_net,
    d0 => mux1_y_net,
    d1 => mux3_y_net,
    clk => clk_net,
    ce => ce_net,
    y => mux4_y_net
  );
  relational : entity xil_defaultlib.sysgen_relational_216090f021 
  port map (
    clr => '0',
    a => addsub3_s_net_x0,
    b => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational_op_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_a7a4b3c77f 
  port map (
    clr => '0',
    a => addsub3_s_net_x0,
    b => constant3_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational1_op_net
  );
  relational2 : entity xil_defaultlib.sysgen_relational_a7a4b3c77f 
  port map (
    clr => '0',
    a => addsub3_s_net_x0,
    b => constant6_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational2_op_net
  );
  relational3 : entity xil_defaultlib.sysgen_relational_216090f021 
  port map (
    clr => '0',
    a => addsub3_s_net_x0,
    b => constant7_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational3_op_net
  );
  shift1 : entity xil_defaultlib.sysgen_shift_af4f5ba2a9 
  port map (
    clr => '0',
    ip => mux4_y_net,
    clk => clk_net,
    ce => ce_net,
    op => shift1_op_net
  );
  slice : entity xil_defaultlib.bram_stn_32bit_xlslice 
  generic map (
    new_lsb => 31,
    new_msb => 31,
    x_width => 32,
    y_width => 1
  )
  port map (
    x => addsub3_s_net_x0,
    y => slice_y_net
  );
end structural;
-- Generated from Simulink block BRAM_STN_32bit/BRAM_SumofTwoNeurons_32bit
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity bram_stn_32bit_bram_sumoftwoneurons_32bit is
  port (
    input_t : in std_logic_vector( 32-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out_imag : out std_logic_vector( 32-1 downto 0 );
    out_real : out std_logic_vector( 32-1 downto 0 )
  );
end bram_stn_32bit_bram_sumoftwoneurons_32bit;
architecture structural of bram_stn_32bit_bram_sumoftwoneurons_32bit is 
  signal omega_hdl_1_op_net : std_logic_vector( 32-1 downto 0 );
  signal register_q_net : std_logic_vector( 32-1 downto 0 );
  signal register5_q_net : std_logic_vector( 32-1 downto 0 );
  signal register6_q_net : std_logic_vector( 32-1 downto 0 );
  signal register7_q_net : std_logic_vector( 32-1 downto 0 );
  signal omega_hdl_2_op_net : std_logic_vector( 32-1 downto 0 );
  signal register8_q_net : std_logic_vector( 32-1 downto 0 );
  signal input_t_net : std_logic_vector( 32-1 downto 0 );
  signal phi_hdl_2_op_net : std_logic_vector( 32-1 downto 0 );
  signal mult2_p_net : std_logic_vector( 32-1 downto 0 );
  signal clk_net : std_logic;
  signal addsub7_s_net : std_logic_vector( 32-1 downto 0 );
  signal mult3_p_net : std_logic_vector( 32-1 downto 0 );
  signal mult5_p_net : std_logic_vector( 32-1 downto 0 );
  signal addsub3_s_net : std_logic_vector( 32-1 downto 0 );
  signal imag_data_net_x0 : std_logic_vector( 32-1 downto 0 );
  signal imag_data_net : std_logic_vector( 32-1 downto 0 );
  signal real_data_net : std_logic_vector( 32-1 downto 0 );
  signal addsub6_s_net : std_logic_vector( 32-1 downto 0 );
  signal register2_q_net : std_logic_vector( 32-1 downto 0 );
  signal ce_net : std_logic;
  signal phi_hdl_1_op_net : std_logic_vector( 32-1 downto 0 );
  signal register1_q_net : std_logic_vector( 32-1 downto 0 );
  signal real_data_net_x0 : std_logic_vector( 32-1 downto 0 );
  signal mult4_p_net : std_logic_vector( 32-1 downto 0 );
  signal addsub_s_net : std_logic_vector( 32-1 downto 0 );
  signal mult_p_net : std_logic_vector( 32-1 downto 0 );
  signal mult1_p_net : std_logic_vector( 32-1 downto 0 );
  signal exp_theta_hdl_1_op_net : std_logic_vector( 32-1 downto 0 );
  signal exp_theta_hdl_2_op_net : std_logic_vector( 32-1 downto 0 );
begin
  input_t_net <= input_t;
  out_imag <= register1_q_net;
  out_real <= register2_q_net;
  clk_net <= clk_1;
  ce_net <= ce_1;
  subsystem : entity xil_defaultlib.bram_stn_32bit_subsystem 
  port map (
    in1 => addsub_s_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => imag_data_net_x0,
    out2 => real_data_net_x0
  );
  subsystem1 : entity xil_defaultlib.bram_stn_32bit_subsystem1 
  port map (
    in1 => addsub3_s_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => imag_data_net,
    out2 => real_data_net
  );
  addsub : entity xil_defaultlib.bram_stn_32bit_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 27,
    a_width => 32,
    b_arith => xlSigned,
    b_bin_pt => 27,
    b_width => 32,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 33,
    core_name0 => "bram_stn_32bit_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 33,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 27,
    s_width => 32
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
  addsub3 : entity xil_defaultlib.bram_stn_32bit_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 27,
    a_width => 32,
    b_arith => xlSigned,
    b_bin_pt => 27,
    b_width => 32,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 33,
    core_name0 => "bram_stn_32bit_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 33,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 27,
    s_width => 32
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
  addsub6 : entity xil_defaultlib.bram_stn_32bit_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 27,
    a_width => 32,
    b_arith => xlSigned,
    b_bin_pt => 27,
    b_width => 32,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 33,
    core_name0 => "bram_stn_32bit_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 33,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 27,
    s_width => 32
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
  addsub7 : entity xil_defaultlib.bram_stn_32bit_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 27,
    a_width => 32,
    b_arith => xlSigned,
    b_bin_pt => 27,
    b_width => 32,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 33,
    core_name0 => "bram_stn_32bit_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 33,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 27,
    s_width => 32
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
  exp_theta_hdl_1 : entity xil_defaultlib.sysgen_constant_c67d2d7bba 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => exp_theta_hdl_1_op_net
  );
  exp_theta_hdl_2 : entity xil_defaultlib.sysgen_constant_c67d2d7bba 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => exp_theta_hdl_2_op_net
  );
  mult : entity xil_defaultlib.bram_stn_32bit_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 27,
    a_width => 32,
    b_arith => xlSigned,
    b_bin_pt => 27,
    b_width => 32,
    c_a_type => 0,
    c_a_width => 32,
    c_b_type => 0,
    c_b_width => 32,
    c_baat => 32,
    c_output_width => 64,
    c_type => 0,
    core_name0 => "bram_stn_32bit_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 27,
    p_width => 32,
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
  mult1 : entity xil_defaultlib.bram_stn_32bit_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 27,
    a_width => 32,
    b_arith => xlSigned,
    b_bin_pt => 27,
    b_width => 32,
    c_a_type => 0,
    c_a_width => 32,
    c_b_type => 0,
    c_b_width => 32,
    c_baat => 32,
    c_output_width => 64,
    c_type => 0,
    core_name0 => "bram_stn_32bit_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 27,
    p_width => 32,
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
  mult2 : entity xil_defaultlib.bram_stn_32bit_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 27,
    a_width => 32,
    b_arith => xlSigned,
    b_bin_pt => 30,
    b_width => 32,
    c_a_type => 0,
    c_a_width => 32,
    c_b_type => 0,
    c_b_width => 32,
    c_baat => 32,
    c_output_width => 64,
    c_type => 0,
    core_name0 => "bram_stn_32bit_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 27,
    p_width => 32,
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
  mult3 : entity xil_defaultlib.bram_stn_32bit_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 27,
    a_width => 32,
    b_arith => xlSigned,
    b_bin_pt => 30,
    b_width => 32,
    c_a_type => 0,
    c_a_width => 32,
    c_b_type => 0,
    c_b_width => 32,
    c_baat => 32,
    c_output_width => 64,
    c_type => 0,
    core_name0 => "bram_stn_32bit_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 27,
    p_width => 32,
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
  mult4 : entity xil_defaultlib.bram_stn_32bit_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 30,
    a_width => 32,
    b_arith => xlSigned,
    b_bin_pt => 27,
    b_width => 32,
    c_a_type => 0,
    c_a_width => 32,
    c_b_type => 0,
    c_b_width => 32,
    c_baat => 32,
    c_output_width => 64,
    c_type => 0,
    core_name0 => "bram_stn_32bit_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 27,
    p_width => 32,
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
  mult5 : entity xil_defaultlib.bram_stn_32bit_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 30,
    a_width => 32,
    b_arith => xlSigned,
    b_bin_pt => 27,
    b_width => 32,
    c_a_type => 0,
    c_a_width => 32,
    c_b_type => 0,
    c_b_width => 32,
    c_baat => 32,
    c_output_width => 64,
    c_type => 0,
    core_name0 => "bram_stn_32bit_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 27,
    p_width => 32,
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
  omega_hdl_1 : entity xil_defaultlib.sysgen_constant_f120491cc1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => omega_hdl_1_op_net
  );
  omega_hdl_2 : entity xil_defaultlib.sysgen_constant_c67d2d7bba 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => omega_hdl_2_op_net
  );
  phi_hdl_1 : entity xil_defaultlib.sysgen_constant_d9f6deb7db 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => phi_hdl_1_op_net
  );
  phi_hdl_2 : entity xil_defaultlib.sysgen_constant_d9f6deb7db 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => phi_hdl_2_op_net
  );
  register5 : entity xil_defaultlib.bram_stn_32bit_xlregister 
  generic map (
    d_width => 32,
    init_value => b"00000000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => imag_data_net_x0,
    clk => clk_net,
    ce => ce_net,
    q => register5_q_net
  );
  register6 : entity xil_defaultlib.bram_stn_32bit_xlregister 
  generic map (
    d_width => 32,
    init_value => b"00000000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => real_data_net_x0,
    clk => clk_net,
    ce => ce_net,
    q => register6_q_net
  );
  register7 : entity xil_defaultlib.bram_stn_32bit_xlregister 
  generic map (
    d_width => 32,
    init_value => b"00000000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => imag_data_net,
    clk => clk_net,
    ce => ce_net,
    q => register7_q_net
  );
  register8 : entity xil_defaultlib.bram_stn_32bit_xlregister 
  generic map (
    d_width => 32,
    init_value => b"00000000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => real_data_net,
    clk => clk_net,
    ce => ce_net,
    q => register8_q_net
  );
  register_x0 : entity xil_defaultlib.bram_stn_32bit_xlregister 
  generic map (
    d_width => 32,
    init_value => b"00000000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => input_t_net,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
  register1 : entity xil_defaultlib.bram_stn_32bit_xlregister 
  generic map (
    d_width => 32,
    init_value => b"00000000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => addsub6_s_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  register2 : entity xil_defaultlib.bram_stn_32bit_xlregister 
  generic map (
    d_width => 32,
    init_value => b"00000000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => addsub7_s_net,
    clk => clk_net,
    ce => ce_net,
    q => register2_q_net
  );
end structural;
-- Generated from Simulink block BRAM_STN_32bit_struct
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity bram_stn_32bit_struct is
  port (
    input_t : in std_logic_vector( 32-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out_imag : out std_logic_vector( 32-1 downto 0 );
    out_real : out std_logic_vector( 32-1 downto 0 )
  );
end bram_stn_32bit_struct;
architecture structural of bram_stn_32bit_struct is 
  signal ce_net : std_logic;
  signal input_t_net : std_logic_vector( 32-1 downto 0 );
  signal register2_q_net : std_logic_vector( 32-1 downto 0 );
  signal register1_q_net : std_logic_vector( 32-1 downto 0 );
  signal clk_net : std_logic;
begin
  input_t_net <= input_t;
  out_imag <= register1_q_net;
  out_real <= register2_q_net;
  clk_net <= clk_1;
  ce_net <= ce_1;
  bram_sumoftwoneurons_32bit : entity xil_defaultlib.bram_stn_32bit_bram_sumoftwoneurons_32bit 
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
entity bram_stn_32bit_default_clock_driver is
  port (
    bram_stn_32bit_sysclk : in std_logic;
    bram_stn_32bit_sysce : in std_logic;
    bram_stn_32bit_sysclr : in std_logic;
    bram_stn_32bit_clk1 : out std_logic;
    bram_stn_32bit_ce1 : out std_logic
  );
end bram_stn_32bit_default_clock_driver;
architecture structural of bram_stn_32bit_default_clock_driver is 
begin
  clockdriver : entity xil_defaultlib.xlclockdriver 
  generic map (
    period => 1,
    log_2_period => 1
  )
  port map (
    sysclk => bram_stn_32bit_sysclk,
    sysce => bram_stn_32bit_sysce,
    sysclr => bram_stn_32bit_sysclr,
    clk => bram_stn_32bit_clk1,
    ce => bram_stn_32bit_ce1
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity bram_stn_32bit is
  port (
    input_t : in std_logic_vector( 32-1 downto 0 );
    clk : in std_logic;
    out_imag : out std_logic_vector( 32-1 downto 0 );
    out_real : out std_logic_vector( 32-1 downto 0 )
  );
end bram_stn_32bit;
architecture structural of bram_stn_32bit is 
  attribute core_generation_info : string;
  attribute core_generation_info of structural : architecture is "bram_stn_32bit,sysgen_core_2021_1,{,compilation=IP Catalog,block_icon_display=Default,family=zynq,part=xc7z020,speed=-1,package=clg484,synthesis_language=vhdl,hdl_library=xil_defaultlib,synthesis_strategy=Vivado Synthesis Defaults,implementation_strategy=Vivado Implementation Defaults,testbench=0,interface_doc=0,ce_clr=0,clock_period=100,system_simulink_period=1,waveform_viewer=0,axilite_interface=0,ip_catalog_plugin=0,hwcosim_burst_mode=0,simulation_time=7500,addsub=14,constant=26,divide=2,inv=4,logical=8,mult=6,mux=10,register=7,relational=8,shift=4,slice=2,sprom=4,}";
  signal clk_1_net : std_logic;
  signal ce_1_net : std_logic;
begin
  bram_stn_32bit_default_clock_driver : entity xil_defaultlib.bram_stn_32bit_default_clock_driver 
  port map (
    bram_stn_32bit_sysclk => clk,
    bram_stn_32bit_sysce => '1',
    bram_stn_32bit_sysclr => '0',
    bram_stn_32bit_clk1 => clk_1_net,
    bram_stn_32bit_ce1 => ce_1_net
  );
  bram_stn_32bit_struct : entity xil_defaultlib.bram_stn_32bit_struct 
  port map (
    input_t => input_t,
    clk_1 => clk_1_net,
    ce_1 => ce_1_net,
    out_imag => out_imag,
    out_real => out_real
  );
end structural;
