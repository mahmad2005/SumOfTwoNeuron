  sysgen_dut : entity xil_defaultlib.stn_8bit 
  port map (
    input_t => input_t,
    clk => clk,
    out_imag => out_imag,
    out_real => out_real
  );
