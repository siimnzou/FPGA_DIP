module rgb2ycbcr
(
    //module clock
    input               clk          ,  // 模块驱动时钟
    input               rst_n        ,  // 复位信号

    //图像处理前的数据接口
    input               rgb_vsync    ,  // vsync信号
    input               rgb_clken    ,  // 时钟使能信号
    input               rgb_valid    ,  // 数据有效信号
    input       [23:0]  rgb_data     ,  // 输入图像数据RGB
   

    //图像处理后的数据接口
    output              ycbcr_vsync  ,  // vsync信号
    output              ycbcr_clken ,  // 时钟使能信号
    output              ycbcr_valid  ,  // 数据有效信号
    output      [23:0]  ycbcr_data   ,  // 输出图像Y数据

    //输出的与ycbcr同步的原数据图像信号接口
    output      [23:0]  rgb_data_syn     
);

//reg define
reg  [15:0]   rgb_r_m0, rgb_r_m1, rgb_r_m2;
reg  [15:0]   rgb_g_m0, rgb_g_m1, rgb_g_m2;
reg  [15:0]   rgb_b_m0, rgb_b_m1, rgb_b_m2;
reg  [15:0]   img_y0 ;
reg  [15:0]   img_cb0;
reg  [15:0]   img_cr0;
reg  [ 7:0]   img_y1 ;
reg  [ 7:0]   img_cb1;
reg  [ 7:0]   img_cr1;
reg  [ 2:0]   rgb_vsync_d;
reg  [ 2:0]   rgb_clken_d;
reg  [ 2:0]   rgb_valid_d;
reg  [71:0]   rgb_data_d ;

//wire define
wire [ 7:0]   rgb888_r;
wire [ 7:0]   rgb888_g;
wire [ 7:0]   rgb888_b;
wire [ 7:0]   img_y;
wire [ 7:0]   img_cb;
wire [ 7:0]   img_cr;

//RGB565 to RGB 888
assign rgb888_r         = rgb_data[23:16];
assign rgb888_g         = rgb_data[15:8] ;
assign rgb888_b         = rgb_data[7:0]  ;
//同步输出数据接口信号
assign ycbcr_vsync   = rgb_vsync_d[2]       ;
assign ycbcr_clken   = rgb_clken_d[2]       ;
assign ycbcr_valid   = rgb_valid_d[2]       ;

assign rgb_data_syn  = rgb_data_d[71:48]  ;
assign img_y         = ycbcr_clken ? img_y1 : 8'd0;
assign img_cb        = ycbcr_clken ? img_cb1: 8'd0;
assign img_cr        = ycbcr_clken ? img_cr1: 8'd0;
assign ycbcr_data     = {img_y,img_cb,img_cr};
//--------------------------------------------
//RGB 888 to YCbCr

/********************************************************
            RGB888 to YCbCr
 Y  =  0.257R +0.504G + 0.098B + 16
 Cb = -0.148R -0.291G + 0.439B + 128
 CR =  0.439R -0.368G - 0.071B + 128

 Y  = (66 *R    +    129*G    +    25 *B + 4096 )>>8
 Cb = (-38*R    -    75 *G    +    112*B + 32768)>>8 
 Cr = (112*R    -    94*G     -    18 *B + 32768)>>8 + 128

*********************************************************/

//step1 计算括号内的各乘法项
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        rgb_r_m0 <= 16'd0;
        rgb_r_m1 <= 16'd0;
        rgb_r_m2 <= 16'd0;
        rgb_g_m0 <= 16'd0;
        rgb_g_m1 <= 16'd0;
        rgb_g_m2 <= 16'd0;
        rgb_b_m0 <= 16'd0;
        rgb_b_m1 <= 16'd0;
        rgb_b_m2 <= 16'd0;
    end
    else begin
        rgb_r_m0 <= rgb888_r * 8'd66 ;
        rgb_r_m1 <= rgb888_r * 8'd38 ;
        rgb_r_m2 <= rgb888_r * 8'd112;
        rgb_g_m0 <= rgb888_g * 8'd129;
        rgb_g_m1 <= rgb888_g * 8'd75 ;
        rgb_g_m2 <= rgb888_g * 8'd94 ;
        rgb_b_m0 <= rgb888_b * 8'd25 ;
        rgb_b_m1 <= rgb888_b * 8'd112;
        rgb_b_m2 <= rgb888_b * 8'd18 ;
    end
end

//step2 括号内各项相加
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        img_y0  <= 16'd0;
        img_cb0 <= 16'd0;
        img_cr0 <= 16'd0;
    end
    else begin
        img_y0  <= rgb_r_m0 + rgb_g_m0 + rgb_b_m0 + 16'd4096 ;
        img_cb0 <= rgb_b_m1 - rgb_r_m1 - rgb_g_m1 + 16'd32768;
        img_cr0 <= rgb_r_m2 - rgb_g_m2 - rgb_b_m2 + 16'd32768;
    end

end

//step3 括号内计算的数据右移8位
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        img_y1  <= 8'd0;
        img_cb1 <= 8'd0;
        img_cr1 <= 8'd0;
    end
    else begin
        img_y1  <= img_y0 [15:8];
        img_cb1 <= img_cb0[15:8];
        img_cr1 <= img_cr0[15:8];
    end
end

//延时3拍以同步数据信号
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        rgb_vsync_d <= 3'd0;
        rgb_clken_d <= 3'd0;
        rgb_valid_d <= 3'd0;
        rgb_data_d  <= 72'd0;
    end
    else begin
        rgb_vsync_d <= {rgb_vsync_d[1:0] , rgb_vsync};
        rgb_clken_d <= {rgb_clken_d[1:0] , rgb_clken};
        rgb_valid_d <= {rgb_valid_d[1:0] , rgb_valid};
        rgb_data_d  <= {rgb_data_d [47:0], rgb_data };
    end
end

endmodule
