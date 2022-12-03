-- Generated from Simulink block BRAM_STN_8bit/Subsystem/Subsystem/Subsystem
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity bram_stn_8bit_subsystem_x1 is
  port (
    in1 : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 8-1 downto 0 );
    out2 : out std_logic_vector( 8-1 downto 0 )
  );
end bram_stn_8bit_subsystem_x1;
architecture structural of bram_stn_8bit_subsystem_x1 is 
  signal shift1_op_net : std_logic_vector( 8-1 downto 0 );
  signal imag_data_net : std_logic_vector( 8-1 downto 0 );
  signal real_data_net : std_logic_vector( 8-1 downto 0 );
  signal ce_net : std_logic;
  signal addsub_s_net : std_logic_vector( 8-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal divide_op_net : std_logic_vector( 10-1 downto 0 );
  signal constant2_op_net : std_logic_vector( 8-1 downto 0 );
  signal shift_op_net : std_logic_vector( 6-1 downto 0 );
begin
  out1 <= imag_data_net;
  out2 <= real_data_net;
  shift1_op_net <= in1;
  clk_net <= clk_1;
  ce_net <= ce_1;
  addsub : entity xil_defaultlib.bram_stn_8bit_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 5,
    a_width => 8,
    b_arith => xlSigned,
    b_bin_pt => 5,
    b_width => 8,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 9,
    core_name0 => "bram_stn_8bit_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 9,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 4,
    s_width => 8
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
  constant1 : entity xil_defaultlib.sysgen_constant_6d417bbfff 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  constant2 : entity xil_defaultlib.sysgen_constant_61d431801b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant2_op_net
  );
  divide : entity xil_defaultlib.xldivider_generator_18a044dda157e594933af973905d4e82 
  port map (
    a_tvalid => '1',
    b_tvalid => '1',
    a => addsub_s_net,
    b => constant2_op_net,
    clk => clk_net,
    ce => ce_net,
    op => divide_op_net
  );
  shift : entity xil_defaultlib.sysgen_shift_f86ac2306c 
  port map (
    clr => '0',
    ip => divide_op_net,
    clk => clk_net,
    ce => ce_net,
    op => shift_op_net
  );
  imag : entity xil_defaultlib.bram_stn_8bit_xlsprom 
  generic map (
    c_address_width => 6,
    c_width => 8,
    latency => 1,
    mem_init_file => "xpm_1efe91_vivado.mem",
    mem_size => 512,
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
  real : entity xil_defaultlib.bram_stn_8bit_xlsprom 
  generic map (
    c_address_width => 6,
    c_width => 8,
    latency => 1,
    mem_init_file => "xpm_9cb0bf_vivado.mem",
    mem_size => 512,
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
-- Generated from Simulink block BRAM_STN_8bit/Subsystem/Subsystem
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity bram_stn_8bit_subsystem_x0 is
  port (
    in1 : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 8-1 downto 0 );
    out2 : out std_logic_vector( 8-1 downto 0 )
  );
end bram_stn_8bit_subsystem_x0;
architecture structural of bram_stn_8bit_subsystem_x0 is 
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
  signal logical1_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational2_op_net : std_logic_vector( 1-1 downto 0 );
  signal inverter1_op_net : std_logic_vector( 1-1 downto 0 );
  signal logical2_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational3_op_net : std_logic_vector( 1-1 downto 0 );
  signal logical3_y_net : std_logic_vector( 1-1 downto 0 );
  signal mux4_y_net : std_logic_vector( 8-1 downto 0 );
  signal mux_y_net : std_logic_vector( 8-1 downto 0 );
  signal mux2_y_net : std_logic_vector( 8-1 downto 0 );
  signal mux3_y_net : std_logic_vector( 8-1 downto 0 );
  signal mux1_y_net : std_logic_vector( 8-1 downto 0 );
  signal slice_y_net : std_logic_vector( 1-1 downto 0 );
  signal constant3_op_net : std_logic_vector( 8-1 downto 0 );
  signal constant9_op_net : std_logic_vector( 8-1 downto 0 );
  signal constant6_op_net : std_logic_vector( 8-1 downto 0 );
  signal constant8_op_net : std_logic_vector( 8-1 downto 0 );
  signal addsub3_s_net : std_logic_vector( 8-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant_op_net : std_logic_vector( 8-1 downto 0 );
  signal addsub4_s_net : std_logic_vector( 8-1 downto 0 );
  signal constant7_op_net : std_logic_vector( 8-1 downto 0 );
  signal ce_net : std_logic;
  signal addsub_s_net : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal shift1_op_net : std_logic_vector( 8-1 downto 0 );
  signal imag_data_net : std_logic_vector( 8-1 downto 0 );
  signal real_data_net : std_logic_vector( 8-1 downto 0 );
  signal constant5_op_net : std_logic_vector( 8-1 downto 0 );
  signal addsub1_s_net : std_logic_vector( 8-1 downto 0 );
  signal constant4_op_net : std_logic_vector( 8-1 downto 0 );
  signal addsub2_s_net : std_logic_vector( 8-1 downto 0 );
begin
  out1 <= imag_data_net;
  out2 <= real_data_net;
  addsub_s_net <= in1;
  clk_net <= clk_1;
  ce_net <= ce_1;
  subsystem : entity xil_defaultlib.bram_stn_8bit_subsystem_x1 
  port map (
    in1 => shift1_op_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => imag_data_net,
    out2 => real_data_net
  );
  addsub1 : entity xil_defaultlib.bram_stn_8bit_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 3,
    a_width => 8,
    b_arith => xlSigned,
    b_bin_pt => 3,
    b_width => 8,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 9,
    core_name0 => "bram_stn_8bit_c_addsub_v12_0_i1",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 9,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 3,
    s_width => 8
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
  addsub2 : entity xil_defaultlib.bram_stn_8bit_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 3,
    a_width => 8,
    b_arith => xlSigned,
    b_bin_pt => 3,
    b_width => 8,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 9,
    core_name0 => "bram_stn_8bit_c_addsub_v12_0_i1",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 9,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 3,
    s_width => 8
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
  addsub3 : entity xil_defaultlib.bram_stn_8bit_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 3,
    a_width => 8,
    b_arith => xlSigned,
    b_bin_pt => 3,
    b_width => 8,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 9,
    core_name0 => "bram_stn_8bit_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 9,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 3,
    s_width => 8
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
  addsub4 : entity xil_defaultlib.bram_stn_8bit_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 3,
    a_width => 8,
    b_arith => xlSigned,
    b_bin_pt => 3,
    b_width => 8,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 9,
    core_name0 => "bram_stn_8bit_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 9,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 3,
    s_width => 8
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
  constant_x0 : entity xil_defaultlib.sysgen_constant_e713949fd7 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  constant3 : entity xil_defaultlib.sysgen_constant_00ba788a83 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant3_op_net
  );
  constant4 : entity xil_defaultlib.sysgen_constant_ad24d6571e 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant4_op_net
  );
  constant5 : entity xil_defaultlib.sysgen_constant_6d417bbfff 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant5_op_net
  );
  constant6 : entity xil_defaultlib.sysgen_constant_1ba6c5c057 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant6_op_net
  );
  constant7 : entity xil_defaultlib.sysgen_constant_151cdbfc78 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant7_op_net
  );
  constant8 : entity xil_defaultlib.sysgen_constant_ad24d6571e 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant8_op_net
  );
  constant9 : entity xil_defaultlib.sysgen_constant_6d417bbfff 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant9_op_net
  );
  inverter : entity xil_defaultlib.sysgen_inverter_864201ba1e 
  port map (
    clr => '0',
    ip => relational1_op_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  inverter1 : entity xil_defaultlib.sysgen_inverter_864201ba1e 
  port map (
    clr => '0',
    ip => relational3_op_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter1_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_c3ef2f7ec4 
  port map (
    clr => '0',
    d0 => relational_op_net,
    d1 => relational1_op_net,
    clk => clk_net,
    ce => ce_net,
    y => logical_y_net
  );
  logical1 : entity xil_defaultlib.sysgen_logical_c3ef2f7ec4 
  port map (
    clr => '0',
    d0 => inverter_op_net,
    d1 => relational_op_net,
    clk => clk_net,
    ce => ce_net,
    y => logical1_y_net
  );
  logical2 : entity xil_defaultlib.sysgen_logical_c3ef2f7ec4 
  port map (
    clr => '0',
    d0 => relational2_op_net,
    d1 => relational3_op_net,
    clk => clk_net,
    ce => ce_net,
    y => logical2_y_net
  );
  logical3 : entity xil_defaultlib.sysgen_logical_c3ef2f7ec4 
  port map (
    clr => '0',
    d0 => inverter1_op_net,
    d1 => relational2_op_net,
    clk => clk_net,
    ce => ce_net,
    y => logical3_y_net
  );
  mux : entity xil_defaultlib.sysgen_mux_f90c85e642 
  port map (
    clr => '0',
    sel => logical_y_net,
    d0 => addsub_s_net,
    d1 => addsub1_s_net,
    clk => clk_net,
    ce => ce_net,
    y => mux_y_net
  );
  mux1 : entity xil_defaultlib.sysgen_mux_f90c85e642 
  port map (
    clr => '0',
    sel => logical1_y_net,
    d0 => mux_y_net,
    d1 => addsub2_s_net,
    clk => clk_net,
    ce => ce_net,
    y => mux1_y_net
  );
  mux2 : entity xil_defaultlib.sysgen_mux_f90c85e642 
  port map (
    clr => '0',
    sel => logical2_y_net,
    d0 => addsub_s_net,
    d1 => addsub3_s_net,
    clk => clk_net,
    ce => ce_net,
    y => mux2_y_net
  );
  mux3 : entity xil_defaultlib.sysgen_mux_f90c85e642 
  port map (
    clr => '0',
    sel => logical3_y_net,
    d0 => mux2_y_net,
    d1 => addsub4_s_net,
    clk => clk_net,
    ce => ce_net,
    y => mux3_y_net
  );
  mux4 : entity xil_defaultlib.sysgen_mux_f90c85e642 
  port map (
    clr => '0',
    sel => slice_y_net,
    d0 => mux1_y_net,
    d1 => mux3_y_net,
    clk => clk_net,
    ce => ce_net,
    y => mux4_y_net
  );
  relational : entity xil_defaultlib.sysgen_relational_c871ec9abe 
  port map (
    clr => '0',
    a => addsub_s_net,
    b => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational_op_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_0953bd4278 
  port map (
    clr => '0',
    a => addsub_s_net,
    b => constant3_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational1_op_net
  );
  relational2 : entity xil_defaultlib.sysgen_relational_0953bd4278 
  port map (
    clr => '0',
    a => addsub_s_net,
    b => constant6_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational2_op_net
  );
  relational3 : entity xil_defaultlib.sysgen_relational_c871ec9abe 
  port map (
    clr => '0',
    a => addsub_s_net,
    b => constant7_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational3_op_net
  );
  shift1 : entity xil_defaultlib.sysgen_shift_9fcf498671 
  port map (
    clr => '0',
    ip => mux4_y_net,
    clk => clk_net,
    ce => ce_net,
    op => shift1_op_net
  );
  slice : entity xil_defaultlib.bram_stn_8bit_xlslice 
  generic map (
    new_lsb => 7,
    new_msb => 7,
    x_width => 8,
    y_width => 1
  )
  port map (
    x => addsub_s_net,
    y => slice_y_net
  );
end structural;
-- Generated from Simulink block BRAM_STN_8bit/Subsystem/Subsystem1/Subsystem
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity bram_stn_8bit_subsystem_x2 is
  port (
    in1 : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 8-1 downto 0 );
    out2 : out std_logic_vector( 8-1 downto 0 )
  );
end bram_stn_8bit_subsystem_x2;
architecture structural of bram_stn_8bit_subsystem_x2 is 
  signal addsub_s_net : std_logic_vector( 8-1 downto 0 );
  signal shift_op_net : std_logic_vector( 6-1 downto 0 );
  signal divide_op_net : std_logic_vector( 10-1 downto 0 );
  signal constant2_op_net : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal shift1_op_net : std_logic_vector( 8-1 downto 0 );
  signal real_data_net : std_logic_vector( 8-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 8-1 downto 0 );
  signal imag_data_net : std_logic_vector( 8-1 downto 0 );
  signal ce_net : std_logic;
begin
  out1 <= imag_data_net;
  out2 <= real_data_net;
  shift1_op_net <= in1;
  clk_net <= clk_1;
  ce_net <= ce_1;
  addsub : entity xil_defaultlib.bram_stn_8bit_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 5,
    a_width => 8,
    b_arith => xlSigned,
    b_bin_pt => 5,
    b_width => 8,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 9,
    core_name0 => "bram_stn_8bit_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 9,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 4,
    s_width => 8
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
  constant1 : entity xil_defaultlib.sysgen_constant_6d417bbfff 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  constant2 : entity xil_defaultlib.sysgen_constant_61d431801b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant2_op_net
  );
  divide : entity xil_defaultlib.xldivider_generator_18a044dda157e594933af973905d4e82 
  port map (
    a_tvalid => '1',
    b_tvalid => '1',
    a => addsub_s_net,
    b => constant2_op_net,
    clk => clk_net,
    ce => ce_net,
    op => divide_op_net
  );
  shift : entity xil_defaultlib.sysgen_shift_f86ac2306c 
  port map (
    clr => '0',
    ip => divide_op_net,
    clk => clk_net,
    ce => ce_net,
    op => shift_op_net
  );
  imag : entity xil_defaultlib.bram_stn_8bit_xlsprom 
  generic map (
    c_address_width => 6,
    c_width => 8,
    latency => 1,
    mem_init_file => "xpm_1efe91_vivado.mem",
    mem_size => 512,
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
  real : entity xil_defaultlib.bram_stn_8bit_xlsprom 
  generic map (
    c_address_width => 6,
    c_width => 8,
    latency => 1,
    mem_init_file => "xpm_9cb0bf_vivado.mem",
    mem_size => 512,
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
-- Generated from Simulink block BRAM_STN_8bit/Subsystem/Subsystem1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity bram_stn_8bit_subsystem1 is
  port (
    in1 : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 8-1 downto 0 );
    out2 : out std_logic_vector( 8-1 downto 0 )
  );
end bram_stn_8bit_subsystem1;
architecture structural of bram_stn_8bit_subsystem1 is 
  signal imag_data_net : std_logic_vector( 8-1 downto 0 );
  signal real_data_net : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal shift1_op_net : std_logic_vector( 8-1 downto 0 );
  signal constant5_op_net : std_logic_vector( 8-1 downto 0 );
  signal constant8_op_net : std_logic_vector( 8-1 downto 0 );
  signal addsub4_s_net : std_logic_vector( 8-1 downto 0 );
  signal constant4_op_net : std_logic_vector( 8-1 downto 0 );
  signal addsub2_s_net : std_logic_vector( 8-1 downto 0 );
  signal constant9_op_net : std_logic_vector( 8-1 downto 0 );
  signal constant_op_net : std_logic_vector( 8-1 downto 0 );
  signal ce_net : std_logic;
  signal constant3_op_net : std_logic_vector( 8-1 downto 0 );
  signal addsub3_s_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal addsub1_s_net : std_logic_vector( 8-1 downto 0 );
  signal addsub3_s_net : std_logic_vector( 8-1 downto 0 );
  signal constant7_op_net : std_logic_vector( 8-1 downto 0 );
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
  signal logical2_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational2_op_net : std_logic_vector( 1-1 downto 0 );
  signal inverter1_op_net : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
  signal logical3_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational3_op_net : std_logic_vector( 1-1 downto 0 );
  signal logical1_y_net : std_logic_vector( 1-1 downto 0 );
  signal constant6_op_net : std_logic_vector( 8-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal mux2_y_net : std_logic_vector( 8-1 downto 0 );
  signal mux4_y_net : std_logic_vector( 8-1 downto 0 );
  signal mux3_y_net : std_logic_vector( 8-1 downto 0 );
  signal mux_y_net : std_logic_vector( 8-1 downto 0 );
  signal slice_y_net : std_logic_vector( 1-1 downto 0 );
  signal mux1_y_net : std_logic_vector( 8-1 downto 0 );
begin
  out1 <= imag_data_net;
  out2 <= real_data_net;
  addsub3_s_net_x0 <= in1;
  clk_net <= clk_1;
  ce_net <= ce_1;
  subsystem : entity xil_defaultlib.bram_stn_8bit_subsystem_x2 
  port map (
    in1 => shift1_op_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => imag_data_net,
    out2 => real_data_net
  );
  addsub1 : entity xil_defaultlib.bram_stn_8bit_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 3,
    a_width => 8,
    b_arith => xlSigned,
    b_bin_pt => 3,
    b_width => 8,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 9,
    core_name0 => "bram_stn_8bit_c_addsub_v12_0_i1",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 9,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 3,
    s_width => 8
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
  addsub2 : entity xil_defaultlib.bram_stn_8bit_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 3,
    a_width => 8,
    b_arith => xlSigned,
    b_bin_pt => 3,
    b_width => 8,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 9,
    core_name0 => "bram_stn_8bit_c_addsub_v12_0_i1",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 9,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 3,
    s_width => 8
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
  addsub3 : entity xil_defaultlib.bram_stn_8bit_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 3,
    a_width => 8,
    b_arith => xlSigned,
    b_bin_pt => 3,
    b_width => 8,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 9,
    core_name0 => "bram_stn_8bit_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 9,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 3,
    s_width => 8
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
  addsub4 : entity xil_defaultlib.bram_stn_8bit_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 3,
    a_width => 8,
    b_arith => xlSigned,
    b_bin_pt => 3,
    b_width => 8,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 9,
    core_name0 => "bram_stn_8bit_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 9,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 3,
    s_width => 8
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
  constant_x0 : entity xil_defaultlib.sysgen_constant_e713949fd7 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  constant3 : entity xil_defaultlib.sysgen_constant_00ba788a83 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant3_op_net
  );
  constant4 : entity xil_defaultlib.sysgen_constant_ad24d6571e 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant4_op_net
  );
  constant5 : entity xil_defaultlib.sysgen_constant_6d417bbfff 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant5_op_net
  );
  constant6 : entity xil_defaultlib.sysgen_constant_1ba6c5c057 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant6_op_net
  );
  constant7 : entity xil_defaultlib.sysgen_constant_151cdbfc78 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant7_op_net
  );
  constant8 : entity xil_defaultlib.sysgen_constant_ad24d6571e 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant8_op_net
  );
  constant9 : entity xil_defaultlib.sysgen_constant_6d417bbfff 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant9_op_net
  );
  inverter : entity xil_defaultlib.sysgen_inverter_864201ba1e 
  port map (
    clr => '0',
    ip => relational1_op_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  inverter1 : entity xil_defaultlib.sysgen_inverter_864201ba1e 
  port map (
    clr => '0',
    ip => relational3_op_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter1_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_c3ef2f7ec4 
  port map (
    clr => '0',
    d0 => relational_op_net,
    d1 => relational1_op_net,
    clk => clk_net,
    ce => ce_net,
    y => logical_y_net
  );
  logical1 : entity xil_defaultlib.sysgen_logical_c3ef2f7ec4 
  port map (
    clr => '0',
    d0 => inverter_op_net,
    d1 => relational_op_net,
    clk => clk_net,
    ce => ce_net,
    y => logical1_y_net
  );
  logical2 : entity xil_defaultlib.sysgen_logical_c3ef2f7ec4 
  port map (
    clr => '0',
    d0 => relational2_op_net,
    d1 => relational3_op_net,
    clk => clk_net,
    ce => ce_net,
    y => logical2_y_net
  );
  logical3 : entity xil_defaultlib.sysgen_logical_c3ef2f7ec4 
  port map (
    clr => '0',
    d0 => inverter1_op_net,
    d1 => relational2_op_net,
    clk => clk_net,
    ce => ce_net,
    y => logical3_y_net
  );
  mux : entity xil_defaultlib.sysgen_mux_f90c85e642 
  port map (
    clr => '0',
    sel => logical_y_net,
    d0 => addsub3_s_net_x0,
    d1 => addsub1_s_net,
    clk => clk_net,
    ce => ce_net,
    y => mux_y_net
  );
  mux1 : entity xil_defaultlib.sysgen_mux_f90c85e642 
  port map (
    clr => '0',
    sel => logical1_y_net,
    d0 => mux_y_net,
    d1 => addsub2_s_net,
    clk => clk_net,
    ce => ce_net,
    y => mux1_y_net
  );
  mux2 : entity xil_defaultlib.sysgen_mux_f90c85e642 
  port map (
    clr => '0',
    sel => logical2_y_net,
    d0 => addsub3_s_net_x0,
    d1 => addsub3_s_net,
    clk => clk_net,
    ce => ce_net,
    y => mux2_y_net
  );
  mux3 : entity xil_defaultlib.sysgen_mux_f90c85e642 
  port map (
    clr => '0',
    sel => logical3_y_net,
    d0 => mux2_y_net,
    d1 => addsub4_s_net,
    clk => clk_net,
    ce => ce_net,
    y => mux3_y_net
  );
  mux4 : entity xil_defaultlib.sysgen_mux_f90c85e642 
  port map (
    clr => '0',
    sel => slice_y_net,
    d0 => mux1_y_net,
    d1 => mux3_y_net,
    clk => clk_net,
    ce => ce_net,
    y => mux4_y_net
  );
  relational : entity xil_defaultlib.sysgen_relational_c871ec9abe 
  port map (
    clr => '0',
    a => addsub3_s_net_x0,
    b => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational_op_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_0953bd4278 
  port map (
    clr => '0',
    a => addsub3_s_net_x0,
    b => constant3_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational1_op_net
  );
  relational2 : entity xil_defaultlib.sysgen_relational_0953bd4278 
  port map (
    clr => '0',
    a => addsub3_s_net_x0,
    b => constant6_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational2_op_net
  );
  relational3 : entity xil_defaultlib.sysgen_relational_c871ec9abe 
  port map (
    clr => '0',
    a => addsub3_s_net_x0,
    b => constant7_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational3_op_net
  );
  shift1 : entity xil_defaultlib.sysgen_shift_9fcf498671 
  port map (
    clr => '0',
    ip => mux4_y_net,
    clk => clk_net,
    ce => ce_net,
    op => shift1_op_net
  );
  slice : entity xil_defaultlib.bram_stn_8bit_xlslice 
  generic map (
    new_lsb => 7,
    new_msb => 7,
    x_width => 8,
    y_width => 1
  )
  port map (
    x => addsub3_s_net_x0,
    y => slice_y_net
  );
end structural;
-- Generated from Simulink block BRAM_STN_8bit/Subsystem
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity bram_stn_8bit_subsystem is
  port (
    input_t : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out_imag : out std_logic_vector( 8-1 downto 0 );
    out_real : out std_logic_vector( 8-1 downto 0 )
  );
end bram_stn_8bit_subsystem;
architecture structural of bram_stn_8bit_subsystem is 
  signal addsub6_s_net : std_logic_vector( 8-1 downto 0 );
  signal input_t_net : std_logic_vector( 8-1 downto 0 );
  signal phi_hdl_2_op_net : std_logic_vector( 8-1 downto 0 );
  signal mult3_p_net : std_logic_vector( 8-1 downto 0 );
  signal addsub_s_net : std_logic_vector( 8-1 downto 0 );
  signal mult5_p_net : std_logic_vector( 8-1 downto 0 );
  signal ce_net : std_logic;
  signal mult2_p_net : std_logic_vector( 8-1 downto 0 );
  signal exp_theta_hdl_1_op_net : std_logic_vector( 8-1 downto 0 );
  signal addsub7_s_net : std_logic_vector( 8-1 downto 0 );
  signal imag_data_net : std_logic_vector( 8-1 downto 0 );
  signal real_data_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal mult_p_net : std_logic_vector( 8-1 downto 0 );
  signal addsub3_s_net : std_logic_vector( 8-1 downto 0 );
  signal real_data_net : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal phi_hdl_1_op_net : std_logic_vector( 8-1 downto 0 );
  signal imag_data_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal mult4_p_net : std_logic_vector( 8-1 downto 0 );
  signal mult1_p_net : std_logic_vector( 8-1 downto 0 );
  signal exp_theta_hdl_2_op_net : std_logic_vector( 8-1 downto 0 );
  signal omega_hdl_1_op_net : std_logic_vector( 8-1 downto 0 );
  signal omega_hdl_2_op_net : std_logic_vector( 8-1 downto 0 );
begin
  input_t_net <= input_t;
  out_imag <= addsub6_s_net;
  out_real <= addsub7_s_net;
  clk_net <= clk_1;
  ce_net <= ce_1;
  subsystem : entity xil_defaultlib.bram_stn_8bit_subsystem_x0 
  port map (
    in1 => addsub_s_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => imag_data_net,
    out2 => real_data_net
  );
  subsystem1 : entity xil_defaultlib.bram_stn_8bit_subsystem1 
  port map (
    in1 => addsub3_s_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => imag_data_net_x0,
    out2 => real_data_net_x0
  );
  addsub : entity xil_defaultlib.bram_stn_8bit_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 3,
    a_width => 8,
    b_arith => xlSigned,
    b_bin_pt => 3,
    b_width => 8,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 9,
    core_name0 => "bram_stn_8bit_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 9,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 3,
    s_width => 8
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
  addsub3 : entity xil_defaultlib.bram_stn_8bit_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 3,
    a_width => 8,
    b_arith => xlSigned,
    b_bin_pt => 3,
    b_width => 8,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 9,
    core_name0 => "bram_stn_8bit_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 9,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 3,
    s_width => 8
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
  addsub6 : entity xil_defaultlib.bram_stn_8bit_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 3,
    a_width => 8,
    b_arith => xlSigned,
    b_bin_pt => 3,
    b_width => 8,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 9,
    core_name0 => "bram_stn_8bit_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 9,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 3,
    s_width => 8
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
  addsub7 : entity xil_defaultlib.bram_stn_8bit_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 3,
    a_width => 8,
    b_arith => xlSigned,
    b_bin_pt => 3,
    b_width => 8,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 9,
    core_name0 => "bram_stn_8bit_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 9,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 3,
    s_width => 8
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
  exp_theta_hdl_1 : entity xil_defaultlib.sysgen_constant_3ea89920d0 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => exp_theta_hdl_1_op_net
  );
  exp_theta_hdl_2 : entity xil_defaultlib.sysgen_constant_3ea89920d0 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => exp_theta_hdl_2_op_net
  );
  mult : entity xil_defaultlib.bram_stn_8bit_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 3,
    a_width => 8,
    b_arith => xlSigned,
    b_bin_pt => 3,
    b_width => 8,
    c_a_type => 0,
    c_a_width => 8,
    c_b_type => 0,
    c_b_width => 8,
    c_baat => 8,
    c_output_width => 16,
    c_type => 0,
    core_name0 => "bram_stn_8bit_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 3,
    p_width => 8,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => omega_hdl_1_op_net,
    b => input_t_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult_p_net
  );
  mult1 : entity xil_defaultlib.bram_stn_8bit_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 3,
    a_width => 8,
    b_arith => xlSigned,
    b_bin_pt => 3,
    b_width => 8,
    c_a_type => 0,
    c_a_width => 8,
    c_b_type => 0,
    c_b_width => 8,
    c_baat => 8,
    c_output_width => 16,
    c_type => 0,
    core_name0 => "bram_stn_8bit_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 3,
    p_width => 8,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => input_t_net,
    b => omega_hdl_2_op_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult1_p_net
  );
  mult2 : entity xil_defaultlib.bram_stn_8bit_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 3,
    a_width => 8,
    b_arith => xlSigned,
    b_bin_pt => 6,
    b_width => 8,
    c_a_type => 0,
    c_a_width => 8,
    c_b_type => 0,
    c_b_width => 8,
    c_baat => 8,
    c_output_width => 16,
    c_type => 0,
    core_name0 => "bram_stn_8bit_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 3,
    p_width => 8,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => exp_theta_hdl_1_op_net,
    b => imag_data_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult2_p_net
  );
  mult3 : entity xil_defaultlib.bram_stn_8bit_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 3,
    a_width => 8,
    b_arith => xlSigned,
    b_bin_pt => 6,
    b_width => 8,
    c_a_type => 0,
    c_a_width => 8,
    c_b_type => 0,
    c_b_width => 8,
    c_baat => 8,
    c_output_width => 16,
    c_type => 0,
    core_name0 => "bram_stn_8bit_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 3,
    p_width => 8,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => exp_theta_hdl_1_op_net,
    b => real_data_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult3_p_net
  );
  mult4 : entity xil_defaultlib.bram_stn_8bit_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 6,
    a_width => 8,
    b_arith => xlSigned,
    b_bin_pt => 3,
    b_width => 8,
    c_a_type => 0,
    c_a_width => 8,
    c_b_type => 0,
    c_b_width => 8,
    c_baat => 8,
    c_output_width => 16,
    c_type => 0,
    core_name0 => "bram_stn_8bit_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 3,
    p_width => 8,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => imag_data_net_x0,
    b => exp_theta_hdl_2_op_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult4_p_net
  );
  mult5 : entity xil_defaultlib.bram_stn_8bit_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 6,
    a_width => 8,
    b_arith => xlSigned,
    b_bin_pt => 3,
    b_width => 8,
    c_a_type => 0,
    c_a_width => 8,
    c_b_type => 0,
    c_b_width => 8,
    c_baat => 8,
    c_output_width => 16,
    c_type => 0,
    core_name0 => "bram_stn_8bit_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 3,
    p_width => 8,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => real_data_net_x0,
    b => exp_theta_hdl_2_op_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult5_p_net
  );
  omega_hdl_1 : entity xil_defaultlib.sysgen_constant_5839c9c099 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => omega_hdl_1_op_net
  );
  omega_hdl_2 : entity xil_defaultlib.sysgen_constant_3ea89920d0 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => omega_hdl_2_op_net
  );
  phi_hdl_1 : entity xil_defaultlib.sysgen_constant_d9c88e2585 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => phi_hdl_1_op_net
  );
  phi_hdl_2 : entity xil_defaultlib.sysgen_constant_d9c88e2585 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => phi_hdl_2_op_net
  );
end structural;
-- Generated from Simulink block BRAM_STN_8bit_struct
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity bram_stn_8bit_struct is
  port (
    input_t : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out_imag : out std_logic_vector( 8-1 downto 0 );
    out_real : out std_logic_vector( 8-1 downto 0 )
  );
end bram_stn_8bit_struct;
architecture structural of bram_stn_8bit_struct is 
  signal ce_net : std_logic;
  signal input_t_net : std_logic_vector( 8-1 downto 0 );
  signal addsub6_s_net : std_logic_vector( 8-1 downto 0 );
  signal addsub7_s_net : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
begin
  input_t_net <= input_t;
  out_imag <= addsub6_s_net;
  out_real <= addsub7_s_net;
  clk_net <= clk_1;
  ce_net <= ce_1;
  subsystem : entity xil_defaultlib.bram_stn_8bit_subsystem 
  port map (
    input_t => input_t_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out_imag => addsub6_s_net,
    out_real => addsub7_s_net
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity bram_stn_8bit_default_clock_driver is
  port (
    bram_stn_8bit_sysclk : in std_logic;
    bram_stn_8bit_sysce : in std_logic;
    bram_stn_8bit_sysclr : in std_logic;
    bram_stn_8bit_clk1 : out std_logic;
    bram_stn_8bit_ce1 : out std_logic
  );
end bram_stn_8bit_default_clock_driver;
architecture structural of bram_stn_8bit_default_clock_driver is 
begin
  clockdriver : entity xil_defaultlib.xlclockdriver 
  generic map (
    period => 1,
    log_2_period => 1
  )
  port map (
    sysclk => bram_stn_8bit_sysclk,
    sysce => bram_stn_8bit_sysce,
    sysclr => bram_stn_8bit_sysclr,
    clk => bram_stn_8bit_clk1,
    ce => bram_stn_8bit_ce1
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity bram_stn_8bit is
  port (
    input_t : in std_logic_vector( 8-1 downto 0 );
    clk : in std_logic;
    out_imag : out std_logic_vector( 8-1 downto 0 );
    out_real : out std_logic_vector( 8-1 downto 0 )
  );
end bram_stn_8bit;
architecture structural of bram_stn_8bit is 
  attribute core_generation_info : string;
  attribute core_generation_info of structural : architecture is "bram_stn_8bit,sysgen_core_2021_1,{,compilation=IP Catalog,block_icon_display=Default,family=zynq,part=xc7z020,speed=-1,package=clg484,synthesis_language=vhdl,hdl_library=xil_defaultlib,synthesis_strategy=Vivado Synthesis Defaults,implementation_strategy=Vivado Implementation Defaults,testbench=0,interface_doc=0,ce_clr=0,clock_period=100,system_simulink_period=1,waveform_viewer=0,axilite_interface=0,ip_catalog_plugin=0,hwcosim_burst_mode=0,simulation_time=7500,addsub=14,constant=26,divide=2,inv=4,logical=8,mult=6,mux=10,relational=8,shift=4,slice=2,sprom=4,}";
  signal clk_1_net : std_logic;
  signal ce_1_net : std_logic;
begin
  bram_stn_8bit_default_clock_driver : entity xil_defaultlib.bram_stn_8bit_default_clock_driver 
  port map (
    bram_stn_8bit_sysclk => clk,
    bram_stn_8bit_sysce => '1',
    bram_stn_8bit_sysclr => '0',
    bram_stn_8bit_clk1 => clk_1_net,
    bram_stn_8bit_ce1 => ce_1_net
  );
  bram_stn_8bit_struct : entity xil_defaultlib.bram_stn_8bit_struct 
  port map (
    input_t => input_t,
    clk_1 => clk_1_net,
    ce_1 => ce_1_net,
    out_imag => out_imag,
    out_real => out_real
  );
end structural;
