-- Generated from Simulink block Fourto4genIP_struct
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity fourto4genip_struct is
  port (
    gateway_in : in std_logic_vector( 10-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    gateway_out : out std_logic_vector( 64-1 downto 0 )
  );
end fourto4genip_struct;
architecture structural of fourto4genip_struct is 
  signal gateway_in_net : std_logic_vector( 10-1 downto 0 );
  signal rom_data_net : std_logic_vector( 64-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
begin
  gateway_in_net <= gateway_in;
  gateway_out <= rom_data_net;
  clk_net <= clk_1;
  ce_net <= ce_1;
  rom : entity xil_defaultlib.fourto4genip_xlsprom 
  generic map (
    c_address_width => 10,
    c_width => 64,
    latency => 1,
    mem_init_file => "xpm_d4b9e8_vivado.mem",
    mem_size => 65536,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => gateway_in_net,
    clk => clk_net,
    ce => ce_net,
    data => rom_data_net
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity fourto4genip_default_clock_driver is
  port (
    fourto4genip_sysclk : in std_logic;
    fourto4genip_sysce : in std_logic;
    fourto4genip_sysclr : in std_logic;
    fourto4genip_clk1 : out std_logic;
    fourto4genip_ce1 : out std_logic
  );
end fourto4genip_default_clock_driver;
architecture structural of fourto4genip_default_clock_driver is 
begin
  clockdriver : entity xil_defaultlib.xlclockdriver 
  generic map (
    period => 1,
    log_2_period => 1
  )
  port map (
    sysclk => fourto4genip_sysclk,
    sysce => fourto4genip_sysce,
    sysclr => fourto4genip_sysclr,
    clk => fourto4genip_clk1,
    ce => fourto4genip_ce1
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity fourto4genip is
  port (
    gateway_in : in std_logic_vector( 10-1 downto 0 );
    clk : in std_logic;
    gateway_out : out std_logic_vector( 64-1 downto 0 )
  );
end fourto4genip;
architecture structural of fourto4genip is 
  attribute core_generation_info : string;
  attribute core_generation_info of structural : architecture is "fourto4genip,sysgen_core_2021_1,{,compilation=IP Catalog,block_icon_display=Default,family=zynq,part=xc7z020,speed=-1,package=clg484,synthesis_language=vhdl,hdl_library=xil_defaultlib,synthesis_strategy=Vivado Synthesis Defaults,implementation_strategy=Vivado Implementation Defaults,testbench=0,interface_doc=0,ce_clr=0,clock_period=10,system_simulink_period=1,waveform_viewer=0,axilite_interface=0,ip_catalog_plugin=0,hwcosim_burst_mode=0,simulation_time=800,sprom=1,}";
  signal clk_1_net : std_logic;
  signal ce_1_net : std_logic;
begin
  fourto4genip_default_clock_driver : entity xil_defaultlib.fourto4genip_default_clock_driver 
  port map (
    fourto4genip_sysclk => clk,
    fourto4genip_sysce => '1',
    fourto4genip_sysclr => '0',
    fourto4genip_clk1 => clk_1_net,
    fourto4genip_ce1 => ce_1_net
  );
  fourto4genip_struct : entity xil_defaultlib.fourto4genip_struct 
  port map (
    gateway_in => gateway_in,
    clk_1 => clk_1_net,
    ce_1 => ce_1_net,
    gateway_out => gateway_out
  );
end structural;
