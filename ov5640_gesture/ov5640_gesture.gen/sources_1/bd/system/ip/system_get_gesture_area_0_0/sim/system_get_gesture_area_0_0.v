// (c) Copyright 1995-2022 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:user:get_gesture_area:1.0
// IP Revision: 4

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "package_project" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module system_get_gesture_area_0_0 (
  clk,
  rst_n,
  ycbcr_vsync,
  ycbcr_clken,
  ycbcr_valid,
  ycbcr_data,
  rgb_data_syn,
  gesture_vsync,
  gesture_clken,
  gesture_valid,
  gesture_data
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_ov5640_capture_data_0_0_cmos_frame_clk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *)
input wire rst_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 ycbcr_in VSYNC" *)
input wire ycbcr_vsync;
input wire ycbcr_clken;
(* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 ycbcr_in ACTIVE_VIDEO" *)
input wire ycbcr_valid;
(* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 ycbcr_in DATA" *)
input wire [23 : 0] ycbcr_data;
input wire [23 : 0] rgb_data_syn;
(* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 gesture_out VSYNC" *)
output wire gesture_vsync;
output wire gesture_clken;
(* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 gesture_out ACTIVE_VIDEO" *)
output wire gesture_valid;
(* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 gesture_out DATA" *)
output wire [23 : 0] gesture_data;

  get_gesture_area #(
    .CB_MAX(139),
    .CB_MIN(37),
    .CR_MAX(183),
    .CR_MIN(123)
  ) inst (
    .clk(clk),
    .rst_n(rst_n),
    .ycbcr_vsync(ycbcr_vsync),
    .ycbcr_clken(ycbcr_clken),
    .ycbcr_valid(ycbcr_valid),
    .ycbcr_data(ycbcr_data),
    .rgb_data_syn(rgb_data_syn),
    .gesture_vsync(gesture_vsync),
    .gesture_clken(gesture_clken),
    .gesture_valid(gesture_valid),
    .gesture_data(gesture_data)
  );
endmodule
