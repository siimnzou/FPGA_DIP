# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct D:\xilinx_FPGA_prj\my_fpga_prj\ov5640_gesture\vitis\gesture_ov5640_platform\platform.tcl
# 
# OR launch xsct and run below command.
# source D:\xilinx_FPGA_prj\my_fpga_prj\ov5640_gesture\vitis\gesture_ov5640_platform\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {gesture_ov5640_platform}\
-hw {D:\xilinx_FPGA_prj\my_fpga_prj\ov5640_gesture\system_wrapper.xsa}\
-proc {ps7_cortexa9_0} -os {standalone} -out {D:/xilinx_FPGA_prj/my_fpga_prj/ov5640_gesture/vitis}

platform write
platform generate -domains 
platform active {gesture_ov5640_platform}
platform generate
platform config -updatehw {D:/xilinx_FPGA_prj/my_fpga_prj/ov5640_gesture/system_wrapper.xsa}
platform clean
platform generate
platform config -updatehw {D:/xilinx_FPGA_prj/my_fpga_prj/ov5640_gesture/system_wrapper.xsa}
platform generate -domains 
platform active {gesture_ov5640_platform}
platform config -updatehw {D:/xilinx_FPGA_prj/my_fpga_prj/ov5640_gesture/system_wrapper.xsa}
platform generate -domains 
platform config -updatehw {D:/xilinx_FPGA_prj/my_fpga_prj/ov5640_gesture/system_wrapper.xsa}
platform generate -domains 
platform config -updatehw {D:/xilinx_FPGA_prj/my_fpga_prj/ov5640_gesture/system_wrapper.xsa}
platform generate -domains 
