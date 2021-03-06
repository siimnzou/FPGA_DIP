transcript on
if ![file isdirectory verilog_libs] {
	file mkdir verilog_libs
}

vlib verilog_libs/altera_ver
vmap altera_ver ./verilog_libs/altera_ver
vlog -vlog01compat -work altera_ver {d:/fpga/quartus 2/quartus/eda/sim_lib/altera_primitives.v}

vlib verilog_libs/lpm_ver
vmap lpm_ver ./verilog_libs/lpm_ver
vlog -vlog01compat -work lpm_ver {d:/fpga/quartus 2/quartus/eda/sim_lib/220model.v}

vlib verilog_libs/sgate_ver
vmap sgate_ver ./verilog_libs/sgate_ver
vlog -vlog01compat -work sgate_ver {d:/fpga/quartus 2/quartus/eda/sim_lib/sgate.v}

vlib verilog_libs/altera_mf_ver
vmap altera_mf_ver ./verilog_libs/altera_mf_ver
vlog -vlog01compat -work altera_mf_ver {d:/fpga/quartus 2/quartus/eda/sim_lib/altera_mf.v}

vlib verilog_libs/altera_lnsim_ver
vmap altera_lnsim_ver ./verilog_libs/altera_lnsim_ver
vlog -sv -work altera_lnsim_ver {d:/fpga/quartus 2/quartus/eda/sim_lib/altera_lnsim.sv}

vlib verilog_libs/cycloneive_ver
vmap cycloneive_ver ./verilog_libs/cycloneive_ver
vlog -vlog01compat -work cycloneive_ver {d:/fpga/quartus 2/quartus/eda/sim_lib/cycloneive_atoms.v}

if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+G:/FPGA_DIP/OV5640_VGA_SOBEL_Ero_Dli/RTL {G:/FPGA_DIP/OV5640_VGA_SOBEL_Ero_Dli/RTL/OV5640_VGA_SOBEL.v}
vlog -vlog01compat -work work +incdir+G:/FPGA_DIP/OV5640_VGA_SOBEL_Ero_Dli/RTL/SOBEL {G:/FPGA_DIP/OV5640_VGA_SOBEL_Ero_Dli/RTL/SOBEL/DIP_sobel.v}
vlog -vlog01compat -work work +incdir+G:/FPGA_DIP/OV5640_VGA_SOBEL_Ero_Dli/RTL/SOBEL {G:/FPGA_DIP/OV5640_VGA_SOBEL_Ero_Dli/RTL/SOBEL/DIP_rgb2ycrcb.v}
vlog -vlog01compat -work work +incdir+G:/FPGA_DIP/OV5640_VGA_SOBEL_Ero_Dli/RTL/SOBEL {G:/FPGA_DIP/OV5640_VGA_SOBEL_Ero_Dli/RTL/SOBEL/sobel_detect.v}
vlog -vlog01compat -work work +incdir+G:/FPGA_DIP/OV5640_VGA_SOBEL_Ero_Dli/RTL/SOBEL {G:/FPGA_DIP/OV5640_VGA_SOBEL_Ero_Dli/RTL/SOBEL/get_3x3_matrix.v}
vlog -vlog01compat -work work +incdir+G:/FPGA_DIP/OV5640_VGA_SOBEL_Ero_Dli/QUARTUSPRJ/ip_core/fifo {G:/FPGA_DIP/OV5640_VGA_SOBEL_Ero_Dli/QUARTUSPRJ/ip_core/fifo/fifo.v}
vlog -vlog01compat -work work +incdir+G:/FPGA_DIP/OV5640_VGA_SOBEL_Ero_Dli/QUARTUSPRJ/ip_core/sdram_fifo {G:/FPGA_DIP/OV5640_VGA_SOBEL_Ero_Dli/QUARTUSPRJ/ip_core/sdram_fifo/sdram_fifo.v}
vlog -vlog01compat -work work +incdir+G:/FPGA_DIP/OV5640_VGA_SOBEL_Ero_Dli/QUARTUSPRJ/ip_core/clk_gen {G:/FPGA_DIP/OV5640_VGA_SOBEL_Ero_Dli/QUARTUSPRJ/ip_core/clk_gen/CLK_VGA.v}
vlog -vlog01compat -work work +incdir+G:/FPGA_DIP/OV5640_VGA_SOBEL_Ero_Dli/QUARTUSPRJ/ip_core/clk_gen {G:/FPGA_DIP/OV5640_VGA_SOBEL_Ero_Dli/QUARTUSPRJ/ip_core/clk_gen/CLK_GEN.v}
vlog -vlog01compat -work work +incdir+G:/FPGA_DIP/OV5640_VGA_SOBEL_Ero_Dli/RTL {G:/FPGA_DIP/OV5640_VGA_SOBEL_Ero_Dli/RTL/VGA_CTRL.v}
vlog -vlog01compat -work work +incdir+G:/FPGA_DIP/OV5640_VGA_SOBEL_Ero_Dli/RTL {G:/FPGA_DIP/OV5640_VGA_SOBEL_Ero_Dli/RTL/SDRAM_WR.v}
vlog -vlog01compat -work work +incdir+G:/FPGA_DIP/OV5640_VGA_SOBEL_Ero_Dli/RTL {G:/FPGA_DIP/OV5640_VGA_SOBEL_Ero_Dli/RTL/SDRAM_RD.v}
vlog -vlog01compat -work work +incdir+G:/FPGA_DIP/OV5640_VGA_SOBEL_Ero_Dli/RTL {G:/FPGA_DIP/OV5640_VGA_SOBEL_Ero_Dli/RTL/SDRAM_INIT.v}
vlog -vlog01compat -work work +incdir+G:/FPGA_DIP/OV5640_VGA_SOBEL_Ero_Dli/RTL {G:/FPGA_DIP/OV5640_VGA_SOBEL_Ero_Dli/RTL/SDRAM_FIFO.v}
vlog -vlog01compat -work work +incdir+G:/FPGA_DIP/OV5640_VGA_SOBEL_Ero_Dli/RTL {G:/FPGA_DIP/OV5640_VGA_SOBEL_Ero_Dli/RTL/SDRAM_CTRL.v}
vlog -vlog01compat -work work +incdir+G:/FPGA_DIP/OV5640_VGA_SOBEL_Ero_Dli/RTL {G:/FPGA_DIP/OV5640_VGA_SOBEL_Ero_Dli/RTL/SDRAM_AREF.v}
vlog -vlog01compat -work work +incdir+G:/FPGA_DIP/OV5640_VGA_SOBEL_Ero_Dli/RTL {G:/FPGA_DIP/OV5640_VGA_SOBEL_Ero_Dli/RTL/SDRAM_ARBIT.v}
vlog -vlog01compat -work work +incdir+G:/FPGA_DIP/OV5640_VGA_SOBEL_Ero_Dli/RTL {G:/FPGA_DIP/OV5640_VGA_SOBEL_Ero_Dli/RTL/SDRAM.v}
vlog -vlog01compat -work work +incdir+G:/FPGA_DIP/OV5640_VGA_SOBEL_Ero_Dli/RTL {G:/FPGA_DIP/OV5640_VGA_SOBEL_Ero_Dli/RTL/OV5640_REG_CFG.v}
vlog -vlog01compat -work work +incdir+G:/FPGA_DIP/OV5640_VGA_SOBEL_Ero_Dli/RTL {G:/FPGA_DIP/OV5640_VGA_SOBEL_Ero_Dli/RTL/OV5640_DATA.v}
vlog -vlog01compat -work work +incdir+G:/FPGA_DIP/OV5640_VGA_SOBEL_Ero_Dli/RTL {G:/FPGA_DIP/OV5640_VGA_SOBEL_Ero_Dli/RTL/OV5640_CTRL.v}
vlog -vlog01compat -work work +incdir+G:/FPGA_DIP/OV5640_VGA_SOBEL_Ero_Dli/RTL {G:/FPGA_DIP/OV5640_VGA_SOBEL_Ero_Dli/RTL/OV5640_CFG.v}
vlog -vlog01compat -work work +incdir+G:/FPGA_DIP/OV5640_VGA_SOBEL_Ero_Dli/RTL {G:/FPGA_DIP/OV5640_VGA_SOBEL_Ero_Dli/RTL/IIC_CTRL.v}
vlog -vlog01compat -work work +incdir+G:/FPGA_DIP/OV5640_VGA_SOBEL_Ero_Dli/QUARTUSPRJ/db {G:/FPGA_DIP/OV5640_VGA_SOBEL_Ero_Dli/QUARTUSPRJ/db/clk_gen_altpll.v}
vlog -vlog01compat -work work +incdir+G:/FPGA_DIP/OV5640_VGA_SOBEL_Ero_Dli/QUARTUSPRJ/db {G:/FPGA_DIP/OV5640_VGA_SOBEL_Ero_Dli/QUARTUSPRJ/db/clk_vga_altpll.v}

