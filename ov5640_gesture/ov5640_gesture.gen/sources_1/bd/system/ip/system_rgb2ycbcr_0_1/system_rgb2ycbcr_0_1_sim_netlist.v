// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Thu Sep 15 10:23:38 2022
// Host        : Zou running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/xilinx_FPGA_prj/my_fpga_prj/ov5640_gesture/ov5640_gesture.gen/sources_1/bd/system/ip/system_rgb2ycbcr_0_1/system_rgb2ycbcr_0_1_sim_netlist.v
// Design      : system_rgb2ycbcr_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_rgb2ycbcr_0_1,rgb2ycbcr,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "rgb2ycbcr,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module system_rgb2ycbcr_0_1
   (clk,
    rst_n,
    rgb_vsync,
    rgb_clken,
    rgb_valid,
    rgb_data,
    ycbcr_vsync,
    ycbcr_clken,
    ycbcr_valid,
    ycbcr_data,
    rgb_data_syn);
  input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 rgb_in VSYNC" *) input rgb_vsync;
  input rgb_clken;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 rgb_in ACTIVE_VIDEO" *) input rgb_valid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 rgb_in DATA" *) input [23:0]rgb_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 ycbcr VSYNC" *) output ycbcr_vsync;
  output ycbcr_clken;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 ycbcr ACTIVE_VIDEO" *) output ycbcr_valid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 ycbcr DATA" *) output [23:0]ycbcr_data;
  output [23:0]rgb_data_syn;

  wire clk;
  wire rgb_clken;
  wire [23:0]rgb_data;
  wire [23:0]rgb_data_syn;
  wire rgb_valid;
  wire rgb_vsync;
  wire rst_n;
  wire ycbcr_clken;
  wire [23:0]ycbcr_data;
  wire ycbcr_valid;
  wire ycbcr_vsync;

  system_rgb2ycbcr_0_1_rgb2ycbcr inst
       (.Q(ycbcr_clken),
        .clk(clk),
        .rgb_clken(rgb_clken),
        .rgb_data(rgb_data),
        .rgb_data_syn(rgb_data_syn),
        .rgb_valid(rgb_valid),
        .rgb_vsync(rgb_vsync),
        .rst_n(rst_n),
        .ycbcr_data(ycbcr_data),
        .ycbcr_valid(ycbcr_valid),
        .ycbcr_vsync(ycbcr_vsync));
endmodule

(* ORIG_REF_NAME = "rgb2ycbcr" *) 
module system_rgb2ycbcr_0_1_rgb2ycbcr
   (ycbcr_vsync,
    Q,
    ycbcr_valid,
    ycbcr_data,
    rgb_data_syn,
    rgb_data,
    clk,
    rgb_vsync,
    rgb_clken,
    rgb_valid,
    rst_n);
  output ycbcr_vsync;
  output [0:0]Q;
  output ycbcr_valid;
  output [23:0]ycbcr_data;
  output [23:0]rgb_data_syn;
  input [23:0]rgb_data;
  input clk;
  input rgb_vsync;
  input rgb_clken;
  input rgb_valid;
  input rst_n;

  wire [0:0]Q;
  wire clk;
  wire [15:8]img_cb0;
  wire img_cb00_carry__0_i_1_n_0;
  wire img_cb00_carry__0_i_2_n_0;
  wire img_cb00_carry__0_i_3_n_0;
  wire img_cb00_carry__0_i_4_n_0;
  wire img_cb00_carry__0_i_5_n_0;
  wire img_cb00_carry__0_i_6_n_0;
  wire img_cb00_carry__0_i_7_n_0;
  wire img_cb00_carry__0_i_8_n_0;
  wire img_cb00_carry__0_n_0;
  wire img_cb00_carry__0_n_1;
  wire img_cb00_carry__0_n_2;
  wire img_cb00_carry__0_n_3;
  wire img_cb00_carry__1_i_1_n_0;
  wire img_cb00_carry__1_i_2_n_0;
  wire img_cb00_carry__1_i_3_n_0;
  wire img_cb00_carry__1_i_4_n_0;
  wire img_cb00_carry__1_i_5_n_0;
  wire img_cb00_carry__1_i_6_n_0;
  wire img_cb00_carry__1_i_7_n_0;
  wire img_cb00_carry__1_i_8_n_0;
  wire img_cb00_carry__1_n_0;
  wire img_cb00_carry__1_n_1;
  wire img_cb00_carry__1_n_2;
  wire img_cb00_carry__1_n_3;
  wire img_cb00_carry__1_n_4;
  wire img_cb00_carry__1_n_5;
  wire img_cb00_carry__1_n_6;
  wire img_cb00_carry__1_n_7;
  wire img_cb00_carry__2_i_1_n_0;
  wire img_cb00_carry__2_i_2_n_0;
  wire img_cb00_carry__2_i_3_n_0;
  wire img_cb00_carry__2_i_4_n_0;
  wire img_cb00_carry__2_i_5_n_0;
  wire img_cb00_carry__2_i_6_n_0;
  wire img_cb00_carry__2_i_7_n_0;
  wire img_cb00_carry__2_n_1;
  wire img_cb00_carry__2_n_2;
  wire img_cb00_carry__2_n_3;
  wire img_cb00_carry__2_n_4;
  wire img_cb00_carry__2_n_5;
  wire img_cb00_carry__2_n_6;
  wire img_cb00_carry__2_n_7;
  wire img_cb00_carry_i_1_n_0;
  wire img_cb00_carry_i_2_n_0;
  wire img_cb00_carry_i_3_n_0;
  wire img_cb00_carry_i_4_n_0;
  wire img_cb00_carry_i_5_n_0;
  wire img_cb00_carry_i_6_n_0;
  wire img_cb00_carry_i_7_n_0;
  wire img_cb00_carry_n_0;
  wire img_cb00_carry_n_1;
  wire img_cb00_carry_n_2;
  wire img_cb00_carry_n_3;
  wire [7:0]img_cb1;
  wire img_cr00_carry__0_i_1_n_0;
  wire img_cr00_carry__0_i_2_n_0;
  wire img_cr00_carry__0_i_3_n_0;
  wire img_cr00_carry__0_i_4_n_0;
  wire img_cr00_carry__0_i_5_n_0;
  wire img_cr00_carry__0_i_6_n_0;
  wire img_cr00_carry__0_i_7_n_0;
  wire img_cr00_carry__0_i_8_n_0;
  wire img_cr00_carry__0_n_0;
  wire img_cr00_carry__0_n_1;
  wire img_cr00_carry__0_n_2;
  wire img_cr00_carry__0_n_3;
  wire img_cr00_carry__0_n_4;
  wire img_cr00_carry__0_n_5;
  wire img_cr00_carry__1_i_1_n_0;
  wire img_cr00_carry__1_i_2_n_0;
  wire img_cr00_carry__1_i_3_n_0;
  wire img_cr00_carry__1_i_4_n_0;
  wire img_cr00_carry__1_i_5_n_0;
  wire img_cr00_carry__1_i_6_n_0;
  wire img_cr00_carry__1_i_7_n_0;
  wire img_cr00_carry__1_i_8_n_0;
  wire img_cr00_carry__1_n_0;
  wire img_cr00_carry__1_n_1;
  wire img_cr00_carry__1_n_2;
  wire img_cr00_carry__1_n_3;
  wire img_cr00_carry__1_n_4;
  wire img_cr00_carry__1_n_5;
  wire img_cr00_carry__1_n_6;
  wire img_cr00_carry__1_n_7;
  wire img_cr00_carry__2_i_1_n_0;
  wire img_cr00_carry__2_i_2_n_0;
  wire img_cr00_carry__2_i_3_n_0;
  wire img_cr00_carry__2_n_3;
  wire img_cr00_carry__2_n_6;
  wire img_cr00_carry__2_n_7;
  wire img_cr00_carry_i_1_n_0;
  wire img_cr00_carry_i_2_n_0;
  wire img_cr00_carry_i_3_n_0;
  wire img_cr00_carry_i_4_n_0;
  wire img_cr00_carry_i_5_n_0;
  wire img_cr00_carry_i_6_n_0;
  wire img_cr00_carry_i_7_n_0;
  wire img_cr00_carry_i_8_n_0;
  wire img_cr00_carry_n_0;
  wire img_cr00_carry_n_1;
  wire img_cr00_carry_n_2;
  wire img_cr00_carry_n_3;
  wire [7:0]img_cr1;
  wire [15:8]img_y0;
  wire img_y00__1_carry__0_i_1_n_0;
  wire img_y00__1_carry__0_i_2_n_0;
  wire img_y00__1_carry__0_i_3_n_0;
  wire img_y00__1_carry__0_i_4_n_0;
  wire img_y00__1_carry__0_i_5_n_0;
  wire img_y00__1_carry__0_i_6_n_0;
  wire img_y00__1_carry__0_i_7_n_0;
  wire img_y00__1_carry__0_i_8_n_0;
  wire img_y00__1_carry__0_n_0;
  wire img_y00__1_carry__0_n_1;
  wire img_y00__1_carry__0_n_2;
  wire img_y00__1_carry__0_n_3;
  wire img_y00__1_carry__1_i_1_n_0;
  wire img_y00__1_carry__1_i_2_n_0;
  wire img_y00__1_carry__1_i_3_n_0;
  wire img_y00__1_carry__1_i_4_n_0;
  wire img_y00__1_carry__1_i_5_n_0;
  wire img_y00__1_carry__1_i_6_n_0;
  wire img_y00__1_carry__1_i_7_n_0;
  wire img_y00__1_carry__1_i_8_n_0;
  wire img_y00__1_carry__1_n_0;
  wire img_y00__1_carry__1_n_1;
  wire img_y00__1_carry__1_n_2;
  wire img_y00__1_carry__1_n_3;
  wire img_y00__1_carry__1_n_4;
  wire img_y00__1_carry__1_n_5;
  wire img_y00__1_carry__1_n_6;
  wire img_y00__1_carry__1_n_7;
  wire img_y00__1_carry__2_i_1_n_0;
  wire img_y00__1_carry__2_i_2_n_0;
  wire img_y00__1_carry__2_i_3_n_0;
  wire img_y00__1_carry__2_i_4_n_0;
  wire img_y00__1_carry__2_i_5_n_0;
  wire img_y00__1_carry__2_i_6_n_0;
  wire img_y00__1_carry__2_i_7_n_0;
  wire img_y00__1_carry__2_n_1;
  wire img_y00__1_carry__2_n_2;
  wire img_y00__1_carry__2_n_3;
  wire img_y00__1_carry__2_n_4;
  wire img_y00__1_carry__2_n_5;
  wire img_y00__1_carry__2_n_6;
  wire img_y00__1_carry__2_n_7;
  wire img_y00__1_carry_i_1_n_0;
  wire img_y00__1_carry_i_2_n_0;
  wire img_y00__1_carry_i_3_n_0;
  wire img_y00__1_carry_i_4_n_0;
  wire img_y00__1_carry_i_5_n_0;
  wire img_y00__1_carry_i_6_n_0;
  wire img_y00__1_carry_i_7_n_0;
  wire img_y00__1_carry_n_0;
  wire img_y00__1_carry_n_1;
  wire img_y00__1_carry_n_2;
  wire img_y00__1_carry_n_3;
  wire [7:0]img_y1;
  wire [7:0]p_0_in;
  wire [12:0]rgb_b_m0;
  wire [12:3]rgb_b_m00;
  wire rgb_b_m00_carry__0_i_1_n_0;
  wire rgb_b_m00_carry__0_i_2_n_0;
  wire rgb_b_m00_carry__0_i_3_n_0;
  wire rgb_b_m00_carry__0_i_4_n_0;
  wire rgb_b_m00_carry__0_i_5_n_0;
  wire rgb_b_m00_carry__0_i_6_n_0;
  wire rgb_b_m00_carry__0_i_7_n_0;
  wire rgb_b_m00_carry__0_i_8_n_0;
  wire rgb_b_m00_carry__0_n_0;
  wire rgb_b_m00_carry__0_n_1;
  wire rgb_b_m00_carry__0_n_2;
  wire rgb_b_m00_carry__0_n_3;
  wire rgb_b_m00_carry__1_i_1_n_0;
  wire rgb_b_m00_carry__1_i_2_n_0;
  wire rgb_b_m00_carry__1_i_3_n_0;
  wire rgb_b_m00_carry__1_n_3;
  wire rgb_b_m00_carry_i_1_n_0;
  wire rgb_b_m00_carry_i_2_n_0;
  wire rgb_b_m00_carry_i_3_n_0;
  wire rgb_b_m00_carry_i_4_n_0;
  wire rgb_b_m00_carry_i_5_n_0;
  wire rgb_b_m00_carry_i_6_n_0;
  wire rgb_b_m00_carry_i_7_n_0;
  wire rgb_b_m00_carry_n_0;
  wire rgb_b_m00_carry_n_1;
  wire rgb_b_m00_carry_n_2;
  wire rgb_b_m00_carry_n_3;
  wire [14:4]rgb_b_m1;
  wire [14:4]rgb_b_m10;
  wire rgb_b_m10__25_carry__0_i_1_n_0;
  wire rgb_b_m10__25_carry__0_i_2_n_0;
  wire rgb_b_m10__25_carry__0_i_3_n_0;
  wire rgb_b_m10__25_carry__0_i_4_n_0;
  wire rgb_b_m10__25_carry__0_n_0;
  wire rgb_b_m10__25_carry__0_n_1;
  wire rgb_b_m10__25_carry__0_n_2;
  wire rgb_b_m10__25_carry__0_n_3;
  wire rgb_b_m10__25_carry__1_i_1_n_0;
  wire rgb_b_m10__25_carry__1_n_3;
  wire rgb_b_m10__25_carry_i_1_n_0;
  wire rgb_b_m10__25_carry_i_2_n_0;
  wire rgb_b_m10__25_carry_i_3_n_0;
  wire rgb_b_m10__25_carry_n_0;
  wire rgb_b_m10__25_carry_n_1;
  wire rgb_b_m10__25_carry_n_2;
  wire rgb_b_m10__25_carry_n_3;
  wire rgb_b_m10_carry__0_i_1_n_0;
  wire rgb_b_m10_carry__0_i_2_n_0;
  wire rgb_b_m10_carry__0_i_3_n_0;
  wire rgb_b_m10_carry__0_i_4_n_0;
  wire rgb_b_m10_carry__0_n_0;
  wire rgb_b_m10_carry__0_n_1;
  wire rgb_b_m10_carry__0_n_2;
  wire rgb_b_m10_carry__0_n_3;
  wire rgb_b_m10_carry__0_n_4;
  wire rgb_b_m10_carry__0_n_5;
  wire rgb_b_m10_carry__0_n_6;
  wire rgb_b_m10_carry__0_n_7;
  wire rgb_b_m10_carry__1_i_1_n_0;
  wire rgb_b_m10_carry__1_i_2_n_0;
  wire rgb_b_m10_carry__1_n_2;
  wire rgb_b_m10_carry__1_n_3;
  wire rgb_b_m10_carry__1_n_5;
  wire rgb_b_m10_carry__1_n_6;
  wire rgb_b_m10_carry__1_n_7;
  wire rgb_b_m10_carry_i_1_n_0;
  wire rgb_b_m10_carry_i_2_n_0;
  wire rgb_b_m10_carry_i_3_n_0;
  wire rgb_b_m10_carry_n_0;
  wire rgb_b_m10_carry_n_1;
  wire rgb_b_m10_carry_n_2;
  wire rgb_b_m10_carry_n_3;
  wire rgb_b_m10_carry_n_4;
  wire rgb_b_m10_carry_n_5;
  wire rgb_b_m10_carry_n_6;
  wire [12:3]rgb_b_m2;
  wire [12:3]rgb_b_m20;
  wire \rgb_b_m2[10]_i_2_n_0 ;
  wire \rgb_b_m2[10]_i_3_n_0 ;
  wire \rgb_b_m2[6]_i_2_n_0 ;
  wire \rgb_b_m2[6]_i_3_n_0 ;
  wire \rgb_b_m2[6]_i_4_n_0 ;
  wire \rgb_b_m2_reg[10]_i_1_n_0 ;
  wire \rgb_b_m2_reg[10]_i_1_n_1 ;
  wire \rgb_b_m2_reg[10]_i_1_n_2 ;
  wire \rgb_b_m2_reg[10]_i_1_n_3 ;
  wire \rgb_b_m2_reg[6]_i_1_n_0 ;
  wire \rgb_b_m2_reg[6]_i_1_n_1 ;
  wire \rgb_b_m2_reg[6]_i_1_n_2 ;
  wire \rgb_b_m2_reg[6]_i_1_n_3 ;
  wire rgb_clken;
  wire [1:0]rgb_clken_d;
  wire [23:0]rgb_data;
  wire [47:3]rgb_data_d;
  wire [23:0]rgb_data_syn;
  wire [15:0]rgb_g_m0;
  wire [15:6]rgb_g_m00;
  wire \rgb_g_m0[9]_i_2_n_0 ;
  wire \rgb_g_m0_reg[13]_i_1_n_0 ;
  wire \rgb_g_m0_reg[13]_i_1_n_1 ;
  wire \rgb_g_m0_reg[13]_i_1_n_2 ;
  wire \rgb_g_m0_reg[13]_i_1_n_3 ;
  wire \rgb_g_m0_reg[9]_i_1_n_0 ;
  wire \rgb_g_m0_reg[9]_i_1_n_1 ;
  wire \rgb_g_m0_reg[9]_i_1_n_2 ;
  wire \rgb_g_m0_reg[9]_i_1_n_3 ;
  wire [14:1]rgb_g_m1;
  wire [14:1]rgb_g_m10;
  wire rgb_g_m10__21_carry__0_i_1_n_0;
  wire rgb_g_m10__21_carry__0_i_2_n_0;
  wire rgb_g_m10__21_carry__0_i_3_n_0;
  wire rgb_g_m10__21_carry__0_i_4_n_0;
  wire rgb_g_m10__21_carry__0_i_5_n_0;
  wire rgb_g_m10__21_carry__0_i_6_n_0;
  wire rgb_g_m10__21_carry__0_i_7_n_0;
  wire rgb_g_m10__21_carry__0_n_0;
  wire rgb_g_m10__21_carry__0_n_1;
  wire rgb_g_m10__21_carry__0_n_2;
  wire rgb_g_m10__21_carry__0_n_3;
  wire rgb_g_m10__21_carry__1_i_1_n_0;
  wire rgb_g_m10__21_carry__1_i_2_n_0;
  wire rgb_g_m10__21_carry__1_i_3_n_0;
  wire rgb_g_m10__21_carry__1_i_4_n_0;
  wire rgb_g_m10__21_carry__1_i_5_n_0;
  wire rgb_g_m10__21_carry__1_i_6_n_0;
  wire rgb_g_m10__21_carry__1_i_7_n_0;
  wire rgb_g_m10__21_carry__1_i_8_n_0;
  wire rgb_g_m10__21_carry__1_n_0;
  wire rgb_g_m10__21_carry__1_n_1;
  wire rgb_g_m10__21_carry__1_n_2;
  wire rgb_g_m10__21_carry__1_n_3;
  wire rgb_g_m10__21_carry__2_i_1_n_0;
  wire rgb_g_m10__21_carry_i_1_n_0;
  wire rgb_g_m10__21_carry_i_2_n_0;
  wire rgb_g_m10__21_carry_i_3_n_0;
  wire rgb_g_m10__21_carry_n_0;
  wire rgb_g_m10__21_carry_n_1;
  wire rgb_g_m10__21_carry_n_2;
  wire rgb_g_m10__21_carry_n_3;
  wire rgb_g_m10_carry__0_i_1_n_0;
  wire rgb_g_m10_carry__0_i_2_n_0;
  wire rgb_g_m10_carry__0_i_3_n_0;
  wire rgb_g_m10_carry__0_i_4_n_0;
  wire rgb_g_m10_carry__0_n_0;
  wire rgb_g_m10_carry__0_n_1;
  wire rgb_g_m10_carry__0_n_2;
  wire rgb_g_m10_carry__0_n_3;
  wire rgb_g_m10_carry__0_n_4;
  wire rgb_g_m10_carry__0_n_5;
  wire rgb_g_m10_carry__0_n_6;
  wire rgb_g_m10_carry__0_n_7;
  wire rgb_g_m10_carry__1_i_1_n_0;
  wire rgb_g_m10_carry__1_i_2_n_0;
  wire rgb_g_m10_carry__1_n_1;
  wire rgb_g_m10_carry__1_n_3;
  wire rgb_g_m10_carry__1_n_6;
  wire rgb_g_m10_carry__1_n_7;
  wire rgb_g_m10_carry_i_1_n_0;
  wire rgb_g_m10_carry_i_2_n_0;
  wire rgb_g_m10_carry_i_3_n_0;
  wire rgb_g_m10_carry_n_0;
  wire rgb_g_m10_carry_n_1;
  wire rgb_g_m10_carry_n_2;
  wire rgb_g_m10_carry_n_3;
  wire rgb_g_m10_carry_n_4;
  wire rgb_g_m10_carry_n_5;
  wire [14:2]rgb_g_m2;
  wire [14:2]rgb_g_m20;
  wire rgb_g_m20__19_carry__0_i_1_n_0;
  wire rgb_g_m20__19_carry__0_i_2_n_0;
  wire rgb_g_m20__19_carry__0_i_3_n_0;
  wire rgb_g_m20__19_carry__0_i_4_n_0;
  wire rgb_g_m20__19_carry__0_n_0;
  wire rgb_g_m20__19_carry__0_n_1;
  wire rgb_g_m20__19_carry__0_n_2;
  wire rgb_g_m20__19_carry__0_n_3;
  wire rgb_g_m20__19_carry__0_n_4;
  wire rgb_g_m20__19_carry__0_n_5;
  wire rgb_g_m20__19_carry__0_n_6;
  wire rgb_g_m20__19_carry__0_n_7;
  wire rgb_g_m20__19_carry__1_i_1_n_0;
  wire rgb_g_m20__19_carry__1_i_2_n_0;
  wire rgb_g_m20__19_carry__1_n_1;
  wire rgb_g_m20__19_carry__1_n_3;
  wire rgb_g_m20__19_carry__1_n_6;
  wire rgb_g_m20__19_carry__1_n_7;
  wire rgb_g_m20__19_carry_i_1_n_0;
  wire rgb_g_m20__19_carry_i_2_n_0;
  wire rgb_g_m20__19_carry_i_3_n_0;
  wire rgb_g_m20__19_carry_n_0;
  wire rgb_g_m20__19_carry_n_1;
  wire rgb_g_m20__19_carry_n_2;
  wire rgb_g_m20__19_carry_n_3;
  wire rgb_g_m20__19_carry_n_4;
  wire rgb_g_m20__19_carry_n_5;
  wire rgb_g_m20__19_carry_n_6;
  wire rgb_g_m20__41_carry__0_i_1_n_0;
  wire rgb_g_m20__41_carry__0_i_2_n_0;
  wire rgb_g_m20__41_carry__0_i_3_n_0;
  wire rgb_g_m20__41_carry__0_i_4_n_0;
  wire rgb_g_m20__41_carry__0_i_5_n_0;
  wire rgb_g_m20__41_carry__0_i_6_n_0;
  wire rgb_g_m20__41_carry__0_i_7_n_0;
  wire rgb_g_m20__41_carry__0_i_8_n_0;
  wire rgb_g_m20__41_carry__0_n_0;
  wire rgb_g_m20__41_carry__0_n_1;
  wire rgb_g_m20__41_carry__0_n_2;
  wire rgb_g_m20__41_carry__0_n_3;
  wire rgb_g_m20__41_carry__1_i_1_n_0;
  wire rgb_g_m20__41_carry__1_i_2_n_0;
  wire rgb_g_m20__41_carry__1_i_3_n_0;
  wire rgb_g_m20__41_carry__1_i_4_n_0;
  wire rgb_g_m20__41_carry__1_i_5_n_0;
  wire rgb_g_m20__41_carry__1_i_6_n_0;
  wire rgb_g_m20__41_carry__1_i_7_n_0;
  wire rgb_g_m20__41_carry__1_n_1;
  wire rgb_g_m20__41_carry__1_n_2;
  wire rgb_g_m20__41_carry__1_n_3;
  wire rgb_g_m20__41_carry_i_1_n_0;
  wire rgb_g_m20__41_carry_i_2_n_0;
  wire rgb_g_m20__41_carry_i_3_n_0;
  wire rgb_g_m20__41_carry_i_4_n_0;
  wire rgb_g_m20__41_carry_n_0;
  wire rgb_g_m20__41_carry_n_1;
  wire rgb_g_m20__41_carry_n_2;
  wire rgb_g_m20__41_carry_n_3;
  wire rgb_g_m20_carry__0_i_1_n_0;
  wire rgb_g_m20_carry__0_i_2_n_0;
  wire rgb_g_m20_carry__0_i_3_n_0;
  wire rgb_g_m20_carry__0_i_4_n_0;
  wire rgb_g_m20_carry__0_n_0;
  wire rgb_g_m20_carry__0_n_1;
  wire rgb_g_m20_carry__0_n_2;
  wire rgb_g_m20_carry__0_n_3;
  wire rgb_g_m20_carry__0_n_4;
  wire rgb_g_m20_carry__0_n_5;
  wire rgb_g_m20_carry__0_n_6;
  wire rgb_g_m20_carry__0_n_7;
  wire rgb_g_m20_carry__1_i_1_n_0;
  wire rgb_g_m20_carry__1_i_2_n_0;
  wire rgb_g_m20_carry__1_n_1;
  wire rgb_g_m20_carry__1_n_3;
  wire rgb_g_m20_carry__1_n_6;
  wire rgb_g_m20_carry__1_n_7;
  wire rgb_g_m20_carry_i_1_n_0;
  wire rgb_g_m20_carry_i_2_n_0;
  wire rgb_g_m20_carry_i_3_n_0;
  wire rgb_g_m20_carry_n_0;
  wire rgb_g_m20_carry_n_1;
  wire rgb_g_m20_carry_n_2;
  wire rgb_g_m20_carry_n_3;
  wire rgb_g_m20_carry_n_4;
  wire rgb_g_m20_carry_n_5;
  wire rgb_g_m20_carry_n_7;
  wire [14:1]rgb_r_m0;
  wire [14:5]rgb_r_m00;
  wire \rgb_r_m0[8]_i_2_n_0 ;
  wire \rgb_r_m0[8]_i_3_n_0 ;
  wire \rgb_r_m0[8]_i_4_n_0 ;
  wire \rgb_r_m0_reg[12]_i_1_n_0 ;
  wire \rgb_r_m0_reg[12]_i_1_n_1 ;
  wire \rgb_r_m0_reg[12]_i_1_n_2 ;
  wire \rgb_r_m0_reg[12]_i_1_n_3 ;
  wire \rgb_r_m0_reg[8]_i_1_n_0 ;
  wire \rgb_r_m0_reg[8]_i_1_n_1 ;
  wire \rgb_r_m0_reg[8]_i_1_n_2 ;
  wire \rgb_r_m0_reg[8]_i_1_n_3 ;
  wire [13:2]rgb_r_m1;
  wire [13:2]rgb_r_m10;
  wire rgb_r_m10__19_carry__0_i_1_n_0;
  wire rgb_r_m10__19_carry__0_i_2_n_0;
  wire rgb_r_m10__19_carry__0_i_3_n_0;
  wire rgb_r_m10__19_carry__0_i_4_n_0;
  wire rgb_r_m10__19_carry__0_n_0;
  wire rgb_r_m10__19_carry__0_n_1;
  wire rgb_r_m10__19_carry__0_n_2;
  wire rgb_r_m10__19_carry__0_n_3;
  wire rgb_r_m10__19_carry__1_i_1_n_0;
  wire rgb_r_m10__19_carry__1_n_3;
  wire rgb_r_m10__19_carry_i_1_n_0;
  wire rgb_r_m10__19_carry_i_2_n_0;
  wire rgb_r_m10__19_carry_i_3_n_0;
  wire rgb_r_m10__19_carry_n_0;
  wire rgb_r_m10__19_carry_n_1;
  wire rgb_r_m10__19_carry_n_2;
  wire rgb_r_m10__19_carry_n_3;
  wire rgb_r_m10_carry__0_i_1_n_0;
  wire rgb_r_m10_carry__0_i_2_n_0;
  wire rgb_r_m10_carry__0_i_3_n_0;
  wire rgb_r_m10_carry__0_i_4_n_0;
  wire rgb_r_m10_carry__0_n_0;
  wire rgb_r_m10_carry__0_n_1;
  wire rgb_r_m10_carry__0_n_2;
  wire rgb_r_m10_carry__0_n_3;
  wire rgb_r_m10_carry__0_n_4;
  wire rgb_r_m10_carry__0_n_5;
  wire rgb_r_m10_carry__0_n_6;
  wire rgb_r_m10_carry__0_n_7;
  wire rgb_r_m10_carry__1_i_1_n_0;
  wire rgb_r_m10_carry__1_i_2_n_0;
  wire rgb_r_m10_carry__1_n_2;
  wire rgb_r_m10_carry__1_n_3;
  wire rgb_r_m10_carry__1_n_5;
  wire rgb_r_m10_carry__1_n_6;
  wire rgb_r_m10_carry__1_n_7;
  wire rgb_r_m10_carry_i_1_n_0;
  wire rgb_r_m10_carry_i_2_n_0;
  wire rgb_r_m10_carry_i_3_n_0;
  wire rgb_r_m10_carry_n_0;
  wire rgb_r_m10_carry_n_1;
  wire rgb_r_m10_carry_n_2;
  wire rgb_r_m10_carry_n_3;
  wire rgb_r_m10_carry_n_4;
  wire [14:4]rgb_r_m2;
  wire [14:4]rgb_r_m20;
  wire rgb_r_m20__19_carry__0_i_1_n_0;
  wire rgb_r_m20__19_carry__0_i_2_n_0;
  wire rgb_r_m20__19_carry__0_i_3_n_0;
  wire rgb_r_m20__19_carry__0_i_4_n_0;
  wire rgb_r_m20__19_carry__0_n_0;
  wire rgb_r_m20__19_carry__0_n_1;
  wire rgb_r_m20__19_carry__0_n_2;
  wire rgb_r_m20__19_carry__0_n_3;
  wire rgb_r_m20__19_carry__1_i_1_n_0;
  wire rgb_r_m20__19_carry__1_n_3;
  wire rgb_r_m20__19_carry_i_1_n_0;
  wire rgb_r_m20__19_carry_i_2_n_0;
  wire rgb_r_m20__19_carry_i_3_n_0;
  wire rgb_r_m20__19_carry_n_0;
  wire rgb_r_m20__19_carry_n_1;
  wire rgb_r_m20__19_carry_n_2;
  wire rgb_r_m20__19_carry_n_3;
  wire rgb_r_m20_carry__0_i_1_n_0;
  wire rgb_r_m20_carry__0_i_2_n_0;
  wire rgb_r_m20_carry__0_i_3_n_0;
  wire rgb_r_m20_carry__0_i_4_n_0;
  wire rgb_r_m20_carry__0_n_0;
  wire rgb_r_m20_carry__0_n_1;
  wire rgb_r_m20_carry__0_n_2;
  wire rgb_r_m20_carry__0_n_3;
  wire rgb_r_m20_carry__0_n_4;
  wire rgb_r_m20_carry__0_n_5;
  wire rgb_r_m20_carry__0_n_6;
  wire rgb_r_m20_carry__0_n_7;
  wire rgb_r_m20_carry__1_i_1_n_0;
  wire rgb_r_m20_carry__1_i_2_n_0;
  wire rgb_r_m20_carry__1_n_2;
  wire rgb_r_m20_carry__1_n_3;
  wire rgb_r_m20_carry__1_n_5;
  wire rgb_r_m20_carry__1_n_6;
  wire rgb_r_m20_carry__1_n_7;
  wire rgb_r_m20_carry_i_1_n_0;
  wire rgb_r_m20_carry_i_2_n_0;
  wire rgb_r_m20_carry_i_3_n_0;
  wire rgb_r_m20_carry_n_0;
  wire rgb_r_m20_carry_n_1;
  wire rgb_r_m20_carry_n_2;
  wire rgb_r_m20_carry_n_3;
  wire rgb_r_m20_carry_n_4;
  wire rgb_r_m20_carry_n_5;
  wire rgb_r_m20_carry_n_6;
  wire rgb_valid;
  wire [1:0]rgb_valid_d;
  wire rgb_vsync;
  wire [1:0]rgb_vsync_d;
  wire \rgb_vsync_d[2]_i_1_n_0 ;
  wire rst_n;
  wire [23:0]ycbcr_data;
  wire ycbcr_valid;
  wire ycbcr_vsync;
  wire [3:0]NLW_img_cb00_carry_O_UNCONNECTED;
  wire [3:0]NLW_img_cb00_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_img_cb00_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_img_cr00_carry_O_UNCONNECTED;
  wire [1:0]NLW_img_cr00_carry__0_O_UNCONNECTED;
  wire [3:1]NLW_img_cr00_carry__2_CO_UNCONNECTED;
  wire [3:2]NLW_img_cr00_carry__2_O_UNCONNECTED;
  wire [3:0]NLW_img_y00__1_carry_O_UNCONNECTED;
  wire [3:0]NLW_img_y00__1_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_img_y00__1_carry__2_CO_UNCONNECTED;
  wire [3:1]NLW_rgb_b_m00_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_rgb_b_m00_carry__1_O_UNCONNECTED;
  wire [3:1]NLW_rgb_b_m10__25_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_rgb_b_m10__25_carry__1_O_UNCONNECTED;
  wire [3:2]NLW_rgb_b_m10_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_rgb_b_m10_carry__1_O_UNCONNECTED;
  wire [3:0]\NLW_rgb_b_m2_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_rgb_b_m2_reg[12]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_rgb_g_m0_reg[15]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_rgb_g_m0_reg[15]_i_1_O_UNCONNECTED ;
  wire [3:0]NLW_rgb_g_m10__21_carry__2_CO_UNCONNECTED;
  wire [3:1]NLW_rgb_g_m10__21_carry__2_O_UNCONNECTED;
  wire [0:0]NLW_rgb_g_m10_carry_O_UNCONNECTED;
  wire [3:1]NLW_rgb_g_m10_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_rgb_g_m10_carry__1_O_UNCONNECTED;
  wire [0:0]NLW_rgb_g_m20__19_carry_O_UNCONNECTED;
  wire [3:1]NLW_rgb_g_m20__19_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_rgb_g_m20__19_carry__1_O_UNCONNECTED;
  wire [3:3]NLW_rgb_g_m20__41_carry__1_CO_UNCONNECTED;
  wire [3:1]NLW_rgb_g_m20_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_rgb_g_m20_carry__1_O_UNCONNECTED;
  wire [3:0]\NLW_rgb_r_m0_reg[14]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_rgb_r_m0_reg[14]_i_1_O_UNCONNECTED ;
  wire [3:1]NLW_rgb_r_m10__19_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_rgb_r_m10__19_carry__1_O_UNCONNECTED;
  wire [0:0]NLW_rgb_r_m10_carry_O_UNCONNECTED;
  wire [3:2]NLW_rgb_r_m10_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_rgb_r_m10_carry__1_O_UNCONNECTED;
  wire [3:1]NLW_rgb_r_m20__19_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_rgb_r_m20__19_carry__1_O_UNCONNECTED;
  wire [3:2]NLW_rgb_r_m20_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_rgb_r_m20_carry__1_O_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 img_cb00_carry
       (.CI(1'b0),
        .CO({img_cb00_carry_n_0,img_cb00_carry_n_1,img_cb00_carry_n_2,img_cb00_carry_n_3}),
        .CYINIT(1'b1),
        .DI({img_cb00_carry_i_1_n_0,img_cb00_carry_i_2_n_0,img_cb00_carry_i_3_n_0,rgb_g_m0[0]}),
        .O(NLW_img_cb00_carry_O_UNCONNECTED[3:0]),
        .S({img_cb00_carry_i_4_n_0,img_cb00_carry_i_5_n_0,img_cb00_carry_i_6_n_0,img_cb00_carry_i_7_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 img_cb00_carry__0
       (.CI(img_cb00_carry_n_0),
        .CO({img_cb00_carry__0_n_0,img_cb00_carry__0_n_1,img_cb00_carry__0_n_2,img_cb00_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({img_cb00_carry__0_i_1_n_0,img_cb00_carry__0_i_2_n_0,img_cb00_carry__0_i_3_n_0,img_cb00_carry__0_i_4_n_0}),
        .O(NLW_img_cb00_carry__0_O_UNCONNECTED[3:0]),
        .S({img_cb00_carry__0_i_5_n_0,img_cb00_carry__0_i_6_n_0,img_cb00_carry__0_i_7_n_0,img_cb00_carry__0_i_8_n_0}));
  (* HLUTNM = "lutpair30" *) 
  LUT3 #(
    .INIT(8'h71)) 
    img_cb00_carry__0_i_1
       (.I0(rgb_r_m1[6]),
        .I1(rgb_g_m1[6]),
        .I2(rgb_b_m1[6]),
        .O(img_cb00_carry__0_i_1_n_0));
  (* HLUTNM = "lutpair29" *) 
  LUT3 #(
    .INIT(8'h71)) 
    img_cb00_carry__0_i_2
       (.I0(rgb_r_m1[5]),
        .I1(rgb_g_m1[5]),
        .I2(rgb_b_m1[5]),
        .O(img_cb00_carry__0_i_2_n_0));
  (* HLUTNM = "lutpair28" *) 
  LUT3 #(
    .INIT(8'h71)) 
    img_cb00_carry__0_i_3
       (.I0(rgb_r_m1[4]),
        .I1(rgb_g_m1[4]),
        .I2(rgb_b_m1[4]),
        .O(img_cb00_carry__0_i_3_n_0));
  (* HLUTNM = "lutpair38" *) 
  LUT2 #(
    .INIT(4'h1)) 
    img_cb00_carry__0_i_4
       (.I0(rgb_r_m1[3]),
        .I1(rgb_g_m1[3]),
        .O(img_cb00_carry__0_i_4_n_0));
  (* HLUTNM = "lutpair31" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    img_cb00_carry__0_i_5
       (.I0(rgb_r_m1[7]),
        .I1(rgb_g_m1[7]),
        .I2(rgb_b_m1[7]),
        .I3(img_cb00_carry__0_i_1_n_0),
        .O(img_cb00_carry__0_i_5_n_0));
  (* HLUTNM = "lutpair30" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    img_cb00_carry__0_i_6
       (.I0(rgb_r_m1[6]),
        .I1(rgb_g_m1[6]),
        .I2(rgb_b_m1[6]),
        .I3(img_cb00_carry__0_i_2_n_0),
        .O(img_cb00_carry__0_i_6_n_0));
  (* HLUTNM = "lutpair29" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    img_cb00_carry__0_i_7
       (.I0(rgb_r_m1[5]),
        .I1(rgb_g_m1[5]),
        .I2(rgb_b_m1[5]),
        .I3(img_cb00_carry__0_i_3_n_0),
        .O(img_cb00_carry__0_i_7_n_0));
  (* HLUTNM = "lutpair28" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    img_cb00_carry__0_i_8
       (.I0(rgb_r_m1[4]),
        .I1(rgb_g_m1[4]),
        .I2(rgb_b_m1[4]),
        .I3(img_cb00_carry__0_i_4_n_0),
        .O(img_cb00_carry__0_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 img_cb00_carry__1
       (.CI(img_cb00_carry__0_n_0),
        .CO({img_cb00_carry__1_n_0,img_cb00_carry__1_n_1,img_cb00_carry__1_n_2,img_cb00_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({img_cb00_carry__1_i_1_n_0,img_cb00_carry__1_i_2_n_0,img_cb00_carry__1_i_3_n_0,img_cb00_carry__1_i_4_n_0}),
        .O({img_cb00_carry__1_n_4,img_cb00_carry__1_n_5,img_cb00_carry__1_n_6,img_cb00_carry__1_n_7}),
        .S({img_cb00_carry__1_i_5_n_0,img_cb00_carry__1_i_6_n_0,img_cb00_carry__1_i_7_n_0,img_cb00_carry__1_i_8_n_0}));
  (* HLUTNM = "lutpair34" *) 
  LUT3 #(
    .INIT(8'h71)) 
    img_cb00_carry__1_i_1
       (.I0(rgb_r_m1[10]),
        .I1(rgb_g_m1[10]),
        .I2(rgb_b_m1[10]),
        .O(img_cb00_carry__1_i_1_n_0));
  (* HLUTNM = "lutpair33" *) 
  LUT3 #(
    .INIT(8'h71)) 
    img_cb00_carry__1_i_2
       (.I0(rgb_r_m1[9]),
        .I1(rgb_g_m1[9]),
        .I2(rgb_b_m1[9]),
        .O(img_cb00_carry__1_i_2_n_0));
  (* HLUTNM = "lutpair32" *) 
  LUT3 #(
    .INIT(8'h71)) 
    img_cb00_carry__1_i_3
       (.I0(rgb_r_m1[8]),
        .I1(rgb_g_m1[8]),
        .I2(rgb_b_m1[8]),
        .O(img_cb00_carry__1_i_3_n_0));
  (* HLUTNM = "lutpair31" *) 
  LUT3 #(
    .INIT(8'h71)) 
    img_cb00_carry__1_i_4
       (.I0(rgb_r_m1[7]),
        .I1(rgb_g_m1[7]),
        .I2(rgb_b_m1[7]),
        .O(img_cb00_carry__1_i_4_n_0));
  (* HLUTNM = "lutpair35" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    img_cb00_carry__1_i_5
       (.I0(rgb_r_m1[11]),
        .I1(rgb_g_m1[11]),
        .I2(rgb_b_m1[11]),
        .I3(img_cb00_carry__1_i_1_n_0),
        .O(img_cb00_carry__1_i_5_n_0));
  (* HLUTNM = "lutpair34" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    img_cb00_carry__1_i_6
       (.I0(rgb_r_m1[10]),
        .I1(rgb_g_m1[10]),
        .I2(rgb_b_m1[10]),
        .I3(img_cb00_carry__1_i_2_n_0),
        .O(img_cb00_carry__1_i_6_n_0));
  (* HLUTNM = "lutpair33" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    img_cb00_carry__1_i_7
       (.I0(rgb_r_m1[9]),
        .I1(rgb_g_m1[9]),
        .I2(rgb_b_m1[9]),
        .I3(img_cb00_carry__1_i_3_n_0),
        .O(img_cb00_carry__1_i_7_n_0));
  (* HLUTNM = "lutpair32" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    img_cb00_carry__1_i_8
       (.I0(rgb_r_m1[8]),
        .I1(rgb_g_m1[8]),
        .I2(rgb_b_m1[8]),
        .I3(img_cb00_carry__1_i_4_n_0),
        .O(img_cb00_carry__1_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 img_cb00_carry__2
       (.CI(img_cb00_carry__1_n_0),
        .CO({NLW_img_cb00_carry__2_CO_UNCONNECTED[3],img_cb00_carry__2_n_1,img_cb00_carry__2_n_2,img_cb00_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,img_cb00_carry__2_i_1_n_0,img_cb00_carry__2_i_2_n_0,img_cb00_carry__2_i_3_n_0}),
        .O({img_cb00_carry__2_n_4,img_cb00_carry__2_n_5,img_cb00_carry__2_n_6,img_cb00_carry__2_n_7}),
        .S({img_cb00_carry__2_i_4_n_0,img_cb00_carry__2_i_5_n_0,img_cb00_carry__2_i_6_n_0,img_cb00_carry__2_i_7_n_0}));
  LUT3 #(
    .INIT(8'h71)) 
    img_cb00_carry__2_i_1
       (.I0(rgb_r_m1[13]),
        .I1(rgb_g_m1[13]),
        .I2(rgb_b_m1[13]),
        .O(img_cb00_carry__2_i_1_n_0));
  (* HLUTNM = "lutpair36" *) 
  LUT3 #(
    .INIT(8'h71)) 
    img_cb00_carry__2_i_2
       (.I0(rgb_r_m1[12]),
        .I1(rgb_g_m1[12]),
        .I2(rgb_b_m1[12]),
        .O(img_cb00_carry__2_i_2_n_0));
  (* HLUTNM = "lutpair35" *) 
  LUT3 #(
    .INIT(8'h71)) 
    img_cb00_carry__2_i_3
       (.I0(rgb_r_m1[11]),
        .I1(rgb_g_m1[11]),
        .I2(rgb_b_m1[11]),
        .O(img_cb00_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h4)) 
    img_cb00_carry__2_i_4
       (.I0(rgb_b_m1[14]),
        .I1(rgb_g_m1[14]),
        .O(img_cb00_carry__2_i_4_n_0));
  LUT5 #(
    .INIT(32'h2BD4D42B)) 
    img_cb00_carry__2_i_5
       (.I0(rgb_b_m1[13]),
        .I1(rgb_g_m1[13]),
        .I2(rgb_r_m1[13]),
        .I3(rgb_g_m1[14]),
        .I4(rgb_b_m1[14]),
        .O(img_cb00_carry__2_i_5_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    img_cb00_carry__2_i_6
       (.I0(img_cb00_carry__2_i_2_n_0),
        .I1(rgb_g_m1[13]),
        .I2(rgb_r_m1[13]),
        .I3(rgb_b_m1[13]),
        .O(img_cb00_carry__2_i_6_n_0));
  (* HLUTNM = "lutpair36" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    img_cb00_carry__2_i_7
       (.I0(rgb_r_m1[12]),
        .I1(rgb_g_m1[12]),
        .I2(rgb_b_m1[12]),
        .I3(img_cb00_carry__2_i_3_n_0),
        .O(img_cb00_carry__2_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    img_cb00_carry_i_1
       (.I0(rgb_g_m1[2]),
        .I1(rgb_r_m1[2]),
        .O(img_cb00_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    img_cb00_carry_i_2
       (.I0(rgb_g_m1[1]),
        .I1(rgb_r_m0[1]),
        .O(img_cb00_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    img_cb00_carry_i_3
       (.I0(rgb_g_m0[0]),
        .O(img_cb00_carry_i_3_n_0));
  (* HLUTNM = "lutpair38" *) 
  LUT4 #(
    .INIT(16'h6669)) 
    img_cb00_carry_i_4
       (.I0(rgb_r_m1[3]),
        .I1(rgb_g_m1[3]),
        .I2(rgb_g_m1[2]),
        .I3(rgb_r_m1[2]),
        .O(img_cb00_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    img_cb00_carry_i_5
       (.I0(rgb_g_m1[1]),
        .I1(rgb_r_m0[1]),
        .I2(rgb_r_m1[2]),
        .I3(rgb_g_m1[2]),
        .O(img_cb00_carry_i_5_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    img_cb00_carry_i_6
       (.I0(rgb_g_m0[0]),
        .I1(rgb_r_m0[1]),
        .I2(rgb_g_m1[1]),
        .O(img_cb00_carry_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    img_cb00_carry_i_7
       (.I0(rgb_g_m0[0]),
        .O(img_cb00_carry_i_7_n_0));
  FDCE \img_cb0_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(img_cb00_carry__1_n_5),
        .Q(img_cb0[10]));
  FDCE \img_cb0_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(img_cb00_carry__1_n_4),
        .Q(img_cb0[11]));
  FDCE \img_cb0_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(img_cb00_carry__2_n_7),
        .Q(img_cb0[12]));
  FDCE \img_cb0_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(img_cb00_carry__2_n_6),
        .Q(img_cb0[13]));
  FDCE \img_cb0_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(img_cb00_carry__2_n_5),
        .Q(img_cb0[14]));
  FDCE \img_cb0_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(img_cb00_carry__2_n_4),
        .Q(img_cb0[15]));
  FDCE \img_cb0_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(img_cb00_carry__1_n_7),
        .Q(img_cb0[8]));
  FDCE \img_cb0_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(img_cb00_carry__1_n_6),
        .Q(img_cb0[9]));
  FDCE \img_cb1_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(img_cb0[8]),
        .Q(img_cb1[0]));
  FDCE \img_cb1_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(img_cb0[9]),
        .Q(img_cb1[1]));
  FDCE \img_cb1_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(img_cb0[10]),
        .Q(img_cb1[2]));
  FDCE \img_cb1_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(img_cb0[11]),
        .Q(img_cb1[3]));
  FDCE \img_cb1_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(img_cb0[12]),
        .Q(img_cb1[4]));
  FDCE \img_cb1_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(img_cb0[13]),
        .Q(img_cb1[5]));
  FDCE \img_cb1_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(img_cb0[14]),
        .Q(img_cb1[6]));
  FDCE \img_cb1_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(img_cb0[15]),
        .Q(img_cb1[7]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 img_cr00_carry
       (.CI(1'b0),
        .CO({img_cr00_carry_n_0,img_cr00_carry_n_1,img_cr00_carry_n_2,img_cr00_carry_n_3}),
        .CYINIT(1'b1),
        .DI({img_cr00_carry_i_1_n_0,img_cr00_carry_i_2_n_0,img_cr00_carry_i_3_n_0,img_cr00_carry_i_4_n_0}),
        .O(NLW_img_cr00_carry_O_UNCONNECTED[3:0]),
        .S({img_cr00_carry_i_5_n_0,img_cr00_carry_i_6_n_0,img_cr00_carry_i_7_n_0,img_cr00_carry_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 img_cr00_carry__0
       (.CI(img_cr00_carry_n_0),
        .CO({img_cr00_carry__0_n_0,img_cr00_carry__0_n_1,img_cr00_carry__0_n_2,img_cr00_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({img_cr00_carry__0_i_1_n_0,img_cr00_carry__0_i_2_n_0,img_cr00_carry__0_i_3_n_0,img_cr00_carry__0_i_4_n_0}),
        .O({img_cr00_carry__0_n_4,img_cr00_carry__0_n_5,NLW_img_cr00_carry__0_O_UNCONNECTED[1:0]}),
        .S({img_cr00_carry__0_i_5_n_0,img_cr00_carry__0_i_6_n_0,img_cr00_carry__0_i_7_n_0,img_cr00_carry__0_i_8_n_0}));
  (* HLUTNM = "lutpair12" *) 
  LUT3 #(
    .INIT(8'h71)) 
    img_cr00_carry__0_i_1
       (.I0(rgb_g_m2[8]),
        .I1(rgb_b_m2[8]),
        .I2(rgb_r_m2[8]),
        .O(img_cr00_carry__0_i_1_n_0));
  (* HLUTNM = "lutpair11" *) 
  LUT3 #(
    .INIT(8'h71)) 
    img_cr00_carry__0_i_2
       (.I0(rgb_g_m2[7]),
        .I1(rgb_b_m2[7]),
        .I2(rgb_r_m2[7]),
        .O(img_cr00_carry__0_i_2_n_0));
  (* HLUTNM = "lutpair10" *) 
  LUT3 #(
    .INIT(8'h71)) 
    img_cr00_carry__0_i_3
       (.I0(rgb_g_m2[6]),
        .I1(rgb_b_m2[6]),
        .I2(rgb_r_m2[6]),
        .O(img_cr00_carry__0_i_3_n_0));
  (* HLUTNM = "lutpair9" *) 
  LUT3 #(
    .INIT(8'h71)) 
    img_cr00_carry__0_i_4
       (.I0(rgb_g_m2[5]),
        .I1(rgb_b_m2[5]),
        .I2(rgb_r_m2[5]),
        .O(img_cr00_carry__0_i_4_n_0));
  (* HLUTNM = "lutpair13" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    img_cr00_carry__0_i_5
       (.I0(rgb_g_m2[9]),
        .I1(rgb_b_m2[9]),
        .I2(rgb_r_m2[9]),
        .I3(img_cr00_carry__0_i_1_n_0),
        .O(img_cr00_carry__0_i_5_n_0));
  (* HLUTNM = "lutpair12" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    img_cr00_carry__0_i_6
       (.I0(rgb_g_m2[8]),
        .I1(rgb_b_m2[8]),
        .I2(rgb_r_m2[8]),
        .I3(img_cr00_carry__0_i_2_n_0),
        .O(img_cr00_carry__0_i_6_n_0));
  (* HLUTNM = "lutpair11" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    img_cr00_carry__0_i_7
       (.I0(rgb_g_m2[7]),
        .I1(rgb_b_m2[7]),
        .I2(rgb_r_m2[7]),
        .I3(img_cr00_carry__0_i_3_n_0),
        .O(img_cr00_carry__0_i_7_n_0));
  (* HLUTNM = "lutpair10" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    img_cr00_carry__0_i_8
       (.I0(rgb_g_m2[6]),
        .I1(rgb_b_m2[6]),
        .I2(rgb_r_m2[6]),
        .I3(img_cr00_carry__0_i_4_n_0),
        .O(img_cr00_carry__0_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 img_cr00_carry__1
       (.CI(img_cr00_carry__0_n_0),
        .CO({img_cr00_carry__1_n_0,img_cr00_carry__1_n_1,img_cr00_carry__1_n_2,img_cr00_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({img_cr00_carry__1_i_1_n_0,img_cr00_carry__1_i_2_n_0,img_cr00_carry__1_i_3_n_0,img_cr00_carry__1_i_4_n_0}),
        .O({img_cr00_carry__1_n_4,img_cr00_carry__1_n_5,img_cr00_carry__1_n_6,img_cr00_carry__1_n_7}),
        .S({img_cr00_carry__1_i_5_n_0,img_cr00_carry__1_i_6_n_0,img_cr00_carry__1_i_7_n_0,img_cr00_carry__1_i_8_n_0}));
  LUT3 #(
    .INIT(8'h71)) 
    img_cr00_carry__1_i_1
       (.I0(rgb_g_m2[12]),
        .I1(rgb_b_m2[12]),
        .I2(rgb_r_m2[12]),
        .O(img_cr00_carry__1_i_1_n_0));
  (* HLUTNM = "lutpair15" *) 
  LUT3 #(
    .INIT(8'h71)) 
    img_cr00_carry__1_i_2
       (.I0(rgb_g_m2[11]),
        .I1(rgb_b_m2[11]),
        .I2(rgb_r_m2[11]),
        .O(img_cr00_carry__1_i_2_n_0));
  (* HLUTNM = "lutpair14" *) 
  LUT3 #(
    .INIT(8'h71)) 
    img_cr00_carry__1_i_3
       (.I0(rgb_g_m2[10]),
        .I1(rgb_b_m2[10]),
        .I2(rgb_r_m2[10]),
        .O(img_cr00_carry__1_i_3_n_0));
  (* HLUTNM = "lutpair13" *) 
  LUT3 #(
    .INIT(8'h71)) 
    img_cr00_carry__1_i_4
       (.I0(rgb_g_m2[9]),
        .I1(rgb_b_m2[9]),
        .I2(rgb_r_m2[9]),
        .O(img_cr00_carry__1_i_4_n_0));
  LUT5 #(
    .INIT(32'h2BD4D42B)) 
    img_cr00_carry__1_i_5
       (.I0(rgb_r_m2[12]),
        .I1(rgb_b_m2[12]),
        .I2(rgb_g_m2[12]),
        .I3(rgb_g_m2[13]),
        .I4(rgb_r_m2[13]),
        .O(img_cr00_carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    img_cr00_carry__1_i_6
       (.I0(img_cr00_carry__1_i_2_n_0),
        .I1(rgb_b_m2[12]),
        .I2(rgb_g_m2[12]),
        .I3(rgb_r_m2[12]),
        .O(img_cr00_carry__1_i_6_n_0));
  (* HLUTNM = "lutpair15" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    img_cr00_carry__1_i_7
       (.I0(rgb_g_m2[11]),
        .I1(rgb_b_m2[11]),
        .I2(rgb_r_m2[11]),
        .I3(img_cr00_carry__1_i_3_n_0),
        .O(img_cr00_carry__1_i_7_n_0));
  (* HLUTNM = "lutpair14" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    img_cr00_carry__1_i_8
       (.I0(rgb_g_m2[10]),
        .I1(rgb_b_m2[10]),
        .I2(rgb_r_m2[10]),
        .I3(img_cr00_carry__1_i_4_n_0),
        .O(img_cr00_carry__1_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 img_cr00_carry__2
       (.CI(img_cr00_carry__1_n_0),
        .CO({NLW_img_cr00_carry__2_CO_UNCONNECTED[3:1],img_cr00_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,img_cr00_carry__2_i_1_n_0}),
        .O({NLW_img_cr00_carry__2_O_UNCONNECTED[3:2],img_cr00_carry__2_n_6,img_cr00_carry__2_n_7}),
        .S({1'b0,1'b0,img_cr00_carry__2_i_2_n_0,img_cr00_carry__2_i_3_n_0}));
  LUT2 #(
    .INIT(4'hD)) 
    img_cr00_carry__2_i_1
       (.I0(rgb_g_m2[13]),
        .I1(rgb_r_m2[13]),
        .O(img_cr00_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    img_cr00_carry__2_i_2
       (.I0(rgb_g_m2[14]),
        .I1(rgb_r_m2[14]),
        .O(img_cr00_carry__2_i_2_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    img_cr00_carry__2_i_3
       (.I0(rgb_r_m2[13]),
        .I1(rgb_g_m2[13]),
        .I2(rgb_g_m2[14]),
        .I3(rgb_r_m2[14]),
        .O(img_cr00_carry__2_i_3_n_0));
  (* HLUTNM = "lutpair8" *) 
  LUT3 #(
    .INIT(8'h71)) 
    img_cr00_carry_i_1
       (.I0(rgb_g_m2[4]),
        .I1(rgb_b_m2[4]),
        .I2(rgb_r_m2[4]),
        .O(img_cr00_carry_i_1_n_0));
  (* HLUTNM = "lutpair37" *) 
  LUT2 #(
    .INIT(4'h1)) 
    img_cr00_carry_i_2
       (.I0(rgb_g_m2[3]),
        .I1(rgb_b_m2[3]),
        .O(img_cr00_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    img_cr00_carry_i_3
       (.I0(rgb_b_m0[1]),
        .I1(rgb_g_m2[2]),
        .O(img_cr00_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    img_cr00_carry_i_4
       (.I0(rgb_b_m0[0]),
        .I1(rgb_g_m0[0]),
        .O(img_cr00_carry_i_4_n_0));
  (* HLUTNM = "lutpair9" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    img_cr00_carry_i_5
       (.I0(rgb_g_m2[5]),
        .I1(rgb_b_m2[5]),
        .I2(rgb_r_m2[5]),
        .I3(img_cr00_carry_i_1_n_0),
        .O(img_cr00_carry_i_5_n_0));
  (* HLUTNM = "lutpair8" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    img_cr00_carry_i_6
       (.I0(rgb_g_m2[4]),
        .I1(rgb_b_m2[4]),
        .I2(rgb_r_m2[4]),
        .I3(img_cr00_carry_i_2_n_0),
        .O(img_cr00_carry_i_6_n_0));
  (* HLUTNM = "lutpair37" *) 
  LUT4 #(
    .INIT(16'h6669)) 
    img_cr00_carry_i_7
       (.I0(rgb_g_m2[3]),
        .I1(rgb_b_m2[3]),
        .I2(rgb_b_m0[1]),
        .I3(rgb_g_m2[2]),
        .O(img_cr00_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    img_cr00_carry_i_8
       (.I0(rgb_b_m0[0]),
        .I1(rgb_g_m0[0]),
        .I2(rgb_g_m2[2]),
        .I3(rgb_b_m0[1]),
        .O(img_cr00_carry_i_8_n_0));
  FDCE \img_cr0_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(img_cr00_carry__1_n_7),
        .Q(p_0_in[2]));
  FDCE \img_cr0_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(img_cr00_carry__1_n_6),
        .Q(p_0_in[3]));
  FDCE \img_cr0_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(img_cr00_carry__1_n_5),
        .Q(p_0_in[4]));
  FDCE \img_cr0_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(img_cr00_carry__1_n_4),
        .Q(p_0_in[5]));
  FDCE \img_cr0_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(img_cr00_carry__2_n_7),
        .Q(p_0_in[6]));
  FDCE \img_cr0_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(img_cr00_carry__2_n_6),
        .Q(p_0_in[7]));
  FDCE \img_cr0_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(img_cr00_carry__0_n_5),
        .Q(p_0_in[0]));
  FDCE \img_cr0_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(img_cr00_carry__0_n_4),
        .Q(p_0_in[1]));
  FDCE \img_cr1_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(p_0_in[0]),
        .Q(img_cr1[0]));
  FDCE \img_cr1_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(p_0_in[1]),
        .Q(img_cr1[1]));
  FDCE \img_cr1_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(p_0_in[2]),
        .Q(img_cr1[2]));
  FDCE \img_cr1_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(p_0_in[3]),
        .Q(img_cr1[3]));
  FDCE \img_cr1_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(p_0_in[4]),
        .Q(img_cr1[4]));
  FDCE \img_cr1_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(p_0_in[5]),
        .Q(img_cr1[5]));
  FDCE \img_cr1_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(p_0_in[6]),
        .Q(img_cr1[6]));
  FDCE \img_cr1_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(p_0_in[7]),
        .Q(img_cr1[7]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 img_y00__1_carry
       (.CI(1'b0),
        .CO({img_y00__1_carry_n_0,img_y00__1_carry_n_1,img_y00__1_carry_n_2,img_y00__1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({img_y00__1_carry_i_1_n_0,img_y00__1_carry_i_2_n_0,img_y00__1_carry_i_3_n_0,1'b0}),
        .O(NLW_img_y00__1_carry_O_UNCONNECTED[3:0]),
        .S({img_y00__1_carry_i_4_n_0,img_y00__1_carry_i_5_n_0,img_y00__1_carry_i_6_n_0,img_y00__1_carry_i_7_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 img_y00__1_carry__0
       (.CI(img_y00__1_carry_n_0),
        .CO({img_y00__1_carry__0_n_0,img_y00__1_carry__0_n_1,img_y00__1_carry__0_n_2,img_y00__1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({img_y00__1_carry__0_i_1_n_0,img_y00__1_carry__0_i_2_n_0,img_y00__1_carry__0_i_3_n_0,img_y00__1_carry__0_i_4_n_0}),
        .O(NLW_img_y00__1_carry__0_O_UNCONNECTED[3:0]),
        .S({img_y00__1_carry__0_i_5_n_0,img_y00__1_carry__0_i_6_n_0,img_y00__1_carry__0_i_7_n_0,img_y00__1_carry__0_i_8_n_0}));
  (* HLUTNM = "lutpair22" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    img_y00__1_carry__0_i_1
       (.I0(rgb_g_m0[6]),
        .I1(rgb_b_m0[6]),
        .I2(rgb_r_m0[6]),
        .O(img_y00__1_carry__0_i_1_n_0));
  (* HLUTNM = "lutpair21" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    img_y00__1_carry__0_i_2
       (.I0(rgb_data_d[13]),
        .I1(rgb_b_m0[5]),
        .I2(rgb_r_m0[5]),
        .O(img_y00__1_carry__0_i_2_n_0));
  (* HLUTNM = "lutpair20" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    img_y00__1_carry__0_i_3
       (.I0(rgb_data_d[12]),
        .I1(rgb_b_m0[4]),
        .I2(rgb_data_d[19]),
        .O(img_y00__1_carry__0_i_3_n_0));
  (* HLUTNM = "lutpair19" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    img_y00__1_carry__0_i_4
       (.I0(rgb_data_d[11]),
        .I1(rgb_b_m0[3]),
        .I2(rgb_r_m0[3]),
        .O(img_y00__1_carry__0_i_4_n_0));
  (* HLUTNM = "lutpair23" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    img_y00__1_carry__0_i_5
       (.I0(rgb_g_m0[7]),
        .I1(rgb_b_m0[7]),
        .I2(rgb_r_m0[7]),
        .I3(img_y00__1_carry__0_i_1_n_0),
        .O(img_y00__1_carry__0_i_5_n_0));
  (* HLUTNM = "lutpair22" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    img_y00__1_carry__0_i_6
       (.I0(rgb_g_m0[6]),
        .I1(rgb_b_m0[6]),
        .I2(rgb_r_m0[6]),
        .I3(img_y00__1_carry__0_i_2_n_0),
        .O(img_y00__1_carry__0_i_6_n_0));
  (* HLUTNM = "lutpair21" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    img_y00__1_carry__0_i_7
       (.I0(rgb_data_d[13]),
        .I1(rgb_b_m0[5]),
        .I2(rgb_r_m0[5]),
        .I3(img_y00__1_carry__0_i_3_n_0),
        .O(img_y00__1_carry__0_i_7_n_0));
  (* HLUTNM = "lutpair20" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    img_y00__1_carry__0_i_8
       (.I0(rgb_data_d[12]),
        .I1(rgb_b_m0[4]),
        .I2(rgb_data_d[19]),
        .I3(img_y00__1_carry__0_i_4_n_0),
        .O(img_y00__1_carry__0_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 img_y00__1_carry__1
       (.CI(img_y00__1_carry__0_n_0),
        .CO({img_y00__1_carry__1_n_0,img_y00__1_carry__1_n_1,img_y00__1_carry__1_n_2,img_y00__1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({img_y00__1_carry__1_i_1_n_0,img_y00__1_carry__1_i_2_n_0,img_y00__1_carry__1_i_3_n_0,img_y00__1_carry__1_i_4_n_0}),
        .O({img_y00__1_carry__1_n_4,img_y00__1_carry__1_n_5,img_y00__1_carry__1_n_6,img_y00__1_carry__1_n_7}),
        .S({img_y00__1_carry__1_i_5_n_0,img_y00__1_carry__1_i_6_n_0,img_y00__1_carry__1_i_7_n_0,img_y00__1_carry__1_i_8_n_0}));
  (* HLUTNM = "lutpair26" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    img_y00__1_carry__1_i_1
       (.I0(rgb_g_m0[10]),
        .I1(rgb_b_m0[10]),
        .I2(rgb_r_m0[10]),
        .O(img_y00__1_carry__1_i_1_n_0));
  (* HLUTNM = "lutpair25" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    img_y00__1_carry__1_i_2
       (.I0(rgb_g_m0[9]),
        .I1(rgb_b_m0[9]),
        .I2(rgb_r_m0[9]),
        .O(img_y00__1_carry__1_i_2_n_0));
  (* HLUTNM = "lutpair24" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    img_y00__1_carry__1_i_3
       (.I0(rgb_g_m0[8]),
        .I1(rgb_b_m0[8]),
        .I2(rgb_r_m0[8]),
        .O(img_y00__1_carry__1_i_3_n_0));
  (* HLUTNM = "lutpair23" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    img_y00__1_carry__1_i_4
       (.I0(rgb_g_m0[7]),
        .I1(rgb_b_m0[7]),
        .I2(rgb_r_m0[7]),
        .O(img_y00__1_carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    img_y00__1_carry__1_i_5
       (.I0(img_y00__1_carry__1_i_1_n_0),
        .I1(rgb_b_m0[11]),
        .I2(rgb_g_m0[11]),
        .I3(rgb_r_m0[11]),
        .O(img_y00__1_carry__1_i_5_n_0));
  (* HLUTNM = "lutpair26" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    img_y00__1_carry__1_i_6
       (.I0(rgb_g_m0[10]),
        .I1(rgb_b_m0[10]),
        .I2(rgb_r_m0[10]),
        .I3(img_y00__1_carry__1_i_2_n_0),
        .O(img_y00__1_carry__1_i_6_n_0));
  (* HLUTNM = "lutpair25" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    img_y00__1_carry__1_i_7
       (.I0(rgb_g_m0[9]),
        .I1(rgb_b_m0[9]),
        .I2(rgb_r_m0[9]),
        .I3(img_y00__1_carry__1_i_3_n_0),
        .O(img_y00__1_carry__1_i_7_n_0));
  (* HLUTNM = "lutpair24" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    img_y00__1_carry__1_i_8
       (.I0(rgb_g_m0[8]),
        .I1(rgb_b_m0[8]),
        .I2(rgb_r_m0[8]),
        .I3(img_y00__1_carry__1_i_4_n_0),
        .O(img_y00__1_carry__1_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 img_y00__1_carry__2
       (.CI(img_y00__1_carry__1_n_0),
        .CO({NLW_img_y00__1_carry__2_CO_UNCONNECTED[3],img_y00__1_carry__2_n_1,img_y00__1_carry__2_n_2,img_y00__1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,img_y00__1_carry__2_i_1_n_0,img_y00__1_carry__2_i_2_n_0,img_y00__1_carry__2_i_3_n_0}),
        .O({img_y00__1_carry__2_n_4,img_y00__1_carry__2_n_5,img_y00__1_carry__2_n_6,img_y00__1_carry__2_n_7}),
        .S({img_y00__1_carry__2_i_4_n_0,img_y00__1_carry__2_i_5_n_0,img_y00__1_carry__2_i_6_n_0,img_y00__1_carry__2_i_7_n_0}));
  (* HLUTNM = "lutpair27" *) 
  LUT4 #(
    .INIT(16'h6660)) 
    img_y00__1_carry__2_i_1
       (.I0(rgb_g_m0[13]),
        .I1(rgb_r_m0[13]),
        .I2(rgb_g_m0[12]),
        .I3(rgb_b_m0[12]),
        .O(img_y00__1_carry__2_i_1_n_0));
  LUT3 #(
    .INIT(8'h82)) 
    img_y00__1_carry__2_i_2
       (.I0(rgb_r_m0[12]),
        .I1(rgb_g_m0[12]),
        .I2(rgb_b_m0[12]),
        .O(img_y00__1_carry__2_i_2_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    img_y00__1_carry__2_i_3
       (.I0(rgb_g_m0[12]),
        .I1(rgb_b_m0[12]),
        .I2(rgb_r_m0[12]),
        .O(img_y00__1_carry__2_i_3_n_0));
  LUT5 #(
    .INIT(32'h0F7878F0)) 
    img_y00__1_carry__2_i_4
       (.I0(rgb_g_m0[13]),
        .I1(rgb_r_m0[13]),
        .I2(rgb_g_m0[15]),
        .I3(rgb_g_m0[14]),
        .I4(rgb_r_m0[14]),
        .O(img_y00__1_carry__2_i_4_n_0));
  LUT5 #(
    .INIT(32'h69969696)) 
    img_y00__1_carry__2_i_5
       (.I0(img_y00__1_carry__2_i_1_n_0),
        .I1(rgb_r_m0[14]),
        .I2(rgb_g_m0[14]),
        .I3(rgb_g_m0[13]),
        .I4(rgb_r_m0[13]),
        .O(img_y00__1_carry__2_i_5_n_0));
  (* HLUTNM = "lutpair27" *) 
  LUT5 #(
    .INIT(32'h66699996)) 
    img_y00__1_carry__2_i_6
       (.I0(rgb_g_m0[13]),
        .I1(rgb_r_m0[13]),
        .I2(rgb_g_m0[12]),
        .I3(rgb_b_m0[12]),
        .I4(img_y00__1_carry__2_i_2_n_0),
        .O(img_y00__1_carry__2_i_6_n_0));
  LUT6 #(
    .INIT(64'h9696966996696969)) 
    img_y00__1_carry__2_i_7
       (.I0(rgb_r_m0[12]),
        .I1(rgb_b_m0[12]),
        .I2(rgb_g_m0[12]),
        .I3(rgb_r_m0[11]),
        .I4(rgb_b_m0[11]),
        .I5(rgb_g_m0[11]),
        .O(img_y00__1_carry__2_i_7_n_0));
  (* HLUTNM = "lutpair18" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    img_y00__1_carry_i_1
       (.I0(rgb_data_d[10]),
        .I1(rgb_b_m0[2]),
        .I2(rgb_r_m0[2]),
        .O(img_y00__1_carry_i_1_n_0));
  (* HLUTNM = "lutpair17" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    img_y00__1_carry_i_2
       (.I0(rgb_data_d[9]),
        .I1(rgb_b_m0[1]),
        .I2(rgb_r_m0[1]),
        .O(img_y00__1_carry_i_2_n_0));
  (* HLUTNM = "lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    img_y00__1_carry_i_3
       (.I0(rgb_g_m0[0]),
        .I1(rgb_b_m0[0]),
        .O(img_y00__1_carry_i_3_n_0));
  (* HLUTNM = "lutpair19" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    img_y00__1_carry_i_4
       (.I0(rgb_data_d[11]),
        .I1(rgb_b_m0[3]),
        .I2(rgb_r_m0[3]),
        .I3(img_y00__1_carry_i_1_n_0),
        .O(img_y00__1_carry_i_4_n_0));
  (* HLUTNM = "lutpair18" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    img_y00__1_carry_i_5
       (.I0(rgb_data_d[10]),
        .I1(rgb_b_m0[2]),
        .I2(rgb_r_m0[2]),
        .I3(img_y00__1_carry_i_2_n_0),
        .O(img_y00__1_carry_i_5_n_0));
  (* HLUTNM = "lutpair17" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    img_y00__1_carry_i_6
       (.I0(rgb_data_d[9]),
        .I1(rgb_b_m0[1]),
        .I2(rgb_r_m0[1]),
        .I3(img_y00__1_carry_i_3_n_0),
        .O(img_y00__1_carry_i_6_n_0));
  (* HLUTNM = "lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    img_y00__1_carry_i_7
       (.I0(rgb_g_m0[0]),
        .I1(rgb_b_m0[0]),
        .O(img_y00__1_carry_i_7_n_0));
  FDCE \img_y0_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(img_y00__1_carry__1_n_5),
        .Q(img_y0[10]));
  FDCE \img_y0_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(img_y00__1_carry__1_n_4),
        .Q(img_y0[11]));
  FDCE \img_y0_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(img_y00__1_carry__2_n_7),
        .Q(img_y0[12]));
  FDCE \img_y0_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(img_y00__1_carry__2_n_6),
        .Q(img_y0[13]));
  FDCE \img_y0_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(img_y00__1_carry__2_n_5),
        .Q(img_y0[14]));
  FDCE \img_y0_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(img_y00__1_carry__2_n_4),
        .Q(img_y0[15]));
  FDCE \img_y0_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(img_y00__1_carry__1_n_7),
        .Q(img_y0[8]));
  FDCE \img_y0_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(img_y00__1_carry__1_n_6),
        .Q(img_y0[9]));
  FDCE \img_y1_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(img_y0[8]),
        .Q(img_y1[0]));
  FDCE \img_y1_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(img_y0[9]),
        .Q(img_y1[1]));
  FDCE \img_y1_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(img_y0[10]),
        .Q(img_y1[2]));
  FDCE \img_y1_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(img_y0[11]),
        .Q(img_y1[3]));
  FDCE \img_y1_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(img_y0[12]),
        .Q(img_y1[4]));
  FDCE \img_y1_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(img_y0[13]),
        .Q(img_y1[5]));
  FDCE \img_y1_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(img_y0[14]),
        .Q(img_y1[6]));
  FDCE \img_y1_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(img_y0[15]),
        .Q(img_y1[7]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rgb_b_m00_carry
       (.CI(1'b0),
        .CO({rgb_b_m00_carry_n_0,rgb_b_m00_carry_n_1,rgb_b_m00_carry_n_2,rgb_b_m00_carry_n_3}),
        .CYINIT(1'b0),
        .DI({rgb_b_m00_carry_i_1_n_0,rgb_b_m00_carry_i_2_n_0,rgb_b_m00_carry_i_3_n_0,1'b0}),
        .O(rgb_b_m00[6:3]),
        .S({rgb_b_m00_carry_i_4_n_0,rgb_b_m00_carry_i_5_n_0,rgb_b_m00_carry_i_6_n_0,rgb_b_m00_carry_i_7_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rgb_b_m00_carry__0
       (.CI(rgb_b_m00_carry_n_0),
        .CO({rgb_b_m00_carry__0_n_0,rgb_b_m00_carry__0_n_1,rgb_b_m00_carry__0_n_2,rgb_b_m00_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({rgb_b_m00_carry__0_i_1_n_0,rgb_b_m00_carry__0_i_2_n_0,rgb_b_m00_carry__0_i_3_n_0,rgb_b_m00_carry__0_i_4_n_0}),
        .O(rgb_b_m00[10:7]),
        .S({rgb_b_m00_carry__0_i_5_n_0,rgb_b_m00_carry__0_i_6_n_0,rgb_b_m00_carry__0_i_7_n_0,rgb_b_m00_carry__0_i_8_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    rgb_b_m00_carry__0_i_1
       (.I0(rgb_data[4]),
        .I1(rgb_data[6]),
        .O(rgb_b_m00_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    rgb_b_m00_carry__0_i_2
       (.I0(rgb_data[3]),
        .I1(rgb_data[5]),
        .O(rgb_b_m00_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    rgb_b_m00_carry__0_i_3
       (.I0(rgb_data[4]),
        .I1(rgb_data[7]),
        .I2(rgb_data[2]),
        .O(rgb_b_m00_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    rgb_b_m00_carry__0_i_4
       (.I0(rgb_data[3]),
        .I1(rgb_data[6]),
        .I2(rgb_data[1]),
        .O(rgb_b_m00_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    rgb_b_m00_carry__0_i_5
       (.I0(rgb_data[6]),
        .I1(rgb_data[4]),
        .I2(rgb_data[7]),
        .I3(rgb_data[5]),
        .O(rgb_b_m00_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    rgb_b_m00_carry__0_i_6
       (.I0(rgb_data[5]),
        .I1(rgb_data[3]),
        .I2(rgb_data[6]),
        .I3(rgb_data[4]),
        .O(rgb_b_m00_carry__0_i_6_n_0));
  LUT5 #(
    .INIT(32'h718E8E71)) 
    rgb_b_m00_carry__0_i_7
       (.I0(rgb_data[2]),
        .I1(rgb_data[7]),
        .I2(rgb_data[4]),
        .I3(rgb_data[5]),
        .I4(rgb_data[3]),
        .O(rgb_b_m00_carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    rgb_b_m00_carry__0_i_8
       (.I0(rgb_data[1]),
        .I1(rgb_data[6]),
        .I2(rgb_data[3]),
        .I3(rgb_data[4]),
        .I4(rgb_data[7]),
        .I5(rgb_data[2]),
        .O(rgb_b_m00_carry__0_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rgb_b_m00_carry__1
       (.CI(rgb_b_m00_carry__0_n_0),
        .CO({NLW_rgb_b_m00_carry__1_CO_UNCONNECTED[3:1],rgb_b_m00_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,rgb_b_m00_carry__1_i_1_n_0}),
        .O({NLW_rgb_b_m00_carry__1_O_UNCONNECTED[3:2],rgb_b_m00[12:11]}),
        .S({1'b0,1'b0,rgb_b_m00_carry__1_i_2_n_0,rgb_b_m00_carry__1_i_3_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    rgb_b_m00_carry__1_i_1
       (.I0(rgb_data[5]),
        .I1(rgb_data[7]),
        .O(rgb_b_m00_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    rgb_b_m00_carry__1_i_2
       (.I0(rgb_data[6]),
        .I1(rgb_data[7]),
        .O(rgb_b_m00_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'h4B)) 
    rgb_b_m00_carry__1_i_3
       (.I0(rgb_data[7]),
        .I1(rgb_data[5]),
        .I2(rgb_data[6]),
        .O(rgb_b_m00_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    rgb_b_m00_carry_i_1
       (.I0(rgb_data[2]),
        .I1(rgb_data[5]),
        .I2(rgb_data[0]),
        .O(rgb_b_m00_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    rgb_b_m00_carry_i_2
       (.I0(rgb_data[2]),
        .I1(rgb_data[5]),
        .I2(rgb_data[0]),
        .O(rgb_b_m00_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    rgb_b_m00_carry_i_3
       (.I0(rgb_data[3]),
        .I1(rgb_data[0]),
        .O(rgb_b_m00_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    rgb_b_m00_carry_i_4
       (.I0(rgb_data[0]),
        .I1(rgb_data[5]),
        .I2(rgb_data[2]),
        .I3(rgb_data[3]),
        .I4(rgb_data[6]),
        .I5(rgb_data[1]),
        .O(rgb_b_m00_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'h69966969)) 
    rgb_b_m00_carry_i_5
       (.I0(rgb_data[2]),
        .I1(rgb_data[5]),
        .I2(rgb_data[0]),
        .I3(rgb_data[1]),
        .I4(rgb_data[4]),
        .O(rgb_b_m00_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h2DD2)) 
    rgb_b_m00_carry_i_6
       (.I0(rgb_data[0]),
        .I1(rgb_data[3]),
        .I2(rgb_data[4]),
        .I3(rgb_data[1]),
        .O(rgb_b_m00_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    rgb_b_m00_carry_i_7
       (.I0(rgb_data[0]),
        .I1(rgb_data[3]),
        .O(rgb_b_m00_carry_i_7_n_0));
  FDCE \rgb_b_m0_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_data[0]),
        .Q(rgb_b_m0[0]));
  FDCE \rgb_b_m0_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_b_m00[10]),
        .Q(rgb_b_m0[10]));
  FDCE \rgb_b_m0_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_b_m00[11]),
        .Q(rgb_b_m0[11]));
  FDCE \rgb_b_m0_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_b_m00[12]),
        .Q(rgb_b_m0[12]));
  FDCE \rgb_b_m0_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_data[1]),
        .Q(rgb_b_m0[1]));
  FDCE \rgb_b_m0_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_data[2]),
        .Q(rgb_b_m0[2]));
  FDCE \rgb_b_m0_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_b_m00[3]),
        .Q(rgb_b_m0[3]));
  FDCE \rgb_b_m0_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_b_m00[4]),
        .Q(rgb_b_m0[4]));
  FDCE \rgb_b_m0_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_b_m00[5]),
        .Q(rgb_b_m0[5]));
  FDCE \rgb_b_m0_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_b_m00[6]),
        .Q(rgb_b_m0[6]));
  FDCE \rgb_b_m0_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_b_m00[7]),
        .Q(rgb_b_m0[7]));
  FDCE \rgb_b_m0_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_b_m00[8]),
        .Q(rgb_b_m0[8]));
  FDCE \rgb_b_m0_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_b_m00[9]),
        .Q(rgb_b_m0[9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rgb_b_m10__25_carry
       (.CI(1'b0),
        .CO({rgb_b_m10__25_carry_n_0,rgb_b_m10__25_carry_n_1,rgb_b_m10__25_carry_n_2,rgb_b_m10__25_carry_n_3}),
        .CYINIT(1'b0),
        .DI({rgb_data[2:0],1'b0}),
        .O(rgb_b_m10[8:5]),
        .S({rgb_b_m10__25_carry_i_1_n_0,rgb_b_m10__25_carry_i_2_n_0,rgb_b_m10__25_carry_i_3_n_0,rgb_b_m10_carry_n_6}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rgb_b_m10__25_carry__0
       (.CI(rgb_b_m10__25_carry_n_0),
        .CO({rgb_b_m10__25_carry__0_n_0,rgb_b_m10__25_carry__0_n_1,rgb_b_m10__25_carry__0_n_2,rgb_b_m10__25_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(rgb_data[6:3]),
        .O(rgb_b_m10[12:9]),
        .S({rgb_b_m10__25_carry__0_i_1_n_0,rgb_b_m10__25_carry__0_i_2_n_0,rgb_b_m10__25_carry__0_i_3_n_0,rgb_b_m10__25_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    rgb_b_m10__25_carry__0_i_1
       (.I0(rgb_data[6]),
        .I1(rgb_b_m10_carry__1_n_7),
        .O(rgb_b_m10__25_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    rgb_b_m10__25_carry__0_i_2
       (.I0(rgb_data[5]),
        .I1(rgb_b_m10_carry__0_n_4),
        .O(rgb_b_m10__25_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    rgb_b_m10__25_carry__0_i_3
       (.I0(rgb_data[4]),
        .I1(rgb_b_m10_carry__0_n_5),
        .O(rgb_b_m10__25_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    rgb_b_m10__25_carry__0_i_4
       (.I0(rgb_data[3]),
        .I1(rgb_b_m10_carry__0_n_6),
        .O(rgb_b_m10__25_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rgb_b_m10__25_carry__1
       (.CI(rgb_b_m10__25_carry__0_n_0),
        .CO({NLW_rgb_b_m10__25_carry__1_CO_UNCONNECTED[3:1],rgb_b_m10__25_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,rgb_data[7]}),
        .O({NLW_rgb_b_m10__25_carry__1_O_UNCONNECTED[3:2],rgb_b_m10[14:13]}),
        .S({1'b0,1'b0,rgb_b_m10_carry__1_n_5,rgb_b_m10__25_carry__1_i_1_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    rgb_b_m10__25_carry__1_i_1
       (.I0(rgb_data[7]),
        .I1(rgb_b_m10_carry__1_n_6),
        .O(rgb_b_m10__25_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    rgb_b_m10__25_carry_i_1
       (.I0(rgb_data[2]),
        .I1(rgb_b_m10_carry__0_n_7),
        .O(rgb_b_m10__25_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    rgb_b_m10__25_carry_i_2
       (.I0(rgb_data[1]),
        .I1(rgb_b_m10_carry_n_4),
        .O(rgb_b_m10__25_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    rgb_b_m10__25_carry_i_3
       (.I0(rgb_data[0]),
        .I1(rgb_b_m10_carry_n_5),
        .O(rgb_b_m10__25_carry_i_3_n_0));
  CARRY4 rgb_b_m10_carry
       (.CI(1'b0),
        .CO({rgb_b_m10_carry_n_0,rgb_b_m10_carry_n_1,rgb_b_m10_carry_n_2,rgb_b_m10_carry_n_3}),
        .CYINIT(1'b0),
        .DI({rgb_data[1:0],1'b0,1'b1}),
        .O({rgb_b_m10_carry_n_4,rgb_b_m10_carry_n_5,rgb_b_m10_carry_n_6,rgb_b_m10[4]}),
        .S({rgb_b_m10_carry_i_1_n_0,rgb_b_m10_carry_i_2_n_0,rgb_b_m10_carry_i_3_n_0,rgb_data[0]}));
  CARRY4 rgb_b_m10_carry__0
       (.CI(rgb_b_m10_carry_n_0),
        .CO({rgb_b_m10_carry__0_n_0,rgb_b_m10_carry__0_n_1,rgb_b_m10_carry__0_n_2,rgb_b_m10_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(rgb_data[5:2]),
        .O({rgb_b_m10_carry__0_n_4,rgb_b_m10_carry__0_n_5,rgb_b_m10_carry__0_n_6,rgb_b_m10_carry__0_n_7}),
        .S({rgb_b_m10_carry__0_i_1_n_0,rgb_b_m10_carry__0_i_2_n_0,rgb_b_m10_carry__0_i_3_n_0,rgb_b_m10_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    rgb_b_m10_carry__0_i_1
       (.I0(rgb_data[7]),
        .I1(rgb_data[5]),
        .O(rgb_b_m10_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    rgb_b_m10_carry__0_i_2
       (.I0(rgb_data[6]),
        .I1(rgb_data[4]),
        .O(rgb_b_m10_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    rgb_b_m10_carry__0_i_3
       (.I0(rgb_data[5]),
        .I1(rgb_data[3]),
        .O(rgb_b_m10_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    rgb_b_m10_carry__0_i_4
       (.I0(rgb_data[2]),
        .I1(rgb_data[4]),
        .O(rgb_b_m10_carry__0_i_4_n_0));
  CARRY4 rgb_b_m10_carry__1
       (.CI(rgb_b_m10_carry__0_n_0),
        .CO({NLW_rgb_b_m10_carry__1_CO_UNCONNECTED[3:2],rgb_b_m10_carry__1_n_2,rgb_b_m10_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,rgb_data[7:6]}),
        .O({NLW_rgb_b_m10_carry__1_O_UNCONNECTED[3],rgb_b_m10_carry__1_n_5,rgb_b_m10_carry__1_n_6,rgb_b_m10_carry__1_n_7}),
        .S({1'b0,1'b1,rgb_b_m10_carry__1_i_1_n_0,rgb_b_m10_carry__1_i_2_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    rgb_b_m10_carry__1_i_1
       (.I0(rgb_data[7]),
        .O(rgb_b_m10_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rgb_b_m10_carry__1_i_2
       (.I0(rgb_data[6]),
        .O(rgb_b_m10_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    rgb_b_m10_carry_i_1
       (.I0(rgb_data[1]),
        .I1(rgb_data[3]),
        .O(rgb_b_m10_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    rgb_b_m10_carry_i_2
       (.I0(rgb_data[0]),
        .I1(rgb_data[2]),
        .O(rgb_b_m10_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rgb_b_m10_carry_i_3
       (.I0(rgb_data[1]),
        .O(rgb_b_m10_carry_i_3_n_0));
  FDCE \rgb_b_m1_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_b_m10[10]),
        .Q(rgb_b_m1[10]));
  FDCE \rgb_b_m1_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_b_m10[11]),
        .Q(rgb_b_m1[11]));
  FDCE \rgb_b_m1_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_b_m10[12]),
        .Q(rgb_b_m1[12]));
  FDCE \rgb_b_m1_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_b_m10[13]),
        .Q(rgb_b_m1[13]));
  FDCE \rgb_b_m1_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_b_m10[14]),
        .Q(rgb_b_m1[14]));
  FDCE \rgb_b_m1_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_b_m10[4]),
        .Q(rgb_b_m1[4]));
  FDCE \rgb_b_m1_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_b_m10[5]),
        .Q(rgb_b_m1[5]));
  FDCE \rgb_b_m1_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_b_m10[6]),
        .Q(rgb_b_m1[6]));
  FDCE \rgb_b_m1_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_b_m10[7]),
        .Q(rgb_b_m1[7]));
  FDCE \rgb_b_m1_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_b_m10[8]),
        .Q(rgb_b_m1[8]));
  FDCE \rgb_b_m1_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_b_m10[9]),
        .Q(rgb_b_m1[9]));
  LUT2 #(
    .INIT(4'h6)) 
    \rgb_b_m2[10]_i_2 
       (.I0(rgb_data[4]),
        .I1(rgb_data[7]),
        .O(\rgb_b_m2[10]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rgb_b_m2[10]_i_3 
       (.I0(rgb_data[3]),
        .I1(rgb_data[6]),
        .O(\rgb_b_m2[10]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rgb_b_m2[6]_i_2 
       (.I0(rgb_data[2]),
        .I1(rgb_data[5]),
        .O(\rgb_b_m2[6]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rgb_b_m2[6]_i_3 
       (.I0(rgb_data[1]),
        .I1(rgb_data[4]),
        .O(\rgb_b_m2[6]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rgb_b_m2[6]_i_4 
       (.I0(rgb_data[0]),
        .I1(rgb_data[3]),
        .O(\rgb_b_m2[6]_i_4_n_0 ));
  FDCE \rgb_b_m2_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_b_m20[10]),
        .Q(rgb_b_m2[10]));
  CARRY4 \rgb_b_m2_reg[10]_i_1 
       (.CI(\rgb_b_m2_reg[6]_i_1_n_0 ),
        .CO({\rgb_b_m2_reg[10]_i_1_n_0 ,\rgb_b_m2_reg[10]_i_1_n_1 ,\rgb_b_m2_reg[10]_i_1_n_2 ,\rgb_b_m2_reg[10]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,rgb_data[4:3]}),
        .O(rgb_b_m20[10:7]),
        .S({rgb_data[6:5],\rgb_b_m2[10]_i_2_n_0 ,\rgb_b_m2[10]_i_3_n_0 }));
  FDCE \rgb_b_m2_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_b_m20[11]),
        .Q(rgb_b_m2[11]));
  FDCE \rgb_b_m2_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_b_m20[12]),
        .Q(rgb_b_m2[12]));
  CARRY4 \rgb_b_m2_reg[12]_i_1 
       (.CI(\rgb_b_m2_reg[10]_i_1_n_0 ),
        .CO({\NLW_rgb_b_m2_reg[12]_i_1_CO_UNCONNECTED [3:2],rgb_b_m20[12],\NLW_rgb_b_m2_reg[12]_i_1_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_rgb_b_m2_reg[12]_i_1_O_UNCONNECTED [3:1],rgb_b_m20[11]}),
        .S({1'b0,1'b0,1'b1,rgb_data[7]}));
  FDCE \rgb_b_m2_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_b_m20[3]),
        .Q(rgb_b_m2[3]));
  FDCE \rgb_b_m2_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_b_m20[4]),
        .Q(rgb_b_m2[4]));
  FDCE \rgb_b_m2_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_b_m20[5]),
        .Q(rgb_b_m2[5]));
  FDCE \rgb_b_m2_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_b_m20[6]),
        .Q(rgb_b_m2[6]));
  CARRY4 \rgb_b_m2_reg[6]_i_1 
       (.CI(1'b0),
        .CO({\rgb_b_m2_reg[6]_i_1_n_0 ,\rgb_b_m2_reg[6]_i_1_n_1 ,\rgb_b_m2_reg[6]_i_1_n_2 ,\rgb_b_m2_reg[6]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({rgb_data[2:0],1'b0}),
        .O(rgb_b_m20[6:3]),
        .S({\rgb_b_m2[6]_i_2_n_0 ,\rgb_b_m2[6]_i_3_n_0 ,\rgb_b_m2[6]_i_4_n_0 ,rgb_data[2]}));
  FDCE \rgb_b_m2_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_b_m20[7]),
        .Q(rgb_b_m2[7]));
  FDCE \rgb_b_m2_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_b_m20[8]),
        .Q(rgb_b_m2[8]));
  FDCE \rgb_b_m2_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_b_m20[9]),
        .Q(rgb_b_m2[9]));
  FDCE \rgb_clken_d_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_clken),
        .Q(rgb_clken_d[0]));
  FDCE \rgb_clken_d_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_clken_d[0]),
        .Q(rgb_clken_d[1]));
  FDCE \rgb_clken_d_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_clken_d[1]),
        .Q(Q));
  FDCE \rgb_data_d_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_data[10]),
        .Q(rgb_data_d[10]));
  FDCE \rgb_data_d_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_data[11]),
        .Q(rgb_data_d[11]));
  FDCE \rgb_data_d_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_data[12]),
        .Q(rgb_data_d[12]));
  FDCE \rgb_data_d_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_data[13]),
        .Q(rgb_data_d[13]));
  FDCE \rgb_data_d_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_data[14]),
        .Q(rgb_data_d[14]));
  FDCE \rgb_data_d_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_data[15]),
        .Q(rgb_data_d[15]));
  FDCE \rgb_data_d_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_data[19]),
        .Q(rgb_data_d[19]));
  FDCE \rgb_data_d_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_data[20]),
        .Q(rgb_data_d[20]));
  FDCE \rgb_data_d_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_data[21]),
        .Q(rgb_data_d[21]));
  FDCE \rgb_data_d_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_data[22]),
        .Q(rgb_data_d[22]));
  FDCE \rgb_data_d_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_data[23]),
        .Q(rgb_data_d[23]));
  FDCE \rgb_data_d_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_b_m0[0]),
        .Q(rgb_data_d[24]));
  FDCE \rgb_data_d_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_b_m0[1]),
        .Q(rgb_data_d[25]));
  FDCE \rgb_data_d_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_b_m0[2]),
        .Q(rgb_data_d[26]));
  FDCE \rgb_data_d_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_data_d[3]),
        .Q(rgb_data_d[27]));
  FDCE \rgb_data_d_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_data_d[4]),
        .Q(rgb_data_d[28]));
  FDCE \rgb_data_d_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_data_d[5]),
        .Q(rgb_data_d[29]));
  FDCE \rgb_data_d_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_data_d[6]),
        .Q(rgb_data_d[30]));
  FDCE \rgb_data_d_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_data_d[7]),
        .Q(rgb_data_d[31]));
  FDCE \rgb_data_d_reg[32] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_g_m0[0]),
        .Q(rgb_data_d[32]));
  FDCE \rgb_data_d_reg[33] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_data_d[9]),
        .Q(rgb_data_d[33]));
  FDCE \rgb_data_d_reg[34] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_data_d[10]),
        .Q(rgb_data_d[34]));
  FDCE \rgb_data_d_reg[35] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_data_d[11]),
        .Q(rgb_data_d[35]));
  FDCE \rgb_data_d_reg[36] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_data_d[12]),
        .Q(rgb_data_d[36]));
  FDCE \rgb_data_d_reg[37] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_data_d[13]),
        .Q(rgb_data_d[37]));
  FDCE \rgb_data_d_reg[38] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_data_d[14]),
        .Q(rgb_data_d[38]));
  FDCE \rgb_data_d_reg[39] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_data_d[15]),
        .Q(rgb_data_d[39]));
  FDCE \rgb_data_d_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_data[3]),
        .Q(rgb_data_d[3]));
  FDCE \rgb_data_d_reg[40] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_r_m0[1]),
        .Q(rgb_data_d[40]));
  FDCE \rgb_data_d_reg[41] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_r_m0[2]),
        .Q(rgb_data_d[41]));
  FDCE \rgb_data_d_reg[42] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_r_m0[3]),
        .Q(rgb_data_d[42]));
  FDCE \rgb_data_d_reg[43] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_data_d[19]),
        .Q(rgb_data_d[43]));
  FDCE \rgb_data_d_reg[44] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_data_d[20]),
        .Q(rgb_data_d[44]));
  FDCE \rgb_data_d_reg[45] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_data_d[21]),
        .Q(rgb_data_d[45]));
  FDCE \rgb_data_d_reg[46] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_data_d[22]),
        .Q(rgb_data_d[46]));
  FDCE \rgb_data_d_reg[47] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_data_d[23]),
        .Q(rgb_data_d[47]));
  FDCE \rgb_data_d_reg[48] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_data_d[24]),
        .Q(rgb_data_syn[0]));
  FDCE \rgb_data_d_reg[49] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_data_d[25]),
        .Q(rgb_data_syn[1]));
  FDCE \rgb_data_d_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_data[4]),
        .Q(rgb_data_d[4]));
  FDCE \rgb_data_d_reg[50] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_data_d[26]),
        .Q(rgb_data_syn[2]));
  FDCE \rgb_data_d_reg[51] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_data_d[27]),
        .Q(rgb_data_syn[3]));
  FDCE \rgb_data_d_reg[52] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_data_d[28]),
        .Q(rgb_data_syn[4]));
  FDCE \rgb_data_d_reg[53] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_data_d[29]),
        .Q(rgb_data_syn[5]));
  FDCE \rgb_data_d_reg[54] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_data_d[30]),
        .Q(rgb_data_syn[6]));
  FDCE \rgb_data_d_reg[55] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_data_d[31]),
        .Q(rgb_data_syn[7]));
  FDCE \rgb_data_d_reg[56] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_data_d[32]),
        .Q(rgb_data_syn[8]));
  FDCE \rgb_data_d_reg[57] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_data_d[33]),
        .Q(rgb_data_syn[9]));
  FDCE \rgb_data_d_reg[58] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_data_d[34]),
        .Q(rgb_data_syn[10]));
  FDCE \rgb_data_d_reg[59] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_data_d[35]),
        .Q(rgb_data_syn[11]));
  FDCE \rgb_data_d_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_data[5]),
        .Q(rgb_data_d[5]));
  FDCE \rgb_data_d_reg[60] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_data_d[36]),
        .Q(rgb_data_syn[12]));
  FDCE \rgb_data_d_reg[61] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_data_d[37]),
        .Q(rgb_data_syn[13]));
  FDCE \rgb_data_d_reg[62] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_data_d[38]),
        .Q(rgb_data_syn[14]));
  FDCE \rgb_data_d_reg[63] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_data_d[39]),
        .Q(rgb_data_syn[15]));
  FDCE \rgb_data_d_reg[64] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_data_d[40]),
        .Q(rgb_data_syn[16]));
  FDCE \rgb_data_d_reg[65] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_data_d[41]),
        .Q(rgb_data_syn[17]));
  FDCE \rgb_data_d_reg[66] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_data_d[42]),
        .Q(rgb_data_syn[18]));
  FDCE \rgb_data_d_reg[67] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_data_d[43]),
        .Q(rgb_data_syn[19]));
  FDCE \rgb_data_d_reg[68] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_data_d[44]),
        .Q(rgb_data_syn[20]));
  FDCE \rgb_data_d_reg[69] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_data_d[45]),
        .Q(rgb_data_syn[21]));
  FDCE \rgb_data_d_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_data[6]),
        .Q(rgb_data_d[6]));
  FDCE \rgb_data_d_reg[70] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_data_d[46]),
        .Q(rgb_data_syn[22]));
  FDCE \rgb_data_d_reg[71] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_data_d[47]),
        .Q(rgb_data_syn[23]));
  FDCE \rgb_data_d_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_data[7]),
        .Q(rgb_data_d[7]));
  FDCE \rgb_data_d_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_data[9]),
        .Q(rgb_data_d[9]));
  LUT2 #(
    .INIT(4'h6)) 
    \rgb_g_m0[9]_i_2 
       (.I0(rgb_data[8]),
        .I1(rgb_data[15]),
        .O(\rgb_g_m0[9]_i_2_n_0 ));
  FDCE \rgb_g_m0_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_data[8]),
        .Q(rgb_g_m0[0]));
  FDCE \rgb_g_m0_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_g_m00[10]),
        .Q(rgb_g_m0[10]));
  FDCE \rgb_g_m0_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_g_m00[11]),
        .Q(rgb_g_m0[11]));
  FDCE \rgb_g_m0_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_g_m00[12]),
        .Q(rgb_g_m0[12]));
  FDCE \rgb_g_m0_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_g_m00[13]),
        .Q(rgb_g_m0[13]));
  CARRY4 \rgb_g_m0_reg[13]_i_1 
       (.CI(\rgb_g_m0_reg[9]_i_1_n_0 ),
        .CO({\rgb_g_m0_reg[13]_i_1_n_0 ,\rgb_g_m0_reg[13]_i_1_n_1 ,\rgb_g_m0_reg[13]_i_1_n_2 ,\rgb_g_m0_reg[13]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(rgb_g_m00[13:10]),
        .S(rgb_data[14:11]));
  FDCE \rgb_g_m0_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_g_m00[14]),
        .Q(rgb_g_m0[14]));
  FDCE \rgb_g_m0_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_g_m00[15]),
        .Q(rgb_g_m0[15]));
  CARRY4 \rgb_g_m0_reg[15]_i_1 
       (.CI(\rgb_g_m0_reg[13]_i_1_n_0 ),
        .CO({\NLW_rgb_g_m0_reg[15]_i_1_CO_UNCONNECTED [3:2],rgb_g_m00[15],\NLW_rgb_g_m0_reg[15]_i_1_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_rgb_g_m0_reg[15]_i_1_O_UNCONNECTED [3:1],rgb_g_m00[14]}),
        .S({1'b0,1'b0,1'b1,rgb_data[15]}));
  FDCE \rgb_g_m0_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_g_m00[6]),
        .Q(rgb_g_m0[6]));
  FDCE \rgb_g_m0_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_g_m00[7]),
        .Q(rgb_g_m0[7]));
  FDCE \rgb_g_m0_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_g_m00[8]),
        .Q(rgb_g_m0[8]));
  FDCE \rgb_g_m0_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_g_m00[9]),
        .Q(rgb_g_m0[9]));
  CARRY4 \rgb_g_m0_reg[9]_i_1 
       (.CI(1'b0),
        .CO({\rgb_g_m0_reg[9]_i_1_n_0 ,\rgb_g_m0_reg[9]_i_1_n_1 ,\rgb_g_m0_reg[9]_i_1_n_2 ,\rgb_g_m0_reg[9]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,rgb_data[8],1'b0}),
        .O(rgb_g_m00[9:6]),
        .S({rgb_data[10:9],\rgb_g_m0[9]_i_2_n_0 ,rgb_data[14]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rgb_g_m10__21_carry
       (.CI(1'b0),
        .CO({rgb_g_m10__21_carry_n_0,rgb_g_m10__21_carry_n_1,rgb_g_m10__21_carry_n_2,rgb_g_m10__21_carry_n_3}),
        .CYINIT(1'b0),
        .DI({rgb_g_m10_carry__0_n_6,rgb_g_m10_carry__0_n_7,rgb_g_m10_carry_n_4,1'b0}),
        .O(rgb_g_m10[5:2]),
        .S({rgb_g_m10__21_carry_i_1_n_0,rgb_g_m10__21_carry_i_2_n_0,rgb_g_m10__21_carry_i_3_n_0,rgb_g_m10_carry_n_5}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rgb_g_m10__21_carry__0
       (.CI(rgb_g_m10__21_carry_n_0),
        .CO({rgb_g_m10__21_carry__0_n_0,rgb_g_m10__21_carry__0_n_1,rgb_g_m10__21_carry__0_n_2,rgb_g_m10__21_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({rgb_g_m10__21_carry__0_i_1_n_0,rgb_g_m10__21_carry__0_i_2_n_0,rgb_g_m10__21_carry__0_i_3_n_0,rgb_data[8]}),
        .O(rgb_g_m10[9:6]),
        .S({rgb_g_m10__21_carry__0_i_4_n_0,rgb_g_m10__21_carry__0_i_5_n_0,rgb_g_m10__21_carry__0_i_6_n_0,rgb_g_m10__21_carry__0_i_7_n_0}));
  (* HLUTNM = "lutpair7" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    rgb_g_m10__21_carry__0_i_1
       (.I0(rgb_data[13]),
        .I1(rgb_g_m10_carry__1_n_7),
        .I2(rgb_data[10]),
        .O(rgb_g_m10__21_carry__0_i_1_n_0));
  (* HLUTNM = "lutpair6" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    rgb_g_m10__21_carry__0_i_2
       (.I0(rgb_data[12]),
        .I1(rgb_g_m10_carry__0_n_4),
        .I2(rgb_data[9]),
        .O(rgb_g_m10__21_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    rgb_g_m10__21_carry__0_i_3
       (.I0(rgb_data[9]),
        .I1(rgb_data[12]),
        .I2(rgb_g_m10_carry__0_n_4),
        .O(rgb_g_m10__21_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    rgb_g_m10__21_carry__0_i_4
       (.I0(rgb_data[14]),
        .I1(rgb_g_m10_carry__1_n_6),
        .I2(rgb_data[11]),
        .I3(rgb_g_m10__21_carry__0_i_1_n_0),
        .O(rgb_g_m10__21_carry__0_i_4_n_0));
  (* HLUTNM = "lutpair7" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    rgb_g_m10__21_carry__0_i_5
       (.I0(rgb_data[13]),
        .I1(rgb_g_m10_carry__1_n_7),
        .I2(rgb_data[10]),
        .I3(rgb_g_m10__21_carry__0_i_2_n_0),
        .O(rgb_g_m10__21_carry__0_i_5_n_0));
  (* HLUTNM = "lutpair6" *) 
  LUT5 #(
    .INIT(32'h69969696)) 
    rgb_g_m10__21_carry__0_i_6
       (.I0(rgb_data[12]),
        .I1(rgb_g_m10_carry__0_n_4),
        .I2(rgb_data[9]),
        .I3(rgb_g_m10_carry__0_n_5),
        .I4(rgb_data[11]),
        .O(rgb_g_m10__21_carry__0_i_6_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    rgb_g_m10__21_carry__0_i_7
       (.I0(rgb_data[11]),
        .I1(rgb_g_m10_carry__0_n_5),
        .I2(rgb_data[8]),
        .O(rgb_g_m10__21_carry__0_i_7_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rgb_g_m10__21_carry__1
       (.CI(rgb_g_m10__21_carry__0_n_0),
        .CO({rgb_g_m10__21_carry__1_n_0,rgb_g_m10__21_carry__1_n_1,rgb_g_m10__21_carry__1_n_2,rgb_g_m10__21_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({rgb_g_m10__21_carry__1_i_1_n_0,rgb_g_m10__21_carry__1_i_2_n_0,rgb_g_m10__21_carry__1_i_3_n_0,rgb_g_m10__21_carry__1_i_4_n_0}),
        .O(rgb_g_m10[13:10]),
        .S({rgb_g_m10__21_carry__1_i_5_n_0,rgb_g_m10__21_carry__1_i_6_n_0,rgb_g_m10__21_carry__1_i_7_n_0,rgb_g_m10__21_carry__1_i_8_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    rgb_g_m10__21_carry__1_i_1
       (.I0(rgb_data[14]),
        .I1(rgb_g_m10_carry__1_n_1),
        .O(rgb_g_m10__21_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    rgb_g_m10__21_carry__1_i_2
       (.I0(rgb_data[13]),
        .I1(rgb_g_m10_carry__1_n_1),
        .O(rgb_g_m10__21_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    rgb_g_m10__21_carry__1_i_3
       (.I0(rgb_g_m10_carry__1_n_1),
        .I1(rgb_data[15]),
        .I2(rgb_data[12]),
        .O(rgb_g_m10__21_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    rgb_g_m10__21_carry__1_i_4
       (.I0(rgb_data[14]),
        .I1(rgb_g_m10_carry__1_n_6),
        .I2(rgb_data[11]),
        .O(rgb_g_m10__21_carry__1_i_4_n_0));
  LUT3 #(
    .INIT(8'hE1)) 
    rgb_g_m10__21_carry__1_i_5
       (.I0(rgb_data[14]),
        .I1(rgb_g_m10_carry__1_n_1),
        .I2(rgb_data[15]),
        .O(rgb_g_m10__21_carry__1_i_5_n_0));
  LUT3 #(
    .INIT(8'hE1)) 
    rgb_g_m10__21_carry__1_i_6
       (.I0(rgb_data[13]),
        .I1(rgb_g_m10_carry__1_n_1),
        .I2(rgb_data[14]),
        .O(rgb_g_m10__21_carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h7E81)) 
    rgb_g_m10__21_carry__1_i_7
       (.I0(rgb_data[12]),
        .I1(rgb_data[15]),
        .I2(rgb_g_m10_carry__1_n_1),
        .I3(rgb_data[13]),
        .O(rgb_g_m10__21_carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h9669)) 
    rgb_g_m10__21_carry__1_i_8
       (.I0(rgb_g_m10__21_carry__1_i_4_n_0),
        .I1(rgb_g_m10_carry__1_n_1),
        .I2(rgb_data[15]),
        .I3(rgb_data[12]),
        .O(rgb_g_m10__21_carry__1_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rgb_g_m10__21_carry__2
       (.CI(rgb_g_m10__21_carry__1_n_0),
        .CO(NLW_rgb_g_m10__21_carry__2_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_rgb_g_m10__21_carry__2_O_UNCONNECTED[3:1],rgb_g_m10[14]}),
        .S({1'b0,1'b0,1'b0,rgb_g_m10__21_carry__2_i_1_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    rgb_g_m10__21_carry__2_i_1
       (.I0(rgb_data[15]),
        .I1(rgb_g_m10_carry__1_n_1),
        .O(rgb_g_m10__21_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    rgb_g_m10__21_carry_i_1
       (.I0(rgb_g_m10_carry__0_n_6),
        .I1(rgb_data[10]),
        .O(rgb_g_m10__21_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    rgb_g_m10__21_carry_i_2
       (.I0(rgb_g_m10_carry__0_n_7),
        .I1(rgb_data[9]),
        .O(rgb_g_m10__21_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    rgb_g_m10__21_carry_i_3
       (.I0(rgb_g_m10_carry_n_4),
        .I1(rgb_data[8]),
        .O(rgb_g_m10__21_carry_i_3_n_0));
  CARRY4 rgb_g_m10_carry
       (.CI(1'b0),
        .CO({rgb_g_m10_carry_n_0,rgb_g_m10_carry_n_1,rgb_g_m10_carry_n_2,rgb_g_m10_carry_n_3}),
        .CYINIT(1'b0),
        .DI({rgb_data[9:8],1'b0,1'b1}),
        .O({rgb_g_m10_carry_n_4,rgb_g_m10_carry_n_5,rgb_g_m10[1],NLW_rgb_g_m10_carry_O_UNCONNECTED[0]}),
        .S({rgb_g_m10_carry_i_1_n_0,rgb_g_m10_carry_i_2_n_0,rgb_g_m10_carry_i_3_n_0,rgb_data[8]}));
  CARRY4 rgb_g_m10_carry__0
       (.CI(rgb_g_m10_carry_n_0),
        .CO({rgb_g_m10_carry__0_n_0,rgb_g_m10_carry__0_n_1,rgb_g_m10_carry__0_n_2,rgb_g_m10_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(rgb_data[13:10]),
        .O({rgb_g_m10_carry__0_n_4,rgb_g_m10_carry__0_n_5,rgb_g_m10_carry__0_n_6,rgb_g_m10_carry__0_n_7}),
        .S({rgb_g_m10_carry__0_i_1_n_0,rgb_g_m10_carry__0_i_2_n_0,rgb_g_m10_carry__0_i_3_n_0,rgb_g_m10_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    rgb_g_m10_carry__0_i_1
       (.I0(rgb_data[13]),
        .I1(rgb_data[15]),
        .O(rgb_g_m10_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    rgb_g_m10_carry__0_i_2
       (.I0(rgb_data[12]),
        .I1(rgb_data[14]),
        .O(rgb_g_m10_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    rgb_g_m10_carry__0_i_3
       (.I0(rgb_data[11]),
        .I1(rgb_data[13]),
        .O(rgb_g_m10_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    rgb_g_m10_carry__0_i_4
       (.I0(rgb_data[10]),
        .I1(rgb_data[12]),
        .O(rgb_g_m10_carry__0_i_4_n_0));
  CARRY4 rgb_g_m10_carry__1
       (.CI(rgb_g_m10_carry__0_n_0),
        .CO({NLW_rgb_g_m10_carry__1_CO_UNCONNECTED[3],rgb_g_m10_carry__1_n_1,NLW_rgb_g_m10_carry__1_CO_UNCONNECTED[1],rgb_g_m10_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,rgb_data[15:14]}),
        .O({NLW_rgb_g_m10_carry__1_O_UNCONNECTED[3:2],rgb_g_m10_carry__1_n_6,rgb_g_m10_carry__1_n_7}),
        .S({1'b0,1'b1,rgb_g_m10_carry__1_i_1_n_0,rgb_g_m10_carry__1_i_2_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    rgb_g_m10_carry__1_i_1
       (.I0(rgb_data[15]),
        .O(rgb_g_m10_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rgb_g_m10_carry__1_i_2
       (.I0(rgb_data[14]),
        .O(rgb_g_m10_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    rgb_g_m10_carry_i_1
       (.I0(rgb_data[9]),
        .I1(rgb_data[11]),
        .O(rgb_g_m10_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    rgb_g_m10_carry_i_2
       (.I0(rgb_data[8]),
        .I1(rgb_data[10]),
        .O(rgb_g_m10_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rgb_g_m10_carry_i_3
       (.I0(rgb_data[9]),
        .O(rgb_g_m10_carry_i_3_n_0));
  FDCE \rgb_g_m1_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_g_m10[10]),
        .Q(rgb_g_m1[10]));
  FDCE \rgb_g_m1_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_g_m10[11]),
        .Q(rgb_g_m1[11]));
  FDCE \rgb_g_m1_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_g_m10[12]),
        .Q(rgb_g_m1[12]));
  FDCE \rgb_g_m1_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_g_m10[13]),
        .Q(rgb_g_m1[13]));
  FDCE \rgb_g_m1_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_g_m10[14]),
        .Q(rgb_g_m1[14]));
  FDCE \rgb_g_m1_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_g_m10[1]),
        .Q(rgb_g_m1[1]));
  FDCE \rgb_g_m1_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_g_m10[2]),
        .Q(rgb_g_m1[2]));
  FDCE \rgb_g_m1_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_g_m10[3]),
        .Q(rgb_g_m1[3]));
  FDCE \rgb_g_m1_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_g_m10[4]),
        .Q(rgb_g_m1[4]));
  FDCE \rgb_g_m1_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_g_m10[5]),
        .Q(rgb_g_m1[5]));
  FDCE \rgb_g_m1_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_g_m10[6]),
        .Q(rgb_g_m1[6]));
  FDCE \rgb_g_m1_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_g_m10[7]),
        .Q(rgb_g_m1[7]));
  FDCE \rgb_g_m1_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_g_m10[8]),
        .Q(rgb_g_m1[8]));
  FDCE \rgb_g_m1_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_g_m10[9]),
        .Q(rgb_g_m1[9]));
  CARRY4 rgb_g_m20__19_carry
       (.CI(1'b0),
        .CO({rgb_g_m20__19_carry_n_0,rgb_g_m20__19_carry_n_1,rgb_g_m20__19_carry_n_2,rgb_g_m20__19_carry_n_3}),
        .CYINIT(1'b0),
        .DI({rgb_data[9:8],1'b0,1'b1}),
        .O({rgb_g_m20__19_carry_n_4,rgb_g_m20__19_carry_n_5,rgb_g_m20__19_carry_n_6,NLW_rgb_g_m20__19_carry_O_UNCONNECTED[0]}),
        .S({rgb_g_m20__19_carry_i_1_n_0,rgb_g_m20__19_carry_i_2_n_0,rgb_g_m20__19_carry_i_3_n_0,rgb_data[8]}));
  CARRY4 rgb_g_m20__19_carry__0
       (.CI(rgb_g_m20__19_carry_n_0),
        .CO({rgb_g_m20__19_carry__0_n_0,rgb_g_m20__19_carry__0_n_1,rgb_g_m20__19_carry__0_n_2,rgb_g_m20__19_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(rgb_data[13:10]),
        .O({rgb_g_m20__19_carry__0_n_4,rgb_g_m20__19_carry__0_n_5,rgb_g_m20__19_carry__0_n_6,rgb_g_m20__19_carry__0_n_7}),
        .S({rgb_g_m20__19_carry__0_i_1_n_0,rgb_g_m20__19_carry__0_i_2_n_0,rgb_g_m20__19_carry__0_i_3_n_0,rgb_g_m20__19_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    rgb_g_m20__19_carry__0_i_1
       (.I0(rgb_data[13]),
        .I1(rgb_data[15]),
        .O(rgb_g_m20__19_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    rgb_g_m20__19_carry__0_i_2
       (.I0(rgb_data[12]),
        .I1(rgb_data[14]),
        .O(rgb_g_m20__19_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    rgb_g_m20__19_carry__0_i_3
       (.I0(rgb_data[11]),
        .I1(rgb_data[13]),
        .O(rgb_g_m20__19_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    rgb_g_m20__19_carry__0_i_4
       (.I0(rgb_data[10]),
        .I1(rgb_data[12]),
        .O(rgb_g_m20__19_carry__0_i_4_n_0));
  CARRY4 rgb_g_m20__19_carry__1
       (.CI(rgb_g_m20__19_carry__0_n_0),
        .CO({NLW_rgb_g_m20__19_carry__1_CO_UNCONNECTED[3],rgb_g_m20__19_carry__1_n_1,NLW_rgb_g_m20__19_carry__1_CO_UNCONNECTED[1],rgb_g_m20__19_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,rgb_data[15:14]}),
        .O({NLW_rgb_g_m20__19_carry__1_O_UNCONNECTED[3:2],rgb_g_m20__19_carry__1_n_6,rgb_g_m20__19_carry__1_n_7}),
        .S({1'b0,1'b1,rgb_g_m20__19_carry__1_i_1_n_0,rgb_g_m20__19_carry__1_i_2_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    rgb_g_m20__19_carry__1_i_1
       (.I0(rgb_data[15]),
        .O(rgb_g_m20__19_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rgb_g_m20__19_carry__1_i_2
       (.I0(rgb_data[14]),
        .O(rgb_g_m20__19_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    rgb_g_m20__19_carry_i_1
       (.I0(rgb_data[9]),
        .I1(rgb_data[11]),
        .O(rgb_g_m20__19_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    rgb_g_m20__19_carry_i_2
       (.I0(rgb_data[8]),
        .I1(rgb_data[10]),
        .O(rgb_g_m20__19_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rgb_g_m20__19_carry_i_3
       (.I0(rgb_data[9]),
        .O(rgb_g_m20__19_carry_i_3_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rgb_g_m20__41_carry
       (.CI(1'b0),
        .CO({rgb_g_m20__41_carry_n_0,rgb_g_m20__41_carry_n_1,rgb_g_m20__41_carry_n_2,rgb_g_m20__41_carry_n_3}),
        .CYINIT(1'b0),
        .DI({rgb_data[8],rgb_g_m20_carry__0_n_7,rgb_g_m20_carry_n_4,rgb_g_m20_carry_n_5}),
        .O(rgb_g_m20[6:3]),
        .S({rgb_g_m20__41_carry_i_1_n_0,rgb_g_m20__41_carry_i_2_n_0,rgb_g_m20__41_carry_i_3_n_0,rgb_g_m20__41_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rgb_g_m20__41_carry__0
       (.CI(rgb_g_m20__41_carry_n_0),
        .CO({rgb_g_m20__41_carry__0_n_0,rgb_g_m20__41_carry__0_n_1,rgb_g_m20__41_carry__0_n_2,rgb_g_m20__41_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({rgb_g_m20__41_carry__0_i_1_n_0,rgb_g_m20__41_carry__0_i_2_n_0,rgb_g_m20__41_carry__0_i_3_n_0,rgb_g_m20__41_carry__0_i_4_n_0}),
        .O(rgb_g_m20[10:7]),
        .S({rgb_g_m20__41_carry__0_i_5_n_0,rgb_g_m20__41_carry__0_i_6_n_0,rgb_g_m20__41_carry__0_i_7_n_0,rgb_g_m20__41_carry__0_i_8_n_0}));
  (* HLUTNM = "lutpair2" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    rgb_g_m20__41_carry__0_i_1
       (.I0(rgb_g_m20__19_carry__0_n_5),
        .I1(rgb_g_m20_carry__1_n_7),
        .I2(rgb_data[11]),
        .O(rgb_g_m20__41_carry__0_i_1_n_0));
  (* HLUTNM = "lutpair1" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    rgb_g_m20__41_carry__0_i_2
       (.I0(rgb_g_m20__19_carry__0_n_6),
        .I1(rgb_g_m20_carry__0_n_4),
        .I2(rgb_data[10]),
        .O(rgb_g_m20__41_carry__0_i_2_n_0));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    rgb_g_m20__41_carry__0_i_3
       (.I0(rgb_g_m20__19_carry__0_n_7),
        .I1(rgb_g_m20_carry__0_n_5),
        .I2(rgb_data[9]),
        .O(rgb_g_m20__41_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    rgb_g_m20__41_carry__0_i_4
       (.I0(rgb_data[9]),
        .I1(rgb_g_m20__19_carry__0_n_7),
        .I2(rgb_g_m20_carry__0_n_5),
        .O(rgb_g_m20__41_carry__0_i_4_n_0));
  (* HLUTNM = "lutpair3" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    rgb_g_m20__41_carry__0_i_5
       (.I0(rgb_g_m20__19_carry__0_n_4),
        .I1(rgb_g_m20_carry__1_n_6),
        .I2(rgb_data[12]),
        .I3(rgb_g_m20__41_carry__0_i_1_n_0),
        .O(rgb_g_m20__41_carry__0_i_5_n_0));
  (* HLUTNM = "lutpair2" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    rgb_g_m20__41_carry__0_i_6
       (.I0(rgb_g_m20__19_carry__0_n_5),
        .I1(rgb_g_m20_carry__1_n_7),
        .I2(rgb_data[11]),
        .I3(rgb_g_m20__41_carry__0_i_2_n_0),
        .O(rgb_g_m20__41_carry__0_i_6_n_0));
  (* HLUTNM = "lutpair1" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    rgb_g_m20__41_carry__0_i_7
       (.I0(rgb_g_m20__19_carry__0_n_6),
        .I1(rgb_g_m20_carry__0_n_4),
        .I2(rgb_data[10]),
        .I3(rgb_g_m20__41_carry__0_i_3_n_0),
        .O(rgb_g_m20__41_carry__0_i_7_n_0));
  (* HLUTNM = "lutpair0" *) 
  LUT5 #(
    .INIT(32'h69969696)) 
    rgb_g_m20__41_carry__0_i_8
       (.I0(rgb_g_m20__19_carry__0_n_7),
        .I1(rgb_g_m20_carry__0_n_5),
        .I2(rgb_data[9]),
        .I3(rgb_g_m20_carry__0_n_6),
        .I4(rgb_g_m20__19_carry_n_4),
        .O(rgb_g_m20__41_carry__0_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rgb_g_m20__41_carry__1
       (.CI(rgb_g_m20__41_carry__0_n_0),
        .CO({NLW_rgb_g_m20__41_carry__1_CO_UNCONNECTED[3],rgb_g_m20__41_carry__1_n_1,rgb_g_m20__41_carry__1_n_2,rgb_g_m20__41_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,rgb_g_m20__41_carry__1_i_1_n_0,rgb_g_m20__41_carry__1_i_2_n_0,rgb_g_m20__41_carry__1_i_3_n_0}),
        .O(rgb_g_m20[14:11]),
        .S({rgb_g_m20__41_carry__1_i_4_n_0,rgb_g_m20__41_carry__1_i_5_n_0,rgb_g_m20__41_carry__1_i_6_n_0,rgb_g_m20__41_carry__1_i_7_n_0}));
  (* HLUTNM = "lutpair5" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    rgb_g_m20__41_carry__1_i_1
       (.I0(rgb_g_m20_carry__1_n_1),
        .I1(rgb_g_m20__19_carry__1_n_6),
        .I2(rgb_data[14]),
        .O(rgb_g_m20__41_carry__1_i_1_n_0));
  (* HLUTNM = "lutpair4" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    rgb_g_m20__41_carry__1_i_2
       (.I0(rgb_g_m20_carry__1_n_1),
        .I1(rgb_g_m20__19_carry__1_n_7),
        .I2(rgb_data[13]),
        .O(rgb_g_m20__41_carry__1_i_2_n_0));
  (* HLUTNM = "lutpair3" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    rgb_g_m20__41_carry__1_i_3
       (.I0(rgb_g_m20__19_carry__0_n_4),
        .I1(rgb_g_m20_carry__1_n_6),
        .I2(rgb_data[12]),
        .O(rgb_g_m20__41_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'h17)) 
    rgb_g_m20__41_carry__1_i_4
       (.I0(rgb_data[15]),
        .I1(rgb_g_m20__19_carry__1_n_1),
        .I2(rgb_g_m20_carry__1_n_1),
        .O(rgb_g_m20__41_carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    rgb_g_m20__41_carry__1_i_5
       (.I0(rgb_g_m20__41_carry__1_i_1_n_0),
        .I1(rgb_g_m20_carry__1_n_1),
        .I2(rgb_g_m20__19_carry__1_n_1),
        .I3(rgb_data[15]),
        .O(rgb_g_m20__41_carry__1_i_5_n_0));
  (* HLUTNM = "lutpair5" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    rgb_g_m20__41_carry__1_i_6
       (.I0(rgb_g_m20_carry__1_n_1),
        .I1(rgb_g_m20__19_carry__1_n_6),
        .I2(rgb_data[14]),
        .I3(rgb_g_m20__41_carry__1_i_2_n_0),
        .O(rgb_g_m20__41_carry__1_i_6_n_0));
  (* HLUTNM = "lutpair4" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    rgb_g_m20__41_carry__1_i_7
       (.I0(rgb_g_m20_carry__1_n_1),
        .I1(rgb_g_m20__19_carry__1_n_7),
        .I2(rgb_data[13]),
        .I3(rgb_g_m20__41_carry__1_i_3_n_0),
        .O(rgb_g_m20__41_carry__1_i_7_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    rgb_g_m20__41_carry_i_1
       (.I0(rgb_g_m20__19_carry_n_4),
        .I1(rgb_g_m20_carry__0_n_6),
        .I2(rgb_data[8]),
        .O(rgb_g_m20__41_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    rgb_g_m20__41_carry_i_2
       (.I0(rgb_g_m20_carry__0_n_7),
        .I1(rgb_g_m20__19_carry_n_5),
        .O(rgb_g_m20__41_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    rgb_g_m20__41_carry_i_3
       (.I0(rgb_g_m20_carry_n_4),
        .I1(rgb_g_m20__19_carry_n_6),
        .O(rgb_g_m20__41_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    rgb_g_m20__41_carry_i_4
       (.I0(rgb_g_m20_carry_n_5),
        .I1(rgb_g_m20_carry_n_7),
        .O(rgb_g_m20__41_carry_i_4_n_0));
  CARRY4 rgb_g_m20_carry
       (.CI(1'b0),
        .CO({rgb_g_m20_carry_n_0,rgb_g_m20_carry_n_1,rgb_g_m20_carry_n_2,rgb_g_m20_carry_n_3}),
        .CYINIT(1'b0),
        .DI({rgb_data[9:8],1'b0,1'b1}),
        .O({rgb_g_m20_carry_n_4,rgb_g_m20_carry_n_5,rgb_g_m20[2],rgb_g_m20_carry_n_7}),
        .S({rgb_g_m20_carry_i_1_n_0,rgb_g_m20_carry_i_2_n_0,rgb_g_m20_carry_i_3_n_0,rgb_data[8]}));
  CARRY4 rgb_g_m20_carry__0
       (.CI(rgb_g_m20_carry_n_0),
        .CO({rgb_g_m20_carry__0_n_0,rgb_g_m20_carry__0_n_1,rgb_g_m20_carry__0_n_2,rgb_g_m20_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(rgb_data[13:10]),
        .O({rgb_g_m20_carry__0_n_4,rgb_g_m20_carry__0_n_5,rgb_g_m20_carry__0_n_6,rgb_g_m20_carry__0_n_7}),
        .S({rgb_g_m20_carry__0_i_1_n_0,rgb_g_m20_carry__0_i_2_n_0,rgb_g_m20_carry__0_i_3_n_0,rgb_g_m20_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    rgb_g_m20_carry__0_i_1
       (.I0(rgb_data[13]),
        .I1(rgb_data[15]),
        .O(rgb_g_m20_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    rgb_g_m20_carry__0_i_2
       (.I0(rgb_data[12]),
        .I1(rgb_data[14]),
        .O(rgb_g_m20_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    rgb_g_m20_carry__0_i_3
       (.I0(rgb_data[11]),
        .I1(rgb_data[13]),
        .O(rgb_g_m20_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    rgb_g_m20_carry__0_i_4
       (.I0(rgb_data[10]),
        .I1(rgb_data[12]),
        .O(rgb_g_m20_carry__0_i_4_n_0));
  CARRY4 rgb_g_m20_carry__1
       (.CI(rgb_g_m20_carry__0_n_0),
        .CO({NLW_rgb_g_m20_carry__1_CO_UNCONNECTED[3],rgb_g_m20_carry__1_n_1,NLW_rgb_g_m20_carry__1_CO_UNCONNECTED[1],rgb_g_m20_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,rgb_data[15:14]}),
        .O({NLW_rgb_g_m20_carry__1_O_UNCONNECTED[3:2],rgb_g_m20_carry__1_n_6,rgb_g_m20_carry__1_n_7}),
        .S({1'b0,1'b1,rgb_g_m20_carry__1_i_1_n_0,rgb_g_m20_carry__1_i_2_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    rgb_g_m20_carry__1_i_1
       (.I0(rgb_data[15]),
        .O(rgb_g_m20_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rgb_g_m20_carry__1_i_2
       (.I0(rgb_data[14]),
        .O(rgb_g_m20_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    rgb_g_m20_carry_i_1
       (.I0(rgb_data[9]),
        .I1(rgb_data[11]),
        .O(rgb_g_m20_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    rgb_g_m20_carry_i_2
       (.I0(rgb_data[8]),
        .I1(rgb_data[10]),
        .O(rgb_g_m20_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rgb_g_m20_carry_i_3
       (.I0(rgb_data[9]),
        .O(rgb_g_m20_carry_i_3_n_0));
  FDCE \rgb_g_m2_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_g_m20[10]),
        .Q(rgb_g_m2[10]));
  FDCE \rgb_g_m2_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_g_m20[11]),
        .Q(rgb_g_m2[11]));
  FDCE \rgb_g_m2_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_g_m20[12]),
        .Q(rgb_g_m2[12]));
  FDCE \rgb_g_m2_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_g_m20[13]),
        .Q(rgb_g_m2[13]));
  FDCE \rgb_g_m2_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_g_m20[14]),
        .Q(rgb_g_m2[14]));
  FDCE \rgb_g_m2_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_g_m20[2]),
        .Q(rgb_g_m2[2]));
  FDCE \rgb_g_m2_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_g_m20[3]),
        .Q(rgb_g_m2[3]));
  FDCE \rgb_g_m2_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_g_m20[4]),
        .Q(rgb_g_m2[4]));
  FDCE \rgb_g_m2_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_g_m20[5]),
        .Q(rgb_g_m2[5]));
  FDCE \rgb_g_m2_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_g_m20[6]),
        .Q(rgb_g_m2[6]));
  FDCE \rgb_g_m2_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_g_m20[7]),
        .Q(rgb_g_m2[7]));
  FDCE \rgb_g_m2_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_g_m20[8]),
        .Q(rgb_g_m2[8]));
  FDCE \rgb_g_m2_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_g_m20[9]),
        .Q(rgb_g_m2[9]));
  LUT2 #(
    .INIT(4'h6)) 
    \rgb_r_m0[8]_i_2 
       (.I0(rgb_data[18]),
        .I1(rgb_data[23]),
        .O(\rgb_r_m0[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rgb_r_m0[8]_i_3 
       (.I0(rgb_data[17]),
        .I1(rgb_data[22]),
        .O(\rgb_r_m0[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rgb_r_m0[8]_i_4 
       (.I0(rgb_data[16]),
        .I1(rgb_data[21]),
        .O(\rgb_r_m0[8]_i_4_n_0 ));
  FDCE \rgb_r_m0_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_r_m00[10]),
        .Q(rgb_r_m0[10]));
  FDCE \rgb_r_m0_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_r_m00[11]),
        .Q(rgb_r_m0[11]));
  FDCE \rgb_r_m0_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_r_m00[12]),
        .Q(rgb_r_m0[12]));
  CARRY4 \rgb_r_m0_reg[12]_i_1 
       (.CI(\rgb_r_m0_reg[8]_i_1_n_0 ),
        .CO({\rgb_r_m0_reg[12]_i_1_n_0 ,\rgb_r_m0_reg[12]_i_1_n_1 ,\rgb_r_m0_reg[12]_i_1_n_2 ,\rgb_r_m0_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(rgb_r_m00[12:9]),
        .S(rgb_data[22:19]));
  FDCE \rgb_r_m0_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_r_m00[13]),
        .Q(rgb_r_m0[13]));
  FDCE \rgb_r_m0_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_r_m00[14]),
        .Q(rgb_r_m0[14]));
  CARRY4 \rgb_r_m0_reg[14]_i_1 
       (.CI(\rgb_r_m0_reg[12]_i_1_n_0 ),
        .CO({\NLW_rgb_r_m0_reg[14]_i_1_CO_UNCONNECTED [3:2],rgb_r_m00[14],\NLW_rgb_r_m0_reg[14]_i_1_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_rgb_r_m0_reg[14]_i_1_O_UNCONNECTED [3:1],rgb_r_m00[13]}),
        .S({1'b0,1'b0,1'b1,rgb_data[23]}));
  FDCE \rgb_r_m0_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_data[16]),
        .Q(rgb_r_m0[1]));
  FDCE \rgb_r_m0_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_data[17]),
        .Q(rgb_r_m0[2]));
  FDCE \rgb_r_m0_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_data[18]),
        .Q(rgb_r_m0[3]));
  FDCE \rgb_r_m0_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_r_m00[5]),
        .Q(rgb_r_m0[5]));
  FDCE \rgb_r_m0_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_r_m00[6]),
        .Q(rgb_r_m0[6]));
  FDCE \rgb_r_m0_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_r_m00[7]),
        .Q(rgb_r_m0[7]));
  FDCE \rgb_r_m0_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_r_m00[8]),
        .Q(rgb_r_m0[8]));
  CARRY4 \rgb_r_m0_reg[8]_i_1 
       (.CI(1'b0),
        .CO({\rgb_r_m0_reg[8]_i_1_n_0 ,\rgb_r_m0_reg[8]_i_1_n_1 ,\rgb_r_m0_reg[8]_i_1_n_2 ,\rgb_r_m0_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({rgb_data[18:16],1'b0}),
        .O(rgb_r_m00[8:5]),
        .S({\rgb_r_m0[8]_i_2_n_0 ,\rgb_r_m0[8]_i_3_n_0 ,\rgb_r_m0[8]_i_4_n_0 ,rgb_data[20]}));
  FDCE \rgb_r_m0_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_r_m00[9]),
        .Q(rgb_r_m0[9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rgb_r_m10__19_carry
       (.CI(1'b0),
        .CO({rgb_r_m10__19_carry_n_0,rgb_r_m10__19_carry_n_1,rgb_r_m10__19_carry_n_2,rgb_r_m10__19_carry_n_3}),
        .CYINIT(1'b0),
        .DI({rgb_data[18:16],1'b0}),
        .O(rgb_r_m10[7:4]),
        .S({rgb_r_m10__19_carry_i_1_n_0,rgb_r_m10__19_carry_i_2_n_0,rgb_r_m10__19_carry_i_3_n_0,rgb_r_m10_carry_n_4}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rgb_r_m10__19_carry__0
       (.CI(rgb_r_m10__19_carry_n_0),
        .CO({rgb_r_m10__19_carry__0_n_0,rgb_r_m10__19_carry__0_n_1,rgb_r_m10__19_carry__0_n_2,rgb_r_m10__19_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(rgb_data[22:19]),
        .O(rgb_r_m10[11:8]),
        .S({rgb_r_m10__19_carry__0_i_1_n_0,rgb_r_m10__19_carry__0_i_2_n_0,rgb_r_m10__19_carry__0_i_3_n_0,rgb_r_m10__19_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    rgb_r_m10__19_carry__0_i_1
       (.I0(rgb_data[22]),
        .I1(rgb_r_m10_carry__1_n_5),
        .O(rgb_r_m10__19_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    rgb_r_m10__19_carry__0_i_2
       (.I0(rgb_data[21]),
        .I1(rgb_r_m10_carry__1_n_6),
        .O(rgb_r_m10__19_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    rgb_r_m10__19_carry__0_i_3
       (.I0(rgb_data[20]),
        .I1(rgb_r_m10_carry__1_n_7),
        .O(rgb_r_m10__19_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    rgb_r_m10__19_carry__0_i_4
       (.I0(rgb_data[19]),
        .I1(rgb_r_m10_carry__0_n_4),
        .O(rgb_r_m10__19_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rgb_r_m10__19_carry__1
       (.CI(rgb_r_m10__19_carry__0_n_0),
        .CO({NLW_rgb_r_m10__19_carry__1_CO_UNCONNECTED[3:1],rgb_r_m10__19_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,rgb_data[23]}),
        .O({NLW_rgb_r_m10__19_carry__1_O_UNCONNECTED[3:2],rgb_r_m10[13:12]}),
        .S({1'b0,1'b0,rgb_r_m10_carry__1_n_5,rgb_r_m10__19_carry__1_i_1_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    rgb_r_m10__19_carry__1_i_1
       (.I0(rgb_data[23]),
        .I1(rgb_r_m10_carry__1_n_5),
        .O(rgb_r_m10__19_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    rgb_r_m10__19_carry_i_1
       (.I0(rgb_data[18]),
        .I1(rgb_r_m10_carry__0_n_5),
        .O(rgb_r_m10__19_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    rgb_r_m10__19_carry_i_2
       (.I0(rgb_data[17]),
        .I1(rgb_r_m10_carry__0_n_6),
        .O(rgb_r_m10__19_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    rgb_r_m10__19_carry_i_3
       (.I0(rgb_data[16]),
        .I1(rgb_r_m10_carry__0_n_7),
        .O(rgb_r_m10__19_carry_i_3_n_0));
  CARRY4 rgb_r_m10_carry
       (.CI(1'b0),
        .CO({rgb_r_m10_carry_n_0,rgb_r_m10_carry_n_1,rgb_r_m10_carry_n_2,rgb_r_m10_carry_n_3}),
        .CYINIT(1'b0),
        .DI({rgb_data[17:16],1'b0,1'b1}),
        .O({rgb_r_m10_carry_n_4,rgb_r_m10[3:2],NLW_rgb_r_m10_carry_O_UNCONNECTED[0]}),
        .S({rgb_r_m10_carry_i_1_n_0,rgb_r_m10_carry_i_2_n_0,rgb_r_m10_carry_i_3_n_0,rgb_data[16]}));
  CARRY4 rgb_r_m10_carry__0
       (.CI(rgb_r_m10_carry_n_0),
        .CO({rgb_r_m10_carry__0_n_0,rgb_r_m10_carry__0_n_1,rgb_r_m10_carry__0_n_2,rgb_r_m10_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(rgb_data[21:18]),
        .O({rgb_r_m10_carry__0_n_4,rgb_r_m10_carry__0_n_5,rgb_r_m10_carry__0_n_6,rgb_r_m10_carry__0_n_7}),
        .S({rgb_r_m10_carry__0_i_1_n_0,rgb_r_m10_carry__0_i_2_n_0,rgb_r_m10_carry__0_i_3_n_0,rgb_r_m10_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    rgb_r_m10_carry__0_i_1
       (.I0(rgb_data[21]),
        .I1(rgb_data[23]),
        .O(rgb_r_m10_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    rgb_r_m10_carry__0_i_2
       (.I0(rgb_data[20]),
        .I1(rgb_data[22]),
        .O(rgb_r_m10_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    rgb_r_m10_carry__0_i_3
       (.I0(rgb_data[19]),
        .I1(rgb_data[21]),
        .O(rgb_r_m10_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    rgb_r_m10_carry__0_i_4
       (.I0(rgb_data[18]),
        .I1(rgb_data[20]),
        .O(rgb_r_m10_carry__0_i_4_n_0));
  CARRY4 rgb_r_m10_carry__1
       (.CI(rgb_r_m10_carry__0_n_0),
        .CO({NLW_rgb_r_m10_carry__1_CO_UNCONNECTED[3:2],rgb_r_m10_carry__1_n_2,rgb_r_m10_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,rgb_data[23:22]}),
        .O({NLW_rgb_r_m10_carry__1_O_UNCONNECTED[3],rgb_r_m10_carry__1_n_5,rgb_r_m10_carry__1_n_6,rgb_r_m10_carry__1_n_7}),
        .S({1'b0,1'b1,rgb_r_m10_carry__1_i_1_n_0,rgb_r_m10_carry__1_i_2_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    rgb_r_m10_carry__1_i_1
       (.I0(rgb_data[23]),
        .O(rgb_r_m10_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rgb_r_m10_carry__1_i_2
       (.I0(rgb_data[22]),
        .O(rgb_r_m10_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    rgb_r_m10_carry_i_1
       (.I0(rgb_data[17]),
        .I1(rgb_data[19]),
        .O(rgb_r_m10_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    rgb_r_m10_carry_i_2
       (.I0(rgb_data[16]),
        .I1(rgb_data[18]),
        .O(rgb_r_m10_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rgb_r_m10_carry_i_3
       (.I0(rgb_data[17]),
        .O(rgb_r_m10_carry_i_3_n_0));
  FDCE \rgb_r_m1_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_r_m10[10]),
        .Q(rgb_r_m1[10]));
  FDCE \rgb_r_m1_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_r_m10[11]),
        .Q(rgb_r_m1[11]));
  FDCE \rgb_r_m1_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_r_m10[12]),
        .Q(rgb_r_m1[12]));
  FDCE \rgb_r_m1_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_r_m10[13]),
        .Q(rgb_r_m1[13]));
  FDCE \rgb_r_m1_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_r_m10[2]),
        .Q(rgb_r_m1[2]));
  FDCE \rgb_r_m1_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_r_m10[3]),
        .Q(rgb_r_m1[3]));
  FDCE \rgb_r_m1_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_r_m10[4]),
        .Q(rgb_r_m1[4]));
  FDCE \rgb_r_m1_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_r_m10[5]),
        .Q(rgb_r_m1[5]));
  FDCE \rgb_r_m1_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_r_m10[6]),
        .Q(rgb_r_m1[6]));
  FDCE \rgb_r_m1_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_r_m10[7]),
        .Q(rgb_r_m1[7]));
  FDCE \rgb_r_m1_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_r_m10[8]),
        .Q(rgb_r_m1[8]));
  FDCE \rgb_r_m1_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_r_m10[9]),
        .Q(rgb_r_m1[9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rgb_r_m20__19_carry
       (.CI(1'b0),
        .CO({rgb_r_m20__19_carry_n_0,rgb_r_m20__19_carry_n_1,rgb_r_m20__19_carry_n_2,rgb_r_m20__19_carry_n_3}),
        .CYINIT(1'b0),
        .DI({rgb_data[18:16],1'b0}),
        .O(rgb_r_m20[8:5]),
        .S({rgb_r_m20__19_carry_i_1_n_0,rgb_r_m20__19_carry_i_2_n_0,rgb_r_m20__19_carry_i_3_n_0,rgb_r_m20_carry_n_6}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rgb_r_m20__19_carry__0
       (.CI(rgb_r_m20__19_carry_n_0),
        .CO({rgb_r_m20__19_carry__0_n_0,rgb_r_m20__19_carry__0_n_1,rgb_r_m20__19_carry__0_n_2,rgb_r_m20__19_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(rgb_data[22:19]),
        .O(rgb_r_m20[12:9]),
        .S({rgb_r_m20__19_carry__0_i_1_n_0,rgb_r_m20__19_carry__0_i_2_n_0,rgb_r_m20__19_carry__0_i_3_n_0,rgb_r_m20__19_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    rgb_r_m20__19_carry__0_i_1
       (.I0(rgb_data[22]),
        .I1(rgb_r_m20_carry__1_n_7),
        .O(rgb_r_m20__19_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    rgb_r_m20__19_carry__0_i_2
       (.I0(rgb_data[21]),
        .I1(rgb_r_m20_carry__0_n_4),
        .O(rgb_r_m20__19_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    rgb_r_m20__19_carry__0_i_3
       (.I0(rgb_data[20]),
        .I1(rgb_r_m20_carry__0_n_5),
        .O(rgb_r_m20__19_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    rgb_r_m20__19_carry__0_i_4
       (.I0(rgb_data[19]),
        .I1(rgb_r_m20_carry__0_n_6),
        .O(rgb_r_m20__19_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rgb_r_m20__19_carry__1
       (.CI(rgb_r_m20__19_carry__0_n_0),
        .CO({NLW_rgb_r_m20__19_carry__1_CO_UNCONNECTED[3:1],rgb_r_m20__19_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,rgb_data[23]}),
        .O({NLW_rgb_r_m20__19_carry__1_O_UNCONNECTED[3:2],rgb_r_m20[14:13]}),
        .S({1'b0,1'b0,rgb_r_m20_carry__1_n_5,rgb_r_m20__19_carry__1_i_1_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    rgb_r_m20__19_carry__1_i_1
       (.I0(rgb_data[23]),
        .I1(rgb_r_m20_carry__1_n_6),
        .O(rgb_r_m20__19_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    rgb_r_m20__19_carry_i_1
       (.I0(rgb_data[18]),
        .I1(rgb_r_m20_carry__0_n_7),
        .O(rgb_r_m20__19_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    rgb_r_m20__19_carry_i_2
       (.I0(rgb_data[17]),
        .I1(rgb_r_m20_carry_n_4),
        .O(rgb_r_m20__19_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    rgb_r_m20__19_carry_i_3
       (.I0(rgb_data[16]),
        .I1(rgb_r_m20_carry_n_5),
        .O(rgb_r_m20__19_carry_i_3_n_0));
  CARRY4 rgb_r_m20_carry
       (.CI(1'b0),
        .CO({rgb_r_m20_carry_n_0,rgb_r_m20_carry_n_1,rgb_r_m20_carry_n_2,rgb_r_m20_carry_n_3}),
        .CYINIT(1'b0),
        .DI({rgb_data[17:16],1'b0,1'b1}),
        .O({rgb_r_m20_carry_n_4,rgb_r_m20_carry_n_5,rgb_r_m20_carry_n_6,rgb_r_m20[4]}),
        .S({rgb_r_m20_carry_i_1_n_0,rgb_r_m20_carry_i_2_n_0,rgb_r_m20_carry_i_3_n_0,rgb_data[16]}));
  CARRY4 rgb_r_m20_carry__0
       (.CI(rgb_r_m20_carry_n_0),
        .CO({rgb_r_m20_carry__0_n_0,rgb_r_m20_carry__0_n_1,rgb_r_m20_carry__0_n_2,rgb_r_m20_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(rgb_data[21:18]),
        .O({rgb_r_m20_carry__0_n_4,rgb_r_m20_carry__0_n_5,rgb_r_m20_carry__0_n_6,rgb_r_m20_carry__0_n_7}),
        .S({rgb_r_m20_carry__0_i_1_n_0,rgb_r_m20_carry__0_i_2_n_0,rgb_r_m20_carry__0_i_3_n_0,rgb_r_m20_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    rgb_r_m20_carry__0_i_1
       (.I0(rgb_data[21]),
        .I1(rgb_data[23]),
        .O(rgb_r_m20_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    rgb_r_m20_carry__0_i_2
       (.I0(rgb_data[20]),
        .I1(rgb_data[22]),
        .O(rgb_r_m20_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    rgb_r_m20_carry__0_i_3
       (.I0(rgb_data[19]),
        .I1(rgb_data[21]),
        .O(rgb_r_m20_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    rgb_r_m20_carry__0_i_4
       (.I0(rgb_data[18]),
        .I1(rgb_data[20]),
        .O(rgb_r_m20_carry__0_i_4_n_0));
  CARRY4 rgb_r_m20_carry__1
       (.CI(rgb_r_m20_carry__0_n_0),
        .CO({NLW_rgb_r_m20_carry__1_CO_UNCONNECTED[3:2],rgb_r_m20_carry__1_n_2,rgb_r_m20_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,rgb_data[23:22]}),
        .O({NLW_rgb_r_m20_carry__1_O_UNCONNECTED[3],rgb_r_m20_carry__1_n_5,rgb_r_m20_carry__1_n_6,rgb_r_m20_carry__1_n_7}),
        .S({1'b0,1'b1,rgb_r_m20_carry__1_i_1_n_0,rgb_r_m20_carry__1_i_2_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    rgb_r_m20_carry__1_i_1
       (.I0(rgb_data[23]),
        .O(rgb_r_m20_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rgb_r_m20_carry__1_i_2
       (.I0(rgb_data[22]),
        .O(rgb_r_m20_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    rgb_r_m20_carry_i_1
       (.I0(rgb_data[17]),
        .I1(rgb_data[19]),
        .O(rgb_r_m20_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    rgb_r_m20_carry_i_2
       (.I0(rgb_data[16]),
        .I1(rgb_data[18]),
        .O(rgb_r_m20_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rgb_r_m20_carry_i_3
       (.I0(rgb_data[17]),
        .O(rgb_r_m20_carry_i_3_n_0));
  FDCE \rgb_r_m2_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_r_m20[10]),
        .Q(rgb_r_m2[10]));
  FDCE \rgb_r_m2_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_r_m20[11]),
        .Q(rgb_r_m2[11]));
  FDCE \rgb_r_m2_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_r_m20[12]),
        .Q(rgb_r_m2[12]));
  FDCE \rgb_r_m2_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_r_m20[13]),
        .Q(rgb_r_m2[13]));
  FDCE \rgb_r_m2_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_r_m20[14]),
        .Q(rgb_r_m2[14]));
  FDCE \rgb_r_m2_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_r_m20[4]),
        .Q(rgb_r_m2[4]));
  FDCE \rgb_r_m2_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_r_m20[5]),
        .Q(rgb_r_m2[5]));
  FDCE \rgb_r_m2_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_r_m20[6]),
        .Q(rgb_r_m2[6]));
  FDCE \rgb_r_m2_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_r_m20[7]),
        .Q(rgb_r_m2[7]));
  FDCE \rgb_r_m2_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_r_m20[8]),
        .Q(rgb_r_m2[8]));
  FDCE \rgb_r_m2_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_r_m20[9]),
        .Q(rgb_r_m2[9]));
  FDCE \rgb_valid_d_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_valid),
        .Q(rgb_valid_d[0]));
  FDCE \rgb_valid_d_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_valid_d[0]),
        .Q(rgb_valid_d[1]));
  FDCE \rgb_valid_d_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_valid_d[1]),
        .Q(ycbcr_valid));
  LUT1 #(
    .INIT(2'h1)) 
    \rgb_vsync_d[2]_i_1 
       (.I0(rst_n),
        .O(\rgb_vsync_d[2]_i_1_n_0 ));
  FDCE \rgb_vsync_d_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_vsync),
        .Q(rgb_vsync_d[0]));
  FDCE \rgb_vsync_d_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_vsync_d[0]),
        .Q(rgb_vsync_d[1]));
  FDCE \rgb_vsync_d_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\rgb_vsync_d[2]_i_1_n_0 ),
        .D(rgb_vsync_d[1]),
        .Q(ycbcr_vsync));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ycbcr_data[0]_INST_0 
       (.I0(Q),
        .I1(img_cr1[0]),
        .O(ycbcr_data[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ycbcr_data[10]_INST_0 
       (.I0(Q),
        .I1(img_cb1[2]),
        .O(ycbcr_data[10]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ycbcr_data[11]_INST_0 
       (.I0(Q),
        .I1(img_cb1[3]),
        .O(ycbcr_data[11]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ycbcr_data[12]_INST_0 
       (.I0(Q),
        .I1(img_cb1[4]),
        .O(ycbcr_data[12]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ycbcr_data[13]_INST_0 
       (.I0(Q),
        .I1(img_cb1[5]),
        .O(ycbcr_data[13]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ycbcr_data[14]_INST_0 
       (.I0(Q),
        .I1(img_cb1[6]),
        .O(ycbcr_data[14]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ycbcr_data[15]_INST_0 
       (.I0(Q),
        .I1(img_cb1[7]),
        .O(ycbcr_data[15]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ycbcr_data[16]_INST_0 
       (.I0(Q),
        .I1(img_y1[0]),
        .O(ycbcr_data[16]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ycbcr_data[17]_INST_0 
       (.I0(Q),
        .I1(img_y1[1]),
        .O(ycbcr_data[17]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ycbcr_data[18]_INST_0 
       (.I0(Q),
        .I1(img_y1[2]),
        .O(ycbcr_data[18]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ycbcr_data[19]_INST_0 
       (.I0(Q),
        .I1(img_y1[3]),
        .O(ycbcr_data[19]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ycbcr_data[1]_INST_0 
       (.I0(Q),
        .I1(img_cr1[1]),
        .O(ycbcr_data[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ycbcr_data[20]_INST_0 
       (.I0(Q),
        .I1(img_y1[4]),
        .O(ycbcr_data[20]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ycbcr_data[21]_INST_0 
       (.I0(Q),
        .I1(img_y1[5]),
        .O(ycbcr_data[21]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ycbcr_data[22]_INST_0 
       (.I0(Q),
        .I1(img_y1[6]),
        .O(ycbcr_data[22]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ycbcr_data[23]_INST_0 
       (.I0(Q),
        .I1(img_y1[7]),
        .O(ycbcr_data[23]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ycbcr_data[2]_INST_0 
       (.I0(Q),
        .I1(img_cr1[2]),
        .O(ycbcr_data[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ycbcr_data[3]_INST_0 
       (.I0(Q),
        .I1(img_cr1[3]),
        .O(ycbcr_data[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ycbcr_data[4]_INST_0 
       (.I0(Q),
        .I1(img_cr1[4]),
        .O(ycbcr_data[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ycbcr_data[5]_INST_0 
       (.I0(Q),
        .I1(img_cr1[5]),
        .O(ycbcr_data[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ycbcr_data[6]_INST_0 
       (.I0(Q),
        .I1(img_cr1[6]),
        .O(ycbcr_data[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ycbcr_data[7]_INST_0 
       (.I0(Q),
        .I1(img_cr1[7]),
        .O(ycbcr_data[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ycbcr_data[8]_INST_0 
       (.I0(Q),
        .I1(img_cb1[0]),
        .O(ycbcr_data[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ycbcr_data[9]_INST_0 
       (.I0(Q),
        .I1(img_cb1[1]),
        .O(ycbcr_data[9]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
