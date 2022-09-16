vlib work
vlib activehdl

vlib activehdl/xilinx_vip
vlib activehdl/xpm
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_vip_v1_1_12
vlib activehdl/processing_system7_vip_v1_0_14
vlib activehdl/xil_defaultlib
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/lib_pkg_v1_0_2
vlib activehdl/fifo_generator_v13_2_7
vlib activehdl/lib_fifo_v1_0_16
vlib activehdl/blk_mem_gen_v8_4_5
vlib activehdl/lib_bmg_v1_0_14
vlib activehdl/lib_srl_fifo_v1_0_2
vlib activehdl/axi_datamover_v5_1_28
vlib activehdl/axi_vdma_v6_3_14
vlib activehdl/axi_lite_ipif_v3_0_4
vlib activehdl/v_tc_v6_2_4
vlib activehdl/v_tc_v6_1_13
vlib activehdl/v_vid_in_axi4s_v4_0_9
vlib activehdl/v_axi4s_vid_out_v4_0_14
vlib activehdl/interrupt_control_v3_1_4
vlib activehdl/axi_gpio_v2_0_28
vlib activehdl/generic_baseblocks_v2_1_0
vlib activehdl/axi_register_slice_v2_1_26
vlib activehdl/axi_data_fifo_v2_1_25
vlib activehdl/axi_crossbar_v2_1_27
vlib activehdl/proc_sys_reset_v5_0_13
vlib activehdl/v_vid_in_axi4s_v5_0_1

vmap xilinx_vip activehdl/xilinx_vip
vmap xpm activehdl/xpm
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_12 activehdl/axi_vip_v1_1_12
vmap processing_system7_vip_v1_0_14 activehdl/processing_system7_vip_v1_0_14
vmap xil_defaultlib activehdl/xil_defaultlib
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap lib_pkg_v1_0_2 activehdl/lib_pkg_v1_0_2
vmap fifo_generator_v13_2_7 activehdl/fifo_generator_v13_2_7
vmap lib_fifo_v1_0_16 activehdl/lib_fifo_v1_0_16
vmap blk_mem_gen_v8_4_5 activehdl/blk_mem_gen_v8_4_5
vmap lib_bmg_v1_0_14 activehdl/lib_bmg_v1_0_14
vmap lib_srl_fifo_v1_0_2 activehdl/lib_srl_fifo_v1_0_2
vmap axi_datamover_v5_1_28 activehdl/axi_datamover_v5_1_28
vmap axi_vdma_v6_3_14 activehdl/axi_vdma_v6_3_14
vmap axi_lite_ipif_v3_0_4 activehdl/axi_lite_ipif_v3_0_4
vmap v_tc_v6_2_4 activehdl/v_tc_v6_2_4
vmap v_tc_v6_1_13 activehdl/v_tc_v6_1_13
vmap v_vid_in_axi4s_v4_0_9 activehdl/v_vid_in_axi4s_v4_0_9
vmap v_axi4s_vid_out_v4_0_14 activehdl/v_axi4s_vid_out_v4_0_14
vmap interrupt_control_v3_1_4 activehdl/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_28 activehdl/axi_gpio_v2_0_28
vmap generic_baseblocks_v2_1_0 activehdl/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_26 activehdl/axi_register_slice_v2_1_26
vmap axi_data_fifo_v2_1_25 activehdl/axi_data_fifo_v2_1_25
vmap axi_crossbar_v2_1_27 activehdl/axi_crossbar_v2_1_27
vmap proc_sys_reset_v5_0_13 activehdl/proc_sys_reset_v5_0_13
vmap v_vid_in_axi4s_v5_0_1 activehdl/v_vid_in_axi4s_v5_0_1

