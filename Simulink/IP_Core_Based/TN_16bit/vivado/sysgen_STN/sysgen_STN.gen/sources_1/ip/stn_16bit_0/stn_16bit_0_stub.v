// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Tue Nov 22 22:41:00 2022
// Host        : DESKTOP-1FT5C23 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               e:/FPGAProject/01102022/FPGAResearch/5_Final_Submission/Simulink/IP_Core_Based/TN_16bit/vivado/sysgen_STN/sysgen_STN.gen/sources_1/ip/stn_16bit_0/stn_16bit_0_stub.v
// Design      : stn_16bit_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "stn_16bit,Vivado 2021.1" *)
module stn_16bit_0(input_t, clk, out_imag, out_real)
/* synthesis syn_black_box black_box_pad_pin="input_t[15:0],clk,out_imag[15:0],out_real[15:0]" */;
  input [15:0]input_t;
  input clk;
  output [15:0]out_imag;
  output [15:0]out_real;
endmodule
