// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Sat Nov 19 14:41:26 2022
// Host        : DESKTOP-1FT5C23 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               e:/FPGAProject/01102022/FPGAResearch/5_Final_Submission/Vivado_Desgin/SumofTwoNeuron_8bit/sumofTwoNeuron_8bit/sumofTwoNeuron_8bit.gen/sources_1/ip/cordic_0/cordic_0_stub.v
// Design      : cordic_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "cordic_v6_0_17,Vivado 2021.1" *)
module cordic_0(aclk, s_axis_phase_tvalid, 
  s_axis_phase_tdata, m_axis_dout_tvalid, m_axis_dout_tdata)
/* synthesis syn_black_box black_box_pad_pin="aclk,s_axis_phase_tvalid,s_axis_phase_tdata[7:0],m_axis_dout_tvalid,m_axis_dout_tdata[15:0]" */;
  input aclk;
  input s_axis_phase_tvalid;
  input [7:0]s_axis_phase_tdata;
  output m_axis_dout_tvalid;
  output [15:0]m_axis_dout_tdata;
endmodule
