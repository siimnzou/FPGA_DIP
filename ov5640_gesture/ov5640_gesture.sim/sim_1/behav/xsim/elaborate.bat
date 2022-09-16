@echo off
REM ****************************************************************************
REM Vivado (TM) v2022.1 (64-bit)
REM
REM Filename    : elaborate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for elaborating the compiled design
REM
REM Generated by Vivado on Wed Sep 14 14:53:42 +0800 2022
REM SW Build 3526262 on Mon Apr 18 15:48:16 MDT 2022
REM
REM IP Build 3524634 on Mon Apr 18 20:55:01 MDT 2022
REM
REM usage: elaborate.bat
REM
REM ****************************************************************************
REM elaborate design
echo "xelab --incr --debug typical --relax --mt 2 -L xil_defaultlib -L axi_infrastructure_v1_1_0 -L axi_vip_v1_1_12 -L processing_system7_vip_v1_0_14 -L lib_cdc_v1_0_2 -L lib_pkg_v1_0_2 -L fifo_generator_v13_2_7 -L lib_fifo_v1_0_16 -L blk_mem_gen_v8_4_5 -L lib_bmg_v1_0_14 -L lib_srl_fifo_v1_0_2 -L axi_datamover_v5_1_28 -L axi_vdma_v6_3_14 -L axi_lite_ipif_v3_0_4 -L v_tc_v6_2_4 -L v_tc_v6_1_13 -L v_vid_in_axi4s_v4_0_9 -L v_axi4s_vid_out_v4_0_14 -L interrupt_control_v3_1_4 -L axi_gpio_v2_0_28 -L generic_baseblocks_v2_1_0 -L axi_register_slice_v2_1_26 -L axi_data_fifo_v2_1_25 -L axi_crossbar_v2_1_27 -L axi_protocol_converter_v2_1_26 -L proc_sys_reset_v5_0_13 -L v_vid_in_axi4s_v5_0_1 -L uvm -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot system_wrapper_behav xil_defaultlib.system_wrapper xil_defaultlib.glbl -log elaborate.log"
call xelab  --incr --debug typical --relax --mt 2 -L xil_defaultlib -L axi_infrastructure_v1_1_0 -L axi_vip_v1_1_12 -L processing_system7_vip_v1_0_14 -L lib_cdc_v1_0_2 -L lib_pkg_v1_0_2 -L fifo_generator_v13_2_7 -L lib_fifo_v1_0_16 -L blk_mem_gen_v8_4_5 -L lib_bmg_v1_0_14 -L lib_srl_fifo_v1_0_2 -L axi_datamover_v5_1_28 -L axi_vdma_v6_3_14 -L axi_lite_ipif_v3_0_4 -L v_tc_v6_2_4 -L v_tc_v6_1_13 -L v_vid_in_axi4s_v4_0_9 -L v_axi4s_vid_out_v4_0_14 -L interrupt_control_v3_1_4 -L axi_gpio_v2_0_28 -L generic_baseblocks_v2_1_0 -L axi_register_slice_v2_1_26 -L axi_data_fifo_v2_1_25 -L axi_crossbar_v2_1_27 -L axi_protocol_converter_v2_1_26 -L proc_sys_reset_v5_0_13 -L v_vid_in_axi4s_v5_0_1 -L uvm -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot system_wrapper_behav xil_defaultlib.system_wrapper xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0