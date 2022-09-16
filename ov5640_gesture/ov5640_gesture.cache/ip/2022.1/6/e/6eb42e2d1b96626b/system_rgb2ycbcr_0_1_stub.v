// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Thu Sep 15 10:23:38 2022
// Host        : Zou running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_rgb2ycbcr_0_1_stub.v
// Design      : system_rgb2ycbcr_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "rgb2ycbcr,Vivado 2022.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, rst_n, rgb_vsync, rgb_clken, rgb_valid, 
  rgb_data, ycbcr_vsync, ycbcr_clken, ycbcr_valid, ycbcr_data, rgb_data_syn)
/* synthesis syn_black_box black_box_pad_pin="clk,rst_n,rgb_vsync,rgb_clken,rgb_valid,rgb_data[23:0],ycbcr_vsync,ycbcr_clken,ycbcr_valid,ycbcr_data[23:0],rgb_data_syn[23:0]" */;
  input clk;
  input rst_n;
  input rgb_vsync;
  input rgb_clken;
  input rgb_valid;
  input [23:0]rgb_data;
  output ycbcr_vsync;
  output ycbcr_clken;
  output ycbcr_valid;
  output [23:0]ycbcr_data;
  output [23:0]rgb_data_syn;
endmodule