vlog -vlog01compat -work work +incdir+G:/FPGA_DIP/OV5640_VGA_SOBEL_Ero_Dli/QUARTUSPRJ/../SIM/sobel {G:/FPGA_DIP/OV5640_VGA_SOBEL_Ero_Dli/QUARTUSPRJ/../SIM/sobel/tb_get_3x3_matrix.v}
vlog -vlog01compat -work work +incdir+G:/FPGA_DIP/OV5640_VGA_SOBEL_Ero_Dli/QUARTUSPRJ/../RTL/SOBEL {G:/FPGA_DIP/OV5640_VGA_SOBEL_Ero_Dli/QUARTUSPRJ/../RTL/SOBEL/get_3x3_matrix.v}
vlog -vlog01compat -work work +incdir+G:/FPGA_DIP/OV5640_VGA_SOBEL_Ero_Dli/QUARTUSPRJ/../RTL/SOBEL {G:/FPGA_DIP/OV5640_VGA_SOBEL_Ero_Dli/QUARTUSPRJ/../RTL/SOBEL/sobel_detect.v}
vlog -vlog01compat -work work +incdir+G:/FPGA_DIP/OV5640_VGA_SOBEL_Ero_Dli/QUARTUSPRJ/ip_core/fifo {G:/FPGA_DIP/OV5640_VGA_SOBEL_Ero_Dli/QUARTUSPRJ/ip_core/fifo/fifo.v}
vlog -vlog01compat -work work +incdir+G:/FPGA_DIP/OV5640_VGA_SOBEL_Ero_Dli/QUARTUSPRJ/../RTL/SOBEL {G:/FPGA_DIP/OV5640_VGA_SOBEL_Ero_Dli/QUARTUSPRJ/../RTL/SOBEL/get_3x3_matrix_shift_ram.v}
vlog -vlog01compat -work work +incdir+G:/FPGA_DIP/OV5640_VGA_SOBEL_Ero_Dli/QUARTUSPRJ/ip_core/shift_ram {G:/FPGA_DIP/OV5640_VGA_SOBEL_Ero_Dli/QUARTUSPRJ/ip_core/shift_ram/shift_ram.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  tb_get_3x3_matrix

add wave *
view structure
view signals
run 1 us
