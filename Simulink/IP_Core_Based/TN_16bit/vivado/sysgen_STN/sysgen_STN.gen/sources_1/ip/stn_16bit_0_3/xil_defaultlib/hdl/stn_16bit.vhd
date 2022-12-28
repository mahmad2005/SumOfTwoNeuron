-- Generated from Simulink block STN_16bit/Subsystem/Subsystem
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity stn_16bit_subsystem_x0 is
  port (
    in1 : in std_logic_vector( 16-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 16-1 downto 0 );
    out2 : out std_logic_vector( 16-1 downto 0 )
  );
end stn_16bit_subsystem_x0;
architecture structural of stn_16bit_subsystem_x0 is 
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
  signal cordic_6_0_m_axis_dout_tvalid_net : std_logic;
  signal constant10_op_net : std_logic;
  signal constant3_op_net : std_logic_vector( 16-1 downto 0 );
  signal inverter1_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational3_op_net : std_logic_vector( 1-1 downto 0 );
  signal shift1_op_net : std_logic_vector( 16-1 downto 0 );
  signal addsub4_s_net : std_logic_vector( 16-1 downto 0 );
  signal constant9_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant7_op_net : std_logic_vector( 16-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant6_op_net : std_logic_vector( 16-1 downto 0 );
  signal mux1_y_net : std_logic_vector( 16-1 downto 0 );
  signal logical3_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical2_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
  signal mux_y_net : std_logic_vector( 16-1 downto 0 );
  signal mux2_y_net : std_logic_vector( 16-1 downto 0 );
  signal mux3_y_net : std_logic_vector( 16-1 downto 0 );
  signal logical1_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational2_op_net : std_logic_vector( 1-1 downto 0 );
  signal slice_y_net : std_logic_vector( 1-1 downto 0 );
  signal mux4_y_net : std_logic_vector( 16-1 downto 0 );
  signal constant5_op_net : std_logic_vector( 16-1 downto 0 );
  signal addsub2_s_net : std_logic_vector( 16-1 downto 0 );
  signal addsub3_s_net : std_logic_vector( 16-1 downto 0 );
  signal constant8_op_net : std_logic_vector( 16-1 downto 0 );
  signal cordic_6_0_m_axis_dout_tdata_real_net : std_logic_vector( 16-1 downto 0 );
  signal addsub1_s_net : std_logic_vector( 16-1 downto 0 );
  signal constant4_op_net : std_logic_vector( 16-1 downto 0 );
  signal cordic_6_0_m_axis_dout_tdata_imag_net : std_logic_vector( 16-1 downto 0 );
  signal addsub_s_net : std_logic_vector( 16-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
begin
  out1 <= cordic_6_0_m_axis_dout_tdata_imag_net;
  out2 <= cordic_6_0_m_axis_dout_tdata_real_net;
  addsub_s_net <= in1;
  clk_net <= clk_1;
  ce_net <= ce_1;
  addsub1 : entity xil_defaultlib.stn_16bit_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 11,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 11,
    b_width => 16,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 17,
    core_name0 => "stn_16bit_c_addsub_v12_0_i1",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 17,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 11,
    s_width => 16
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
  addsub2 : entity xil_defaultlib.stn_16bit_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 11,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 11,
    b_width => 16,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 17,
    core_name0 => "stn_16bit_c_addsub_v12_0_i1",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 17,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 11,
    s_width => 16
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
  addsub3 : entity xil_defaultlib.stn_16bit_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 11,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 11,
    b_width => 16,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 17,
    core_name0 => "stn_16bit_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 17,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 11,
    s_width => 16
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
  addsub4 : entity xil_defaultlib.stn_16bit_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 11,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 11,
    b_width => 16,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 17,
    core_name0 => "stn_16bit_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 17,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 11,
    s_width => 16
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
  cordic_6_0 : entity xil_defaultlib.xlcordic_42a051611ad73b92ffe37c70245f0072 
  port map (
    s_axis_phase_tvalid => constant10_op_net,
    s_axis_phase_tdata_phase => shift1_op_net,
    m_axis_dout_tvalid => cordic_6_0_m_axis_dout_tvalid_net,
    m_axis_dout_tdata_imag => cordic_6_0_m_axis_dout_tdata_imag_net,
    m_axis_dout_tdata_real => cordic_6_0_m_axis_dout_tdata_real_net
  );
  constant_x0 : entity xil_defaultlib.sysgen_constant_d3eecd1a63 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  constant10 : entity xil_defaultlib.sysgen_constant_074aca0999 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op(0) => constant10_op_net
  );
  constant3 : entity xil_defaultlib.sysgen_constant_63dd8e5609 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant3_op_net
  );
  constant4 : entity xil_defaultlib.sysgen_constant_59d7a09762 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant4_op_net
  );
  constant5 : entity xil_defaultlib.sysgen_constant_c8be316fba 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant5_op_net
  );
  constant6 : entity xil_defaultlib.sysgen_constant_9d5f01882d 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant6_op_net
  );
  constant7 : entity xil_defaultlib.sysgen_constant_a83c06ebb5 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant7_op_net
  );
  constant8 : entity xil_defaultlib.sysgen_constant_59d7a09762 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant8_op_net
  );
  constant9 : entity xil_defaultlib.sysgen_constant_c8be316fba 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant9_op_net
  );
  inverter : entity xil_defaultlib.sysgen_inverter_093109fc15 
  port map (
    clr => '0',
    ip => relational1_op_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  inverter1 : entity xil_defaultlib.sysgen_inverter_093109fc15 
  port map (
    clr => '0',
    ip => relational3_op_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter1_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_cd9e0c0419 
  port map (
    clr => '0',
    d0 => relational_op_net,
    d1 => relational1_op_net,
    clk => clk_net,
    ce => ce_net,
    y => logical_y_net
  );
  logical1 : entity xil_defaultlib.sysgen_logical_cd9e0c0419 
  port map (
    clr => '0',
    d0 => inverter_op_net,
    d1 => relational_op_net,
    clk => clk_net,
    ce => ce_net,
    y => logical1_y_net
  );
  logical2 : entity xil_defaultlib.sysgen_logical_cd9e0c0419 
  port map (
    clr => '0',
    d0 => relational2_op_net,
    d1 => relational3_op_net,
    clk => clk_net,
    ce => ce_net,
    y => logical2_y_net
  );
  logical3 : entity xil_defaultlib.sysgen_logical_cd9e0c0419 
  port map (
    clr => '0',
    d0 => inverter1_op_net,
    d1 => relational2_op_net,
    clk => clk_net,
    ce => ce_net,
    y => logical3_y_net
  );
  mux : entity xil_defaultlib.sysgen_mux_fa81cf80b1 
  port map (
    clr => '0',
    sel => logical_y_net,
    d0 => addsub_s_net,
    d1 => addsub1_s_net,
    clk => clk_net,
    ce => ce_net,
    y => mux_y_net
  );
  mux1 : entity xil_defaultlib.sysgen_mux_fa81cf80b1 
  port map (
    clr => '0',
    sel => logical1_y_net,
    d0 => mux_y_net,
    d1 => addsub2_s_net,
    clk => clk_net,
    ce => ce_net,
    y => mux1_y_net
  );
  mux2 : entity xil_defaultlib.sysgen_mux_fa81cf80b1 
  port map (
    clr => '0',
    sel => logical2_y_net,
    d0 => addsub_s_net,
    d1 => addsub3_s_net,
    clk => clk_net,
    ce => ce_net,
    y => mux2_y_net
  );
  mux3 : entity xil_defaultlib.sysgen_mux_fa81cf80b1 
  port map (
    clr => '0',
    sel => logical3_y_net,
    d0 => mux2_y_net,
    d1 => addsub4_s_net,
    clk => clk_net,
    ce => ce_net,
    y => mux3_y_net
  );
  mux4 : entity xil_defaultlib.sysgen_mux_fa81cf80b1 
  port map (
    clr => '0',
    sel => slice_y_net,
    d0 => mux1_y_net,
    d1 => mux3_y_net,
    clk => clk_net,
    ce => ce_net,
    y => mux4_y_net
  );
  relational : entity xil_defaultlib.sysgen_relational_f767c8578e 
  port map (
    clr => '0',
    a => addsub_s_net,
    b => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational_op_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_fc0fe97981 
  port map (
    clr => '0',
    a => addsub_s_net,
    b => constant3_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational1_op_net
  );
  relational2 : entity xil_defaultlib.sysgen_relational_fc0fe97981 
  port map (
    clr => '0',
    a => addsub_s_net,
    b => constant6_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational2_op_net
  );
  relational3 : entity xil_defaultlib.sysgen_relational_f767c8578e 
  port map (
    clr => '0',
    a => addsub_s_net,
    b => constant7_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational3_op_net
  );
  shift1 : entity xil_defaultlib.sysgen_shift_826b2e0d0c 
  port map (
    clr => '0',
    ip => mux4_y_net,
    clk => clk_net,
    ce => ce_net,
    op => shift1_op_net
  );
  slice : entity xil_defaultlib.stn_16bit_xlslice 
  generic map (
    new_lsb => 15,
    new_msb => 15,
    x_width => 16,
    y_width => 1
  )
  port map (
    x => addsub_s_net,
    y => slice_y_net
  );
end structural;
-- Generated from Simulink block STN_16bit/Subsystem/Subsystem1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity stn_16bit_subsystem1 is
  port (
    in1 : in std_logic_vector( 16-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 16-1 downto 0 );
    out2 : out std_logic_vector( 16-1 downto 0 )
  );
end stn_16bit_subsystem1;
architecture structural of stn_16bit_subsystem1 is 
  signal constant10_op_net : std_logic;
  signal shift1_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant_op_net : std_logic_vector( 16-1 downto 0 );
  signal addsub4_s_net : std_logic_vector( 16-1 downto 0 );
  signal cordic_6_0_m_axis_dout_tvalid_net : std_logic;
  signal constant9_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant3_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant6_op_net : std_logic_vector( 16-1 downto 0 );
  signal logical1_y_net : std_logic_vector( 1-1 downto 0 );
  signal inverter1_op_net : std_logic_vector( 1-1 downto 0 );
  signal logical2_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational2_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant7_op_net : std_logic_vector( 16-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational3_op_net : std_logic_vector( 1-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
  signal mux_y_net : std_logic_vector( 16-1 downto 0 );
  signal mux3_y_net : std_logic_vector( 16-1 downto 0 );
  signal mux2_y_net : std_logic_vector( 16-1 downto 0 );
  signal mux4_y_net : std_logic_vector( 16-1 downto 0 );
  signal logical3_y_net : std_logic_vector( 1-1 downto 0 );
  signal mux1_y_net : std_logic_vector( 16-1 downto 0 );
  signal slice_y_net : std_logic_vector( 1-1 downto 0 );
  signal cordic_6_0_m_axis_dout_tdata_real_net : std_logic_vector( 16-1 downto 0 );
  signal addsub3_s_net_x0 : std_logic_vector( 16-1 downto 0 );
  signal addsub1_s_net : std_logic_vector( 16-1 downto 0 );
  signal constant4_op_net : std_logic_vector( 16-1 downto 0 );
  signal ce_net : std_logic;
  signal cordic_6_0_m_axis_dout_tdata_imag_net : std_logic_vector( 16-1 downto 0 );
  signal clk_net : std_logic;
  signal addsub2_s_net : std_logic_vector( 16-1 downto 0 );
  signal constant5_op_net : std_logic_vector( 16-1 downto 0 );
  signal addsub3_s_net : std_logic_vector( 16-1 downto 0 );
  signal constant8_op_net : std_logic_vector( 16-1 downto 0 );
begin
  out1 <= cordic_6_0_m_axis_dout_tdata_imag_net;
  out2 <= cordic_6_0_m_axis_dout_tdata_real_net;
  addsub3_s_net_x0 <= in1;
  clk_net <= clk_1;
  ce_net <= ce_1;
  addsub1 : entity xil_defaultlib.stn_16bit_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 11,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 11,
    b_width => 16,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 17,
    core_name0 => "stn_16bit_c_addsub_v12_0_i1",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 17,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 11,
    s_width => 16
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
  addsub2 : entity xil_defaultlib.stn_16bit_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 11,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 11,
    b_width => 16,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 17,
    core_name0 => "stn_16bit_c_addsub_v12_0_i1",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 17,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 11,
    s_width => 16
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
  addsub3 : entity xil_defaultlib.stn_16bit_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 11,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 11,
    b_width => 16,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 17,
    core_name0 => "stn_16bit_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 17,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 11,
    s_width => 16
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
  addsub4 : entity xil_defaultlib.stn_16bit_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 11,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 11,
    b_width => 16,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 17,
    core_name0 => "stn_16bit_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 17,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 11,
    s_width => 16
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
  cordic_6_0 : entity xil_defaultlib.xlcordic_42a051611ad73b92ffe37c70245f0072 
  port map (
    s_axis_phase_tvalid => constant10_op_net,
    s_axis_phase_tdata_phase => shift1_op_net,
    m_axis_dout_tvalid => cordic_6_0_m_axis_dout_tvalid_net,
    m_axis_dout_tdata_imag => cordic_6_0_m_axis_dout_tdata_imag_net,
    m_axis_dout_tdata_real => cordic_6_0_m_axis_dout_tdata_real_net
  );
  constant_x0 : entity xil_defaultlib.sysgen_constant_d3eecd1a63 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  constant10 : entity xil_defaultlib.sysgen_constant_074aca0999 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op(0) => constant10_op_net
  );
  constant3 : entity xil_defaultlib.sysgen_constant_63dd8e5609 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant3_op_net
  );
  constant4 : entity xil_defaultlib.sysgen_constant_59d7a09762 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant4_op_net
  );
  constant5 : entity xil_defaultlib.sysgen_constant_c8be316fba 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant5_op_net
  );
  constant6 : entity xil_defaultlib.sysgen_constant_9d5f01882d 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant6_op_net
  );
  constant7 : entity xil_defaultlib.sysgen_constant_a83c06ebb5 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant7_op_net
  );
  constant8 : entity xil_defaultlib.sysgen_constant_59d7a09762 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant8_op_net
  );
  constant9 : entity xil_defaultlib.sysgen_constant_c8be316fba 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant9_op_net
  );
  inverter : entity xil_defaultlib.sysgen_inverter_093109fc15 
  port map (
    clr => '0',
    ip => relational1_op_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  inverter1 : entity xil_defaultlib.sysgen_inverter_093109fc15 
  port map (
    clr => '0',
    ip => relational3_op_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter1_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_cd9e0c0419 
  port map (
    clr => '0',
    d0 => relational_op_net,
    d1 => relational1_op_net,
    clk => clk_net,
    ce => ce_net,
    y => logical_y_net
  );
  logical1 : entity xil_defaultlib.sysgen_logical_cd9e0c0419 
  port map (
    clr => '0',
    d0 => inverter_op_net,
    d1 => relational_op_net,
    clk => clk_net,
    ce => ce_net,
    y => logical1_y_net
  );
  logical2 : entity xil_defaultlib.sysgen_logical_cd9e0c0419 
  port map (
    clr => '0',
    d0 => relational2_op_net,
    d1 => relational3_op_net,
    clk => clk_net,
    ce => ce_net,
    y => logical2_y_net
  );
  logical3 : entity xil_defaultlib.sysgen_logical_cd9e0c0419 
  port map (
    clr => '0',
    d0 => inverter1_op_net,
    d1 => relational2_op_net,
    clk => clk_net,
    ce => ce_net,
    y => logical3_y_net
  );
  mux : entity xil_defaultlib.sysgen_mux_fa81cf80b1 
  port map (
    clr => '0',
    sel => logical_y_net,
    d0 => addsub3_s_net_x0,
    d1 => addsub1_s_net,
    clk => clk_net,
    ce => ce_net,
    y => mux_y_net
  );
  mux1 : entity xil_defaultlib.sysgen_mux_fa81cf80b1 
  port map (
    clr => '0',
    sel => logical1_y_net,
    d0 => mux_y_net,
    d1 => addsub2_s_net,
    clk => clk_net,
    ce => ce_net,
    y => mux1_y_net
  );
  mux2 : entity xil_defaultlib.sysgen_mux_fa81cf80b1 
  port map (
    clr => '0',
    sel => logical2_y_net,
    d0 => addsub3_s_net_x0,
    d1 => addsub3_s_net,
    clk => clk_net,
    ce => ce_net,
    y => mux2_y_net
  );
  mux3 : entity xil_defaultlib.sysgen_mux_fa81cf80b1 
  port map (
    clr => '0',
    sel => logical3_y_net,
    d0 => mux2_y_net,
    d1 => addsub4_s_net,
    clk => clk_net,
    ce => ce_net,
    y => mux3_y_net
  );
  mux4 : entity xil_defaultlib.sysgen_mux_fa81cf80b1 
  port map (
    clr => '0',
    sel => slice_y_net,
    d0 => mux1_y_net,
    d1 => mux3_y_net,
    clk => clk_net,
    ce => ce_net,
    y => mux4_y_net
  );
  relational : entity xil_defaultlib.sysgen_relational_f767c8578e 
  port map (
    clr => '0',
    a => addsub3_s_net_x0,
    b => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational_op_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_fc0fe97981 
  port map (
    clr => '0',
    a => addsub3_s_net_x0,
    b => constant3_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational1_op_net
  );
  relational2 : entity xil_defaultlib.sysgen_relational_fc0fe97981 
  port map (
    clr => '0',
    a => addsub3_s_net_x0,
    b => constant6_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational2_op_net
  );
  relational3 : entity xil_defaultlib.sysgen_relational_f767c8578e 
  port map (
    clr => '0',
    a => addsub3_s_net_x0,
    b => constant7_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational3_op_net
  );
  shift1 : entity xil_defaultlib.sysgen_shift_826b2e0d0c 
  port map (
    clr => '0',
    ip => mux4_y_net,
    clk => clk_net,
    ce => ce_net,
    op => shift1_op_net
  );
  slice : entity xil_defaultlib.stn_16bit_xlslice 
  generic map (
    new_lsb => 15,
    new_msb => 15,
    x_width => 16,
    y_width => 1
  )
  port map (
    x => addsub3_s_net_x0,
    y => slice_y_net
  );
end structural;
-- Generated from Simulink block STN_16bit/Subsystem
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity stn_16bit_subsystem is
  port (
    input_t : in std_logic_vector( 16-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out_imag : out std_logic_vector( 16-1 downto 0 );
    out_real : out std_logic_vector( 16-1 downto 0 )
  );
end stn_16bit_subsystem;
architecture structural of stn_16bit_subsystem is 
  signal input_t_net : std_logic_vector( 16-1 downto 0 );
  signal cordic_6_0_m_axis_dout_tdata_real_net : std_logic_vector( 16-1 downto 0 );
  signal addsub_s_net : std_logic_vector( 16-1 downto 0 );
  signal phi_hdl_2_op_net : std_logic_vector( 16-1 downto 0 );
  signal mult3_p_net : std_logic_vector( 16-1 downto 0 );
  signal exp_theta_hdl_2_op_net : std_logic_vector( 16-1 downto 0 );
  signal mult2_p_net : std_logic_vector( 16-1 downto 0 );
  signal cordic_6_0_m_axis_dout_tdata_imag_net_x0 : std_logic_vector( 16-1 downto 0 );
  signal mult4_p_net : std_logic_vector( 16-1 downto 0 );
  signal addsub7_s_net : std_logic_vector( 16-1 downto 0 );
  signal ce_net : std_logic;
  signal addsub6_s_net : std_logic_vector( 16-1 downto 0 );
  signal phi_hdl_1_op_net : std_logic_vector( 16-1 downto 0 );
  signal mult1_p_net : std_logic_vector( 16-1 downto 0 );
  signal cordic_6_0_m_axis_dout_tdata_real_net_x0 : std_logic_vector( 16-1 downto 0 );
  signal mult5_p_net : std_logic_vector( 16-1 downto 0 );
  signal clk_net : std_logic;
  signal mult_p_net : std_logic_vector( 16-1 downto 0 );
  signal exp_theta_hdl_1_op_net : std_logic_vector( 16-1 downto 0 );
  signal addsub3_s_net : std_logic_vector( 16-1 downto 0 );
  signal cordic_6_0_m_axis_dout_tdata_imag_net : std_logic_vector( 16-1 downto 0 );
  signal omega_hdl_2_op_net : std_logic_vector( 16-1 downto 0 );
  signal omega_hdl_1_op_net : std_logic_vector( 16-1 downto 0 );
begin
  input_t_net <= input_t;
  out_imag <= addsub6_s_net;
  out_real <= addsub7_s_net;
  clk_net <= clk_1;
  ce_net <= ce_1;
  subsystem : entity xil_defaultlib.stn_16bit_subsystem_x0 
  port map (
    in1 => addsub_s_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => cordic_6_0_m_axis_dout_tdata_imag_net,
    out2 => cordic_6_0_m_axis_dout_tdata_real_net
  );
  subsystem1 : entity xil_defaultlib.stn_16bit_subsystem1 
  port map (
    in1 => addsub3_s_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => cordic_6_0_m_axis_dout_tdata_imag_net_x0,
    out2 => cordic_6_0_m_axis_dout_tdata_real_net_x0
  );
  addsub : entity xil_defaultlib.stn_16bit_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 11,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 11,
    b_width => 16,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 17,
    core_name0 => "stn_16bit_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 17,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 11,
    s_width => 16
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
  addsub3 : entity xil_defaultlib.stn_16bit_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 11,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 11,
    b_width => 16,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 17,
    core_name0 => "stn_16bit_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 17,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 11,
    s_width => 16
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
  addsub6 : entity xil_defaultlib.stn_16bit_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 11,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 11,
    b_width => 16,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 17,
    core_name0 => "stn_16bit_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 17,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 11,
    s_width => 16
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
  addsub7 : entity xil_defaultlib.stn_16bit_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 11,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 11,
    b_width => 16,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 17,
    core_name0 => "stn_16bit_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 17,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 11,
    s_width => 16
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
  exp_theta_hdl_1 : entity xil_defaultlib.sysgen_constant_693bad5bbb 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => exp_theta_hdl_1_op_net
  );
  exp_theta_hdl_2 : entity xil_defaultlib.sysgen_constant_693bad5bbb 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => exp_theta_hdl_2_op_net
  );
  mult : entity xil_defaultlib.stn_16bit_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 11,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 11,
    b_width => 16,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 16,
    c_baat => 16,
    c_output_width => 32,
    c_type => 0,
    core_name0 => "stn_16bit_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 11,
    p_width => 16,
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
  mult1 : entity xil_defaultlib.stn_16bit_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 11,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 11,
    b_width => 16,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 16,
    c_baat => 16,
    c_output_width => 32,
    c_type => 0,
    core_name0 => "stn_16bit_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 11,
    p_width => 16,
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
  mult2 : entity xil_defaultlib.stn_16bit_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 11,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 14,
    b_width => 16,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 16,
    c_baat => 16,
    c_output_width => 32,
    c_type => 0,
    core_name0 => "stn_16bit_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 11,
    p_width => 16,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => exp_theta_hdl_1_op_net,
    b => cordic_6_0_m_axis_dout_tdata_imag_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult2_p_net
  );
  mult3 : entity xil_defaultlib.stn_16bit_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 11,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 14,
    b_width => 16,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 16,
    c_baat => 16,
    c_output_width => 32,
    c_type => 0,
    core_name0 => "stn_16bit_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 11,
    p_width => 16,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => exp_theta_hdl_1_op_net,
    b => cordic_6_0_m_axis_dout_tdata_real_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult3_p_net
  );
  mult4 : entity xil_defaultlib.stn_16bit_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 11,
    b_width => 16,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 16,
    c_baat => 16,
    c_output_width => 32,
    c_type => 0,
    core_name0 => "stn_16bit_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 11,
    p_width => 16,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => cordic_6_0_m_axis_dout_tdata_imag_net_x0,
    b => exp_theta_hdl_2_op_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult4_p_net
  );
  mult5 : entity xil_defaultlib.stn_16bit_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 11,
    b_width => 16,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 0,
    c_b_width => 16,
    c_baat => 16,
    c_output_width => 32,
    c_type => 0,
    core_name0 => "stn_16bit_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 11,
    p_width => 16,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => cordic_6_0_m_axis_dout_tdata_real_net_x0,
    b => exp_theta_hdl_2_op_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult5_p_net
  );
  omega_hdl_1 : entity xil_defaultlib.sysgen_constant_883301bae9 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => omega_hdl_1_op_net
  );
  omega_hdl_2 : entity xil_defaultlib.sysgen_constant_693bad5bbb 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => omega_hdl_2_op_net
  );
  phi_hdl_1 : entity xil_defaultlib.sysgen_constant_71bfc7d96c 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => phi_hdl_1_op_net
  );
  phi_hdl_2 : entity xil_defaultlib.sysgen_constant_71bfc7d96c 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => phi_hdl_2_op_net
  );
end structural;
-- Generated from Simulink block STN_16bit_struct
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity stn_16bit_struct is
  port (
    input_t : in std_logic_vector( 16-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out_imag : out std_logic_vector( 16-1 downto 0 );
    out_real : out std_logic_vector( 16-1 downto 0 )
  );
end stn_16bit_struct;
architecture structural of stn_16bit_struct is 
  signal ce_net : std_logic;
  signal addsub6_s_net : std_logic_vector( 16-1 downto 0 );
  signal input_t_net : std_logic_vector( 16-1 downto 0 );
  signal clk_net : std_logic;
  signal addsub7_s_net : std_logic_vector( 16-1 downto 0 );
begin
  input_t_net <= input_t;
  out_imag <= addsub6_s_net;
  out_real <= addsub7_s_net;
  clk_net <= clk_1;
  ce_net <= ce_1;
  subsystem : entity xil_defaultlib.stn_16bit_subsystem 
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
entity stn_16bit_default_clock_driver is
  port (
    stn_16bit_sysclk : in std_logic;
    stn_16bit_sysce : in std_logic;
    stn_16bit_sysclr : in std_logic;
    stn_16bit_clk1 : out std_logic;
    stn_16bit_ce1 : out std_logic
  );
end stn_16bit_default_clock_driver;
architecture structural of stn_16bit_default_clock_driver is 
begin
  clockdriver : entity xil_defaultlib.xlclockdriver 
  generic map (
    period => 1,
    log_2_period => 1
  )
  port map (
    sysclk => stn_16bit_sysclk,
    sysce => stn_16bit_sysce,
    sysclr => stn_16bit_sysclr,
    clk => stn_16bit_clk1,
    ce => stn_16bit_ce1
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity stn_16bit is
  port (
    input_t : in std_logic_vector( 16-1 downto 0 );
    clk : in std_logic;
    out_imag : out std_logic_vector( 16-1 downto 0 );
    out_real : out std_logic_vector( 16-1 downto 0 )
  );
end stn_16bit;
architecture structural of stn_16bit is 
  attribute core_generation_info : string;
  attribute core_generation_info of structural : architecture is "stn_16bit,sysgen_core_2021_1,{,compilation=IP Catalog,block_icon_display=Default,family=zynq,part=xc7z020,speed=-1,package=clg484,synthesis_language=vhdl,hdl_library=xil_defaultlib,synthesis_strategy=Vivado Synthesis Defaults,implementation_strategy=Vivado Implementation Defaults,testbench=0,interface_doc=0,ce_clr=0,clock_period=100,system_simulink_period=1,waveform_viewer=0,axilite_interface=0,ip_catalog_plugin=0,hwcosim_burst_mode=0,simulation_time=7500,addsub=12,constant=24,cordic_v6_0=2,inv=4,logical=8,mult=6,mux=10,relational=8,shift=2,slice=2,}";
  signal ce_1_net : std_logic;
  signal clk_1_net : std_logic;
begin
  stn_16bit_default_clock_driver : entity xil_defaultlib.stn_16bit_default_clock_driver 
  port map (
    stn_16bit_sysclk => clk,
    stn_16bit_sysce => '1',
    stn_16bit_sysclr => '0',
    stn_16bit_clk1 => clk_1_net,
    stn_16bit_ce1 => ce_1_net
  );
  stn_16bit_struct : entity xil_defaultlib.stn_16bit_struct 
  port map (
    input_t => input_t,
    clk_1 => clk_1_net,
    ce_1 => ce_1_net,
    out_imag => out_imag,
    out_real => out_real
  );
end structural;
