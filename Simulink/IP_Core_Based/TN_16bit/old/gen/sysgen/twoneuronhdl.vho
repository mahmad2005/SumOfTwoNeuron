  sysgen_dut : entity xil_defaultlib.twoneuronhdl 
  port map (
    gateway_in => gateway_in,
    clk => clk,
    gateway_out => gateway_out,
    gateway_out1 => gateway_out1
  );