vlog -work xilinx_vip  -sv2k12 "+incdir+E:/FPGA_xilinx_vivado_newversion/Vivado/2022.1/data/xilinx_vip/include" \
"E:/FPGA_xilinx_vivado_newversion/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"E:/FPGA_xilinx_vivado_newversion/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"E:/FPGA_xilinx_vivado_newversion/Vivado/2022.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"E:/FPGA_xilinx_vivado_newversion/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"E:/FPGA_xilinx_vivado_newversion/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"E:/FPGA_xilinx_vivado_newversion/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"E:/FPGA_xilinx_vivado_newversion/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"E:/FPGA_xilinx_vivado_newversion/Vivado/2022.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"E:/FPGA_xilinx_vivado_newversion/Vivado/2022.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../ov5640_gesture.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ov5640_gesture.gen/sources_1/bd/system/ipshared/5765/hdl" "+incdir+../../../../ov5640_gesture.gen/sources_1/bd/system/ipshared/fc4b/hdl" "+incdir+E:/FPGA_xilinx_vivado_newversion/Vivado/2022.1/data/xilinx_vip/include" \
"E:/FPGA_xilinx_vivado_newversion/Vivado/2022.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"E:/FPGA_xilinx_vivado_newversion/Vivado/2022.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"E:/FPGA_xilinx_vivado_newversion/Vivado/2022.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"E:/FPGA_xilinx_vivado_newversion/Vivado/2022.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../ov5640_gesture.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ov5640_gesture.gen/sources_1/bd/system/ipshared/5765/hdl" "+incdir+../../../../ov5640_gesture.gen/sources_1/bd/system/ipshared/fc4b/hdl" "+incdir+E:/FPGA_xilinx_vivado_newversion/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../ov5640_gesture.gen/sources_1/bd/system/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_12  -sv2k12 "+incdir+../../../../ov5640_gesture.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ov5640_gesture.gen/sources_1/bd/system/ipshared/5765/hdl" "+incdir+../../../../ov5640_gesture.gen/sources_1/bd/system/ipshared/fc4b/hdl" "+incdir+E:/FPGA_xilinx_vivado_newversion/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../ov5640_gesture.gen/sources_1/bd/system/ipshared/1033/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_14  -sv2k12 "+incdir+../../../../ov5640_gesture.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ov5640_gesture.gen/sources_1/bd/system/ipshared/5765/hdl" "+incdir+../../../../ov5640_gesture.gen/sources_1/bd/system/ipshared/fc4b/hdl" "+incdir+E:/FPGA_xilinx_vivado_newversion/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../ov5640_gesture.gen/sources_1/bd/system/ipshared/5765/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../ov5640_gesture.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ov5640_gesture.gen/sources_1/bd/system/ipshared/5765/hdl" "+incdir+../../../../ov5640_gesture.gen/sources_1/bd/system/ipshared/fc4b/hdl" "+incdir+E:/FPGA_xilinx_vivado_newversion/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_processing_system7_0_0/sim/system_processing_system7_0_0.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../ov5640_gesture.gen/sources_1/bd/system/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work lib_pkg_v1_0_2 -93 \
"../../../../ov5640_gesture.gen/sources_1/bd/system/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vlog -work fifo_generator_v13_2_7  -v2k5 "+incdir+../../../../ov5640_gesture.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ov5640_gesture.gen/sources_1/bd/system/ipshared/5765/hdl" "+incdir+../../../../ov5640_gesture.gen/sources_1/bd/system/ipshared/fc4b/hdl" "+incdir+E:/FPGA_xilinx_vivado_newversion/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../ov5640_gesture.gen/sources_1/bd/system/ipshared/83df/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_7 -93 \
"../../../../ov5640_gesture.gen/sources_1/bd/system/ipshared/83df/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_7  -v2k5 "+incdir+../../../../ov5640_gesture.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ov5640_gesture.gen/sources_1/bd/system/ipshared/5765/hdl" "+incdir+../../../../ov5640_gesture.gen/sources_1/bd/system/ipshared/fc4b/hdl" "+incdir+E:/FPGA_xilinx_vivado_newversion/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../ov5640_gesture.gen/sources_1/bd/system/ipshared/83df/hdl/fifo_generator_v13_2_rfs.v" \

vcom -work lib_fifo_v1_0_16 -93 \
"../../../../ov5640_gesture.gen/sources_1/bd/system/ipshared/6c82/hdl/lib_fifo_v1_0_rfs.vhd" \

vlog -work blk_mem_gen_v8_4_5  -v2k5 "+incdir+../../../../ov5640_gesture.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ov5640_gesture.gen/sources_1/bd/system/ipshared/5765/hdl" "+incdir+../../../../ov5640_gesture.gen/sources_1/bd/system/ipshared/fc4b/hdl" "+incdir+E:/FPGA_xilinx_vivado_newversion/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../ov5640_gesture.gen/sources_1/bd/system/ipshared/25a8/simulation/blk_mem_gen_v8_4.v" \

