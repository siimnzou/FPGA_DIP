module get_gesture_area
#(
    parameter CB_MAX = 8'd127,
              CB_MIN = 8'd77 ,
              CR_MAX = 8'd173,
              CR_MIN = 8'd133
)
(
    //module clock
    input               clk          ,  // 模块驱动时钟
    input               rst_n        ,  // 复位信号

    //图像处理前的数据接口
    input               ycbcr_vsync  ,  // vsync信号
    input               ycbcr_clken ,  // 时钟使能信号
    input               ycbcr_valid  ,  // 数据有效信号
    input      [23:0]   ycbcr_data   ,  // 输出图像Y数据
    input      [23:0]   rgb_data_syn ,    

    //图像处理前的数据接口
    output  reg            gesture_vsync    ,  // vsync信号
    output  reg            gesture_clken    ,  // 时钟使能信号
    output  reg            gesture_valid    ,  // 数据有效信号
    output  reg    [23:0]  gesture_data       // 输入图像数据RGB
);

wire [ 7:0]   img_y ;
wire [ 7:0]   img_cb;
wire [ 7:0]   img_cr;
// 获取ycbcr 值
assign img_y  =  ycbcr_data[23:16] ;    
assign img_cb =  ycbcr_data[15:8]  ;
assign img_cr =  ycbcr_data[7:0]   ;

always @(posedge clk or negedge rst_n) begin
    if (!rst_n)
        gesture_data <= 24'd0;
    else if ( img_cb < CB_MAX && img_cb > CB_MIN && img_cr < CR_MAX && img_cr > CR_MIN )
        gesture_data <= rgb_data_syn;
    else    
        gesture_data <= 24'd0;
end

always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        gesture_vsync <= 1'd0;
        gesture_clken <= 1'd0;
        gesture_valid <= 1'd0;
    end
    else begin
        gesture_vsync <= ycbcr_vsync;
        gesture_clken <= ycbcr_clken;
        gesture_valid <= ycbcr_valid;
    end
end


endmodule