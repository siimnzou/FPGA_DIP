// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Thu Sep 15 10:34:09 2022
// Host        : Zou running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_get_gesture_area_0_0_sim_netlist.v
// Design      : system_get_gesture_area_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_get_gesture_area
   (gesture_vsync,
    gesture_clken,
    gesture_valid,
    gesture_data,
    ycbcr_data,
    rgb_data_syn,
    ycbcr_vsync,
    clk,
    ycbcr_clken,
    ycbcr_valid,
    rst_n);
  output gesture_vsync;
  output gesture_clken;
  output gesture_valid;
  output [23:0]gesture_data;
  input [15:0]ycbcr_data;
  input [23:0]rgb_data_syn;
  input ycbcr_vsync;
  input clk;
  input ycbcr_clken;
  input ycbcr_valid;
  input rst_n;

  wire clk;
  wire gesture_clken;
  wire [23:0]gesture_data;
  wire \gesture_data[0]_i_1_n_0 ;
  wire \gesture_data[10]_i_1_n_0 ;
  wire \gesture_data[11]_i_1_n_0 ;
  wire \gesture_data[12]_i_1_n_0 ;
  wire \gesture_data[13]_i_1_n_0 ;
  wire \gesture_data[14]_i_1_n_0 ;
  wire \gesture_data[15]_i_1_n_0 ;
  wire \gesture_data[16]_i_1_n_0 ;
  wire \gesture_data[17]_i_1_n_0 ;
  wire \gesture_data[18]_i_1_n_0 ;
  wire \gesture_data[19]_i_1_n_0 ;
  wire \gesture_data[1]_i_1_n_0 ;
  wire \gesture_data[20]_i_1_n_0 ;
  wire \gesture_data[21]_i_1_n_0 ;
  wire \gesture_data[22]_i_1_n_0 ;
  wire \gesture_data[23]_i_1_n_0 ;
  wire \gesture_data[23]_i_2_n_0 ;
  wire \gesture_data[23]_i_3_n_0 ;
  wire \gesture_data[23]_i_4_n_0 ;
  wire \gesture_data[23]_i_5_n_0 ;
  wire \gesture_data[23]_i_6_n_0 ;
  wire \gesture_data[23]_i_7_n_0 ;
  wire \gesture_data[2]_i_1_n_0 ;
  wire \gesture_data[3]_i_1_n_0 ;
  wire \gesture_data[4]_i_1_n_0 ;
  wire \gesture_data[5]_i_1_n_0 ;
  wire \gesture_data[6]_i_1_n_0 ;
  wire \gesture_data[7]_i_1_n_0 ;
  wire \gesture_data[8]_i_1_n_0 ;
  wire \gesture_data[9]_i_1_n_0 ;
  wire gesture_valid;
  wire gesture_vsync;
  wire gesture_vsync_i_1_n_0;
  wire [23:0]rgb_data_syn;
  wire rst_n;
  wire ycbcr_clken;
  wire [15:0]ycbcr_data;
  wire ycbcr_valid;
  wire ycbcr_vsync;

  FDCE gesture_clken_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(gesture_vsync_i_1_n_0),
        .D(ycbcr_clken),
        .Q(gesture_clken));
  LUT5 #(
    .INIT(32'h40000000)) 
    \gesture_data[0]_i_1 
       (.I0(\gesture_data[23]_i_2_n_0 ),
        .I1(\gesture_data[23]_i_3_n_0 ),
        .I2(\gesture_data[23]_i_4_n_0 ),
        .I3(ycbcr_data[7]),
        .I4(rgb_data_syn[0]),
        .O(\gesture_data[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h40000000)) 
    \gesture_data[10]_i_1 
       (.I0(\gesture_data[23]_i_2_n_0 ),
        .I1(\gesture_data[23]_i_3_n_0 ),
        .I2(\gesture_data[23]_i_4_n_0 ),
        .I3(ycbcr_data[7]),
        .I4(rgb_data_syn[10]),
        .O(\gesture_data[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h40000000)) 
    \gesture_data[11]_i_1 
       (.I0(\gesture_data[23]_i_2_n_0 ),
        .I1(\gesture_data[23]_i_3_n_0 ),
        .I2(\gesture_data[23]_i_4_n_0 ),
        .I3(ycbcr_data[7]),
        .I4(rgb_data_syn[11]),
        .O(\gesture_data[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h40000000)) 
    \gesture_data[12]_i_1 
       (.I0(\gesture_data[23]_i_2_n_0 ),
        .I1(\gesture_data[23]_i_3_n_0 ),
        .I2(\gesture_data[23]_i_4_n_0 ),
        .I3(ycbcr_data[7]),
        .I4(rgb_data_syn[12]),
        .O(\gesture_data[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h40000000)) 
    \gesture_data[13]_i_1 
       (.I0(\gesture_data[23]_i_2_n_0 ),
        .I1(\gesture_data[23]_i_3_n_0 ),
        .I2(\gesture_data[23]_i_4_n_0 ),
        .I3(ycbcr_data[7]),
        .I4(rgb_data_syn[13]),
        .O(\gesture_data[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h40000000)) 
    \gesture_data[14]_i_1 
       (.I0(\gesture_data[23]_i_2_n_0 ),
        .I1(\gesture_data[23]_i_3_n_0 ),
        .I2(\gesture_data[23]_i_4_n_0 ),
        .I3(ycbcr_data[7]),
        .I4(rgb_data_syn[14]),
        .O(\gesture_data[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h40000000)) 
    \gesture_data[15]_i_1 
       (.I0(\gesture_data[23]_i_2_n_0 ),
        .I1(\gesture_data[23]_i_3_n_0 ),
        .I2(\gesture_data[23]_i_4_n_0 ),
        .I3(ycbcr_data[7]),
        .I4(rgb_data_syn[15]),
        .O(\gesture_data[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h40000000)) 
    \gesture_data[16]_i_1 
       (.I0(\gesture_data[23]_i_2_n_0 ),
        .I1(\gesture_data[23]_i_3_n_0 ),
        .I2(\gesture_data[23]_i_4_n_0 ),
        .I3(ycbcr_data[7]),
        .I4(rgb_data_syn[16]),
        .O(\gesture_data[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h40000000)) 
    \gesture_data[17]_i_1 
       (.I0(\gesture_data[23]_i_2_n_0 ),
        .I1(\gesture_data[23]_i_3_n_0 ),
        .I2(\gesture_data[23]_i_4_n_0 ),
        .I3(ycbcr_data[7]),
        .I4(rgb_data_syn[17]),
        .O(\gesture_data[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h40000000)) 
    \gesture_data[18]_i_1 
       (.I0(\gesture_data[23]_i_2_n_0 ),
        .I1(\gesture_data[23]_i_3_n_0 ),
        .I2(\gesture_data[23]_i_4_n_0 ),
        .I3(ycbcr_data[7]),
        .I4(rgb_data_syn[18]),
        .O(\gesture_data[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h40000000)) 
    \gesture_data[19]_i_1 
       (.I0(\gesture_data[23]_i_2_n_0 ),
        .I1(\gesture_data[23]_i_3_n_0 ),
        .I2(\gesture_data[23]_i_4_n_0 ),
        .I3(ycbcr_data[7]),
        .I4(rgb_data_syn[19]),
        .O(\gesture_data[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h40000000)) 
    \gesture_data[1]_i_1 
       (.I0(\gesture_data[23]_i_2_n_0 ),
        .I1(\gesture_data[23]_i_3_n_0 ),
        .I2(\gesture_data[23]_i_4_n_0 ),
        .I3(ycbcr_data[7]),
        .I4(rgb_data_syn[1]),
        .O(\gesture_data[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h40000000)) 
    \gesture_data[20]_i_1 
       (.I0(\gesture_data[23]_i_2_n_0 ),
        .I1(\gesture_data[23]_i_3_n_0 ),
        .I2(\gesture_data[23]_i_4_n_0 ),
        .I3(ycbcr_data[7]),
        .I4(rgb_data_syn[20]),
        .O(\gesture_data[20]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h40000000)) 
    \gesture_data[21]_i_1 
       (.I0(\gesture_data[23]_i_2_n_0 ),
        .I1(\gesture_data[23]_i_3_n_0 ),
        .I2(\gesture_data[23]_i_4_n_0 ),
        .I3(ycbcr_data[7]),
        .I4(rgb_data_syn[21]),
        .O(\gesture_data[21]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h40000000)) 
    \gesture_data[22]_i_1 
       (.I0(\gesture_data[23]_i_2_n_0 ),
        .I1(\gesture_data[23]_i_3_n_0 ),
        .I2(\gesture_data[23]_i_4_n_0 ),
        .I3(ycbcr_data[7]),
        .I4(rgb_data_syn[22]),
        .O(\gesture_data[22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h40000000)) 
    \gesture_data[23]_i_1 
       (.I0(\gesture_data[23]_i_2_n_0 ),
        .I1(\gesture_data[23]_i_3_n_0 ),
        .I2(\gesture_data[23]_i_4_n_0 ),
        .I3(ycbcr_data[7]),
        .I4(rgb_data_syn[23]),
        .O(\gesture_data[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA2A2A2FF)) 
    \gesture_data[23]_i_2 
       (.I0(ycbcr_data[7]),
        .I1(\gesture_data[23]_i_5_n_0 ),
        .I2(ycbcr_data[6]),
        .I3(\gesture_data[23]_i_6_n_0 ),
        .I4(ycbcr_data[14]),
        .O(\gesture_data[23]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0100FFFF)) 
    \gesture_data[23]_i_3 
       (.I0(ycbcr_data[12]),
        .I1(ycbcr_data[14]),
        .I2(ycbcr_data[13]),
        .I3(\gesture_data[23]_i_7_n_0 ),
        .I4(ycbcr_data[15]),
        .O(\gesture_data[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \gesture_data[23]_i_4 
       (.I0(ycbcr_data[3]),
        .I1(ycbcr_data[6]),
        .I2(ycbcr_data[1]),
        .I3(ycbcr_data[2]),
        .I4(ycbcr_data[4]),
        .I5(ycbcr_data[5]),
        .O(\gesture_data[23]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h01555555FFFFFFFF)) 
    \gesture_data[23]_i_5 
       (.I0(ycbcr_data[4]),
        .I1(ycbcr_data[0]),
        .I2(ycbcr_data[1]),
        .I3(ycbcr_data[3]),
        .I4(ycbcr_data[2]),
        .I5(ycbcr_data[5]),
        .O(\gesture_data[23]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEAAAAAAAA)) 
    \gesture_data[23]_i_6 
       (.I0(ycbcr_data[15]),
        .I1(ycbcr_data[11]),
        .I2(ycbcr_data[10]),
        .I3(ycbcr_data[9]),
        .I4(ycbcr_data[12]),
        .I5(ycbcr_data[13]),
        .O(\gesture_data[23]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h15FF)) 
    \gesture_data[23]_i_7 
       (.I0(ycbcr_data[10]),
        .I1(ycbcr_data[9]),
        .I2(ycbcr_data[8]),
        .I3(ycbcr_data[11]),
        .O(\gesture_data[23]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h40000000)) 
    \gesture_data[2]_i_1 
       (.I0(\gesture_data[23]_i_2_n_0 ),
        .I1(\gesture_data[23]_i_3_n_0 ),
        .I2(\gesture_data[23]_i_4_n_0 ),
        .I3(ycbcr_data[7]),
        .I4(rgb_data_syn[2]),
        .O(\gesture_data[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h40000000)) 
    \gesture_data[3]_i_1 
       (.I0(\gesture_data[23]_i_2_n_0 ),
        .I1(\gesture_data[23]_i_3_n_0 ),
        .I2(\gesture_data[23]_i_4_n_0 ),
        .I3(ycbcr_data[7]),
        .I4(rgb_data_syn[3]),
        .O(\gesture_data[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h40000000)) 
    \gesture_data[4]_i_1 
       (.I0(\gesture_data[23]_i_2_n_0 ),
        .I1(\gesture_data[23]_i_3_n_0 ),
        .I2(\gesture_data[23]_i_4_n_0 ),
        .I3(ycbcr_data[7]),
        .I4(rgb_data_syn[4]),
        .O(\gesture_data[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h40000000)) 
    \gesture_data[5]_i_1 
       (.I0(\gesture_data[23]_i_2_n_0 ),
        .I1(\gesture_data[23]_i_3_n_0 ),
        .I2(\gesture_data[23]_i_4_n_0 ),
        .I3(ycbcr_data[7]),
        .I4(rgb_data_syn[5]),
        .O(\gesture_data[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h40000000)) 
    \gesture_data[6]_i_1 
       (.I0(\gesture_data[23]_i_2_n_0 ),
        .I1(\gesture_data[23]_i_3_n_0 ),
        .I2(\gesture_data[23]_i_4_n_0 ),
        .I3(ycbcr_data[7]),
        .I4(rgb_data_syn[6]),
        .O(\gesture_data[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h40000000)) 
    \gesture_data[7]_i_1 
       (.I0(\gesture_data[23]_i_2_n_0 ),
        .I1(\gesture_data[23]_i_3_n_0 ),
        .I2(\gesture_data[23]_i_4_n_0 ),
        .I3(ycbcr_data[7]),
        .I4(rgb_data_syn[7]),
        .O(\gesture_data[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h40000000)) 
    \gesture_data[8]_i_1 
       (.I0(\gesture_data[23]_i_2_n_0 ),
        .I1(\gesture_data[23]_i_3_n_0 ),
        .I2(\gesture_data[23]_i_4_n_0 ),
        .I3(ycbcr_data[7]),
        .I4(rgb_data_syn[8]),
        .O(\gesture_data[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h40000000)) 
    \gesture_data[9]_i_1 
       (.I0(\gesture_data[23]_i_2_n_0 ),
        .I1(\gesture_data[23]_i_3_n_0 ),
        .I2(\gesture_data[23]_i_4_n_0 ),
        .I3(ycbcr_data[7]),
        .I4(rgb_data_syn[9]),
        .O(\gesture_data[9]_i_1_n_0 ));
  FDCE \gesture_data_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(gesture_vsync_i_1_n_0),
        .D(\gesture_data[0]_i_1_n_0 ),
        .Q(gesture_data[0]));
  FDCE \gesture_data_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(gesture_vsync_i_1_n_0),
        .D(\gesture_data[10]_i_1_n_0 ),
        .Q(gesture_data[10]));
  FDCE \gesture_data_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(gesture_vsync_i_1_n_0),
        .D(\gesture_data[11]_i_1_n_0 ),
        .Q(gesture_data[11]));
  FDCE \gesture_data_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(gesture_vsync_i_1_n_0),
        .D(\gesture_data[12]_i_1_n_0 ),
        .Q(gesture_data[12]));
  FDCE \gesture_data_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(gesture_vsync_i_1_n_0),
        .D(\gesture_data[13]_i_1_n_0 ),
        .Q(gesture_data[13]));
  FDCE \gesture_data_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .CLR(gesture_vsync_i_1_n_0),
        .D(\gesture_data[14]_i_1_n_0 ),
        .Q(gesture_data[14]));
  FDCE \gesture_data_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .CLR(gesture_vsync_i_1_n_0),
        .D(\gesture_data[15]_i_1_n_0 ),
        .Q(gesture_data[15]));
  FDCE \gesture_data_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .CLR(gesture_vsync_i_1_n_0),
        .D(\gesture_data[16]_i_1_n_0 ),
        .Q(gesture_data[16]));
  FDCE \gesture_data_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .CLR(gesture_vsync_i_1_n_0),
        .D(\gesture_data[17]_i_1_n_0 ),
        .Q(gesture_data[17]));
  FDCE \gesture_data_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .CLR(gesture_vsync_i_1_n_0),
        .D(\gesture_data[18]_i_1_n_0 ),
        .Q(gesture_data[18]));
  FDCE \gesture_data_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .CLR(gesture_vsync_i_1_n_0),
        .D(\gesture_data[19]_i_1_n_0 ),
        .Q(gesture_data[19]));
  FDCE \gesture_data_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(gesture_vsync_i_1_n_0),
        .D(\gesture_data[1]_i_1_n_0 ),
        .Q(gesture_data[1]));
  FDCE \gesture_data_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .CLR(gesture_vsync_i_1_n_0),
        .D(\gesture_data[20]_i_1_n_0 ),
        .Q(gesture_data[20]));
  FDCE \gesture_data_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .CLR(gesture_vsync_i_1_n_0),
        .D(\gesture_data[21]_i_1_n_0 ),
        .Q(gesture_data[21]));
  FDCE \gesture_data_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .CLR(gesture_vsync_i_1_n_0),
        .D(\gesture_data[22]_i_1_n_0 ),
        .Q(gesture_data[22]));
  FDCE \gesture_data_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .CLR(gesture_vsync_i_1_n_0),
        .D(\gesture_data[23]_i_1_n_0 ),
        .Q(gesture_data[23]));
  FDCE \gesture_data_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(gesture_vsync_i_1_n_0),
        .D(\gesture_data[2]_i_1_n_0 ),
        .Q(gesture_data[2]));
  FDCE \gesture_data_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(gesture_vsync_i_1_n_0),
        .D(\gesture_data[3]_i_1_n_0 ),
        .Q(gesture_data[3]));
  FDCE \gesture_data_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(gesture_vsync_i_1_n_0),
        .D(\gesture_data[4]_i_1_n_0 ),
        .Q(gesture_data[4]));
  FDCE \gesture_data_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(gesture_vsync_i_1_n_0),
        .D(\gesture_data[5]_i_1_n_0 ),
        .Q(gesture_data[5]));
  FDCE \gesture_data_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(gesture_vsync_i_1_n_0),
        .D(\gesture_data[6]_i_1_n_0 ),
        .Q(gesture_data[6]));
  FDCE \gesture_data_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(gesture_vsync_i_1_n_0),
        .D(\gesture_data[7]_i_1_n_0 ),
        .Q(gesture_data[7]));
  FDCE \gesture_data_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(gesture_vsync_i_1_n_0),
        .D(\gesture_data[8]_i_1_n_0 ),
        .Q(gesture_data[8]));
  FDCE \gesture_data_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(gesture_vsync_i_1_n_0),
        .D(\gesture_data[9]_i_1_n_0 ),
        .Q(gesture_data[9]));
  FDCE gesture_valid_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(gesture_vsync_i_1_n_0),
        .D(ycbcr_valid),
        .Q(gesture_valid));
  LUT1 #(
    .INIT(2'h1)) 
    gesture_vsync_i_1
       (.I0(rst_n),
        .O(gesture_vsync_i_1_n_0));
  FDCE gesture_vsync_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(gesture_vsync_i_1_n_0),
        .D(ycbcr_vsync),
        .Q(gesture_vsync));
endmodule

(* CHECK_LICENSE_TYPE = "system_get_gesture_area_0_0,get_gesture_area,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "get_gesture_area,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    rst_n,
    ycbcr_vsync,
    ycbcr_clken,
    ycbcr_valid,
    ycbcr_data,
    rgb_data_syn,
    gesture_vsync,
    gesture_clken,
    gesture_valid,
    gesture_data);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_ov5640_capture_data_0_0_cmos_frame_clk, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 ycbcr_in VSYNC" *) input ycbcr_vsync;
  input ycbcr_clken;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 ycbcr_in ACTIVE_VIDEO" *) input ycbcr_valid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 ycbcr_in DATA" *) input [23:0]ycbcr_data;
  input [23:0]rgb_data_syn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 gesture_out VSYNC" *) output gesture_vsync;
  output gesture_clken;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 gesture_out ACTIVE_VIDEO" *) output gesture_valid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 gesture_out DATA" *) output [23:0]gesture_data;

  wire clk;
  wire gesture_clken;
  wire [23:0]gesture_data;
  wire gesture_valid;
  wire gesture_vsync;
  wire [23:0]rgb_data_syn;
  wire rst_n;
  wire ycbcr_clken;
  wire [23:0]ycbcr_data;
  wire ycbcr_valid;
  wire ycbcr_vsync;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_get_gesture_area inst
       (.clk(clk),
        .gesture_clken(gesture_clken),
        .gesture_data(gesture_data),
        .gesture_valid(gesture_valid),
        .gesture_vsync(gesture_vsync),
        .rgb_data_syn(rgb_data_syn),
        .rst_n(rst_n),
        .ycbcr_clken(ycbcr_clken),
        .ycbcr_data(ycbcr_data[15:0]),
        .ycbcr_valid(ycbcr_valid),
        .ycbcr_vsync(ycbcr_vsync));
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