vcom -work lib_bmg_v1_0_14 -93 \
"../../../../ov5640_gesture.gen/sources_1/bd/system/ipshared/3a3e/hdl/lib_bmg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -93 \
"../../../../ov5640_gesture.gen/sources_1/bd/system/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_28 -93 \
"../../../../ov5640_gesture.gen/sources_1/bd/system/ipshared/1bb8/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vlog -work axi_vdma_v6_3_14  -v2k5 "+incdir+../../../../ov5640_gesture.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ov5640_gesture.gen/sources_1/bd/system/ipshared/5765/hdl" "+incdir+../../../../ov5640_gesture.gen/sources_1/bd/system/ipshared/fc4b/hdl" "+incdir+E:/FPGA_xilinx_vivado_newversion/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../ov5640_gesture.gen/sources_1/bd/system/ipshared/fc4b/hdl/axi_vdma_v6_3_rfs.v" \

vcom -work axi_vdma_v6_3_14 -93 \
"../../../../ov5640_gesture.gen/sources_1/bd/system/ipshared/fc4b/hdl/axi_vdma_v6_3_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/system/ip/system_axi_vdma_0_0/sim/system_axi_vdma_0_0.vhd" \

vcom -work axi_lite_ipif_v3_0_4 -93 \
"../../../../ov5640_gesture.gen/sources_1/bd/system/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work v_tc_v6_2_4 -93 \
"../../../../ov5640_gesture.gen/sources_1/bd/system/ipshared/3e14/hdl/v_tc_v6_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/system/ip/system_v_tc_0_0/sim/system_v_tc_0_0.vhd" \

vcom -work v_tc_v6_1_13 -93 \
"../../../../ov5640_gesture.gen/sources_1/bd/system/ipshared/b92e/hdl/v_tc_v6_1_vh_rfs.vhd" \

vlog -work v_vid_in_axi4s_v4_0_9  -v2k5 "+incdir+../../../../ov5640_gesture.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ov5640_gesture.gen/sources_1/bd/system/ipshared/5765/hdl" "+incdir+../../../../ov5640_gesture.gen/sources_1/bd/system/ipshared/fc4b/hdl" "+incdir+E:/FPGA_xilinx_vivado_newversion/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../ov5640_gesture.gen/sources_1/bd/system/ipshared/b2aa/hdl/v_vid_in_axi4s_v4_0_vl_rfs.v" \

vlog -work v_axi4s_vid_out_v4_0_14  -v2k5 "+incdir+../../../../ov5640_gesture.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ov5640_gesture.gen/sources_1/bd/system/ipshared/5765/hdl" "+incdir+../../../../ov5640_gesture.gen/sources_1/bd/system/ipshared/fc4b/hdl" "+incdir+E:/FPGA_xilinx_vivado_newversion/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../ov5640_gesture.gen/sources_1/bd/system/ipshared/f733/hdl/v_axi4s_vid_out_v4_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../ov5640_gesture.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ov5640_gesture.gen/sources_1/bd/system/ipshared/5765/hdl" "+incdir+../../../../ov5640_gesture.gen/sources_1/bd/system/ipshared/fc4b/hdl" "+incdir+E:/FPGA_xilinx_vivado_newversion/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_v_axi4s_vid_out_0_0/sim/system_v_axi4s_vid_out_0_0.v" \
"../../../bd/system/ipshared/f810/src/rgb2lcd.v" \
"../../../bd/system/ip/system_rgb2lcd_0_0/sim/system_rgb2lcd_0_0.v" \
"../../../../ov5640_gesture.gen/sources_1/bd/system/ipshared/ab26/src/mmcme2_drp.v" \

vcom -work xil_defaultlib -93 \
"../../../../ov5640_gesture.gen/sources_1/bd/system/ipshared/ab26/src/axi_dynclk_S00_AXI.vhd" \
"../../../../ov5640_gesture.gen/sources_1/bd/system/ipshared/ab26/src/axi_dynclk.vhd" \
"../../../bd/system/ip/system_axi_dynclk_0_0/sim/system_axi_dynclk_0_0.vhd" \

