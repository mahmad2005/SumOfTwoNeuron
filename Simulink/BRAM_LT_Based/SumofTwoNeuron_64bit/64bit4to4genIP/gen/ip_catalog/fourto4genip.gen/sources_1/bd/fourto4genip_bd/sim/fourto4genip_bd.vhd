--Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
--Date        : Sat Dec 17 03:39:39 2022
--Host        : DESKTOP-1FT5C23 running 64-bit major release  (build 9200)
--Command     : generate_target fourto4genip_bd.bd
--Design      : fourto4genip_bd
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fourto4genip_bd is
  port (
    clk : in STD_LOGIC;
    gateway_in : in STD_LOGIC_VECTOR ( 9 downto 0 );
    gateway_out : out STD_LOGIC_VECTOR ( 63 downto 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of fourto4genip_bd : entity is "fourto4genip_bd,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=fourto4genip_bd,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=1,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SYSGEN,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of fourto4genip_bd : entity is "fourto4genip_bd.hwdef";
end fourto4genip_bd;

architecture STRUCTURE of fourto4genip_bd is
  component fourto4genip_bd_fourto4genip_1_0 is
  port (
    gateway_in : in STD_LOGIC_VECTOR ( 9 downto 0 );
    clk : in STD_LOGIC;
    gateway_out : out STD_LOGIC_VECTOR ( 63 downto 0 )
  );
  end component fourto4genip_bd_fourto4genip_1_0;
  signal clk_1 : STD_LOGIC;
  signal fourto4genip_1_gateway_out : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal gateway_in_1 : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN fourto4genip_bd_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of gateway_in : signal is "xilinx.com:signal:data:1.0 DATA.GATEWAY_IN DATA";
  attribute X_INTERFACE_PARAMETER of gateway_in : signal is "XIL_INTERFACENAME DATA.GATEWAY_IN, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of gateway_out : signal is "xilinx.com:signal:data:1.0 DATA.GATEWAY_OUT DATA";
  attribute X_INTERFACE_PARAMETER of gateway_out : signal is "XIL_INTERFACENAME DATA.GATEWAY_OUT, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 59} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}";
begin
  clk_1 <= clk;
  gateway_in_1(9 downto 0) <= gateway_in(9 downto 0);
  gateway_out(63 downto 0) <= fourto4genip_1_gateway_out(63 downto 0);
fourto4genip_1: component fourto4genip_bd_fourto4genip_1_0
     port map (
      clk => clk_1,
      gateway_in(9 downto 0) => gateway_in_1(9 downto 0),
      gateway_out(63 downto 0) => fourto4genip_1_gateway_out(63 downto 0)
    );
end STRUCTURE;
