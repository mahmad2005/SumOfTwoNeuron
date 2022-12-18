-makelib ies_lib/xpm -sv \
  "C:/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "C:/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "C:/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../ipstatic/xil_defaultlib/hdl/conv_pkg.vhd" \
  "../../../ipstatic/xil_defaultlib/hdl/synth_reg.vhd" \
  "../../../ipstatic/xil_defaultlib/hdl/synth_reg_w_init.vhd" \
  "../../../ipstatic/xil_defaultlib/hdl/srl17e.vhd" \
  "../../../ipstatic/xil_defaultlib/hdl/srl33e.vhd" \
  "../../../ipstatic/xil_defaultlib/hdl/synth_reg_reg.vhd" \
  "../../../ipstatic/xil_defaultlib/hdl/single_reg_w_init.vhd" \
  "../../../ipstatic/xil_defaultlib/hdl/xlclockdriver_rd.vhd" \
  "../../../ipstatic/xil_defaultlib/hdl/fourto4genip_entity_declarations.vhd" \
  "../../../ipstatic/xil_defaultlib/hdl/fourto4genip.vhd" \
  "../../../../sysgen_STN.gen/sources_1/ip/fourto4genip_0/sim/fourto4genip_0.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

