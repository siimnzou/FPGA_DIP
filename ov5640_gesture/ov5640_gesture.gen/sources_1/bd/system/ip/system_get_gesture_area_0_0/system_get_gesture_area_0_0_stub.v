// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Thu Sep 15 10:41:50 2022
// Host        : Zou running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/xilinx_FPGA_prj/my_fpga_prj/ov5640_gesture/ov5640_gesture.gen/sources_1/bd/system/ip/system_get_gesture_area_0_0/system_get_gesture_area_0_0_stub.v
// Design      : system_get_gesture_area_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "get_gesture_area,Vivado 2022.1" *)
module system_get_gesture_area_0_0(clk, rst_n, ycbcr_vsync, ycbcr_clken, 
  ycbcr_valid, ycbcr_data, rgb_data_syn, gesture_vsync, gesture_clken, gesture_valid, 
  gesture_data)
/* synthesis syn_black_box black_box_pad_pin="clk,rst_n,ycbcr_vsync,ycbcr_clken,ycbcr_valid,ycbcr_data[23:0],rgb_data_syn[23:0],gesture_vsync,gesture_clken,gesture_valid,gesture_data[23:0]" */;
  input clk;
  input rst_n;
  input ycbcr_vsync;
  input ycbcr_clken;
  input ycbcr_valid;
  input [23:0]ycbcr_data;
  input [23:0]rgb_data_syn;
  output gesture_vsync;
  output gesture_clken;
  output gesture_valid;
  output [23:0]gesture_data;
endmodule
