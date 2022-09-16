/*--------------------------------------------------------------------------------------
    创建时间：2022/8/21 22:00
    器件: Xilinx xc7z020clg400-2
    模块名：ov5640_gray_top
    所属工程：ov5640_gesture
    版本：V1.0
    
    介绍：
    用于整合ov5640_capture_data模块和rgb2ycbcr模块 ，模拟生成ov5640的数据来进行仿真
--------------------------------------------------------------------------------------*/
`timescale 1ns/1ns
module tb_ov5640_gray();

reg         cam_pclk        ;
reg         rst_n           ;

reg         cam_vsync       ;
reg         cam_href        ;
wire  [7:0] cam_data        ;

reg  [5:0]  cnt             ;         // 记录当前行进行了多少个时钟周期
reg  [3:0]  cnt_h           ;         // 记录当前行进行了多少行
reg  [7:0]  cnt_f           ;         // 记录当前进行了多少帧

wire        cam_rst_n       ;
wire        cam_pwdn        ;

wire            cmos_frame_clk      ;
wire            cmos_frame_ce       ;
wire            cmos_frame_vsync    ;
wire            cmos_active_video   ;
wire [23:0]     cmos_frame_data     ;

wire            ycbcr_vsync         ;
wire            ycbcr_clken         ;
wire            ycbcr_valid         ;
wire [23:0]     ycbcr_data          ;

wire [23:0]     rgb_data_syn        ;

wire            gesture_vsync       ; 
wire            gesture_clken       ; 
wire            gesture_valid       ; 
wire    [23:0]  gesture_data        ; 


initial begin
    cam_pclk   = 1'b1;
    rst_n <= 1'b0;
    #200
    rst_n <= 1'b1;
end

// 产生 50mhz的 虚拟时钟
always #20 cam_pclk = ~ cam_pclk; 

// 产生cnt信号，每一行的数据中包含60个数据 其中前等待2clk ，中间数据段60clk 数据段结束后2个clk
always @(posedge cam_pclk or negedge rst_n) begin
    if(~rst_n)
        cnt <= 6'd0;
    else 
        cnt <= cnt + 1'b1;
end

// 产生cnt_h 信号，一帧数据中包含12行 
always @(posedge cam_pclk or negedge rst_n) begin
    if(~rst_n)
        cnt_h <= 4'd0;
    else if (cnt == 6'b111111)
        cnt_h <= cnt_h + 1'b1;
end

// 产生cnt_f 信号
always @(posedge cam_pclk or negedge rst_n) begin
    if(~rst_n)
        cnt_f <= 8'd0;
    else if (cnt == 6'b111111 && cnt_h == 4'b1111)
        cnt_f <= cnt_f + 1'b1;
end

// 产生cam_vsync信号
always @(posedge cam_pclk or negedge rst_n) begin
    if(~rst_n)
        cam_vsync <= 1'b0;
    else if (cnt_h >= 4'd1 && cnt_h <= 4'd11)
        cam_vsync <= 1'b1;
    else 
        cam_vsync <= 1'b0;
end

// 产生cam_href信号
always @(posedge cam_pclk or negedge rst_n) begin
    if(~rst_n)
        cam_href <= 1'b0;
    else if (cam_vsync && cnt >= 6'd1 && cnt <= 6'd60)
        cam_href <= 1'b1;
    else 
        cam_href <= 1'b0;
end

assign cam_data = cam_href ?  (cnt_f) : 8'd0;

ov5640_capture_data u_ov5640_capture_data
(
    .rst_n           (rst_n),   //复位信号

	//摄像头接口
    .cam_pclk        (cam_pclk ),  //cam 数据像素时钟
    .cam_vsync       (cam_vsync),  //cam 场同步信号
    .cam_href        (cam_href ),  //cam 行同步信号
    .cam_data        (cam_data ),  //cam 数据
    .cam_rst_n       (cam_rst_n),  //cmos 复位信号，低电平有效
    .cam_pwdn        (cam_pwdn ),  //电源休眠模式选择

	//RGB888接口
    .cmos_frame_clk   (cmos_frame_clk)  ,    //时钟信号
    .cmos_frame_ce    (cmos_frame_ce )  ,     //时钟使能信号

	.cmos_frame_vsync (cmos_frame_vsync )  ,  //帧有效信号
    .cmos_active_video(cmos_active_video)  ,//数据有效
    .cmos_frame_data  (cmos_frame_data  )  //有效数据
);

rgb2ycbcr   rgb2ycbcr
(
    //module clock
    .clk          (cam_pclk),  // 模块驱动时钟
    .rst_n        (rst_n),  // 复位信号

    //图像处理前的数据接口
    .rgb_vsync    (cmos_frame_vsync),  // vsync信号
    .rgb_clken    (cmos_frame_ce),  // 时钟使能信号
    .rgb_valid    (cmos_active_video),  // 数据有效信号
    .rgb_data     (cmos_frame_data),  // 输入图像数据RGB
   

    //图像处理后的数据接口
    .ycbcr_vsync  (ycbcr_vsync ),  // vsync信号
    .ycbcr_clken  (ycbcr_clken),  // 时钟使能信号
    .ycbcr_valid  (ycbcr_valid ),  // 数据有效信号
    .ycbcr_data   (ycbcr_data   ),   // 输出图像Y数据
    .rgb_data_syn (rgb_data_syn)  
);


get_gesture_area u_get_gesture_area
(
    //module clock
    .clk          (cam_pclk),  // 模块驱动时钟
    .rst_n        (rst_n),  // 复位信号

    //图像处理前的数据接口
    .ycbcr_vsync (ycbcr_vsync ) ,  // vsync信号
    .ycbcr_clken (ycbcr_clken ) ,  // 时钟使能信号
    .ycbcr_valid (ycbcr_valid ) ,  // 数据有效信号
    .ycbcr_data  (ycbcr_data  ) ,  // 输出图像Y数据
    .rgb_data_syn(rgb_data_syn) ,    

    //图像处理后的数据接口
    .gesture_vsync   (gesture_vsync ) ,  // vsync信号
    .gesture_clken   (gesture_clken ) ,  // 时钟使能信号
    .gesture_valid   (gesture_valid ) ,  // 数据有效信号
    .gesture_data    (gesture_data  )    // 输入图像数据RGB
);
endmodule