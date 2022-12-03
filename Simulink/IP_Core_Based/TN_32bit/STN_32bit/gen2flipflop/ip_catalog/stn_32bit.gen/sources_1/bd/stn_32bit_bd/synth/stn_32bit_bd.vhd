--Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
--Date        : Fri Dec  2 23:55:08 2022
--Host        : DESKTOP-1FT5C23 running 64-bit major release  (build 9200)
--Command     : generate_target stn_32bit_bd.bd
--Design      : stn_32bit_bd
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity stn_32bit_bd is
  port (
    clk : in STD_LOGIC;
    input_t : in STD_LOGIC_VECTOR ( 31 downto 0 );
    out_imag : out STD_LOGIC_VECTOR ( 31 downto 0 );
    out_real : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of stn_32bit_bd : entity is "stn_32bit_bd,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=stn_32bit_bd,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=1,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SYSGEN,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of stn_32bit_bd : entity is "stn_32bit_bd.hwdef";
end stn_32bit_bd;

architecture STRUCTURE of stn_32bit_bd is
  component stn_32bit_bd_stn_32bit_1_0 is
  port (
    input_t : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    out_imag : out STD_LOGIC_VECTOR ( 31 downto 0 );
    out_real : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component stn_32bit_bd_stn_32bit_1_0;
  signal clk_1 : STD_LOGIC;
  signal input_t_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal stn_32bit_1_out_imag : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal stn_32bit_1_out_real : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN stn_32bit_bd_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of input_t : signal is "xilinx.com:signal:data:1.0 DATA.INPUT_T DATA";
  attribute X_INTERFACE_PARAMETER of input_t : signal is "XIL_INTERFACENAME DATA.INPUT_T, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of out_imag : signal is "xilinx.com:signal:data:1.0 DATA.OUT_IMAG DATA";
  attribute X_INTERFACE_PARAMETER of out_imag : signal is "XIL_INTERFACENAME DATA.OUT_IMAG, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 27} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}";
  attribute X_INTERFACE_INFO of out_real : signal is "xilinx.com:signal:data:1.0 DATA.OUT_REAL DATA";
  attribute X_INTERFACE_PARAMETER of out_real : signal is "XIL_INTERFACENAME DATA.OUT_REAL, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 27} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}";
begin
  clk_1 <= clk;
  input_t_1(31 downto 0) <= input_t(31 downto 0);
  out_imag(31 downto 0) <= stn_32bit_1_out_imag(31 downto 0);
  out_real(31 downto 0) <= stn_32bit_1_out_real(31 downto 0);
stn_32bit_1: component stn_32bit_bd_stn_32bit_1_0
     port map (
      clk => clk_1,
      input_t(31 downto 0) => input_t_1(31 downto 0),
      out_imag(31 downto 0) => stn_32bit_1_out_imag(31 downto 0),
      out_real(31 downto 0) => stn_32bit_1_out_real(31 downto 0)
    );
end STRUCTURE;