vcom -work interrupt_control_v3_1_4 -93 \
"../../../../ov5640_gesture.gen/sources_1/bd/system/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_28 -93 \
"../../../../ov5640_gesture.gen/sources_1/bd/system/ipshared/3ed9/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/system/ip/system_axi_gpio_0_0/sim/system_axi_gpio_0_0.vhd" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../ov5640_gesture.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ov5640_gesture.gen/sources_1/bd/system/ipshared/5765/hdl" "+incdir+../../../../ov5640_gesture.gen/sources_1/bd/system/ipshared/fc4b/hdl" "+incdir+E:/FPGA_xilinx_vivado_newversion/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../ov5640_gesture.gen/sources_1/bd/system/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_26  -v2k5 "+incdir+../../../../ov5640_gesture.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ov5640_gesture.gen/sources_1/bd/system/ipshared/5765/hdl" "+incdir+../../../../ov5640_gesture.gen/sources_1/bd/system/ipshared/fc4b/hdl" "+incdir+E:/FPGA_xilinx_vivado_newversion/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../ov5640_gesture.gen/sources_1/bd/system/ipshared/0a3f/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_25  -v2k5 "+incdir+../../../../ov5640_gesture.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ov5640_gesture.gen/sources_1/bd/system/ipshared/5765/hdl" "+incdir+../../../../ov5640_gesture.gen/sources_1/bd/system/ipshared/fc4b/hdl" "+incdir+E:/FPGA_xilinx_vivado_newversion/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../ov5640_gesture.gen/sources_1/bd/system/ipshared/5390/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_27  -v2k5 "+incdir+../../../../ov5640_gesture.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ov5640_gesture.gen/sources_1/bd/system/ipshared/5765/hdl" "+incdir+../../../../ov5640_gesture.gen/sources_1/bd/system/ipshared/fc4b/hdl" "+incdir+E:/FPGA_xilinx_vivado_newversion/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../ov5640_gesture.gen/sources_1/bd/system/ipshared/3fa0/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../ov5640_gesture.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ov5640_gesture.gen/sources_1/bd/system/ipshared/5765/hdl" "+incdir+../../../../ov5640_gesture.gen/sources_1/bd/system/ipshared/fc4b/hdl" "+incdir+E:/FPGA_xilinx_vivado_newversion/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_xbar_0/sim/system_xbar_0.v" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../ov5640_gesture.gen/sources_1/bd/system/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/system/ip/system_rst_ps7_0_100M_1/sim/system_rst_ps7_0_100M_1.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../ov5640_gesture.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ov5640_gesture.gen/sources_1/bd/system/ipshared/5765/hdl" "+incdir+../../../../ov5640_gesture.gen/sources_1/bd/system/ipshared/fc4b/hdl" "+incdir+E:/FPGA_xilinx_vivado_newversion/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_xbar_1/sim/system_xbar_1.v" \

vlog -work v_vid_in_axi4s_v5_0_1  -v2k5 "+incdir+../../../../ov5640_gesture.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ov5640_gesture.gen/sources_1/bd/system/ipshared/5765/hdl" "+incdir+../../../../ov5640_gesture.gen/sources_1/bd/system/ipshared/fc4b/hdl" "+incdir+E:/FPGA_xilinx_vivado_newversion/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../ov5640_gesture.gen/sources_1/bd/system/ipshared/b872/hdl/v_vid_in_axi4s_v5_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../ov5640_gesture.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../ov5640_gesture.gen/sources_1/bd/system/ipshared/5765/hdl" "+incdir+../../../../ov5640_gesture.gen/sources_1/bd/system/ipshared/fc4b/hdl" "+incdir+E:/FPGA_xilinx_vivado_newversion/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_v_vid_in_axi4s_0_0/sim/system_v_vid_in_axi4s_0_0.v" \
"../../../bd/system/ipshared/9321/src/ov5640_capture_data.v" \
"../../../bd/system/ip/system_ov5640_capture_data_0_0/sim/system_ov5640_capture_data_0_0.v" \
"d:/xilinx_FPGA_prj/my_fpga_prj/ov5640_gesture/ov5640_gesture.gen/sources_1/bd/system/ip/system_rgb2ycbcr_0_1/system_rgb2ycbcr_0_1_sim_netlist.v" \
"../../../bd/system/ipshared/6e54/src/get_gesture_area.v" \
"../../../bd/system/ip/system_get_gesture_area_0_0/sim/system_get_gesture_area_0_0.v" \
"../../../bd/system/ip/system_auto_pc_0/system_auto_pc_0_sim_netlist.v" \
"../../../bd/system/ip/system_auto_pc_1/system_auto_pc_1_sim_netlist.v" \

vlog -work xil_defaultlib \
"glbl.v"

