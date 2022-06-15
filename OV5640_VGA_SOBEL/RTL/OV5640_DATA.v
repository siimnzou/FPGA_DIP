module OV5640_DATA
(
    input               pclk,     // 摄像头传入的工作时钟，频率24M
    input               href,
    input               vsync,
    input               rst_n,
    input [7:0]         data_from_ov5640,

    output  reg        sdram_wr_en,
    output  reg [15:0] data_to_sdram
);

reg [3:0] cnt_pic;
reg vsync_reg;
wire  vsync_rise_edge;
reg pic_valid;
reg [7:0] data_reg;
reg data_flag;

// 采集帧同步信号的上升沿作为cnt_pic自加的标志
always @(posedge pclk or negedge rst_n) begin
    if (~rst_n)
        vsync_reg <= 1'b0;
    else
        vsync_reg <= vsync;
end

assign vsync_rise_edge = vsync & ~vsync_reg;

// 记录已经输出多少帧数据了 当达到10帧后开始输出有效数据
always @(posedge pclk or negedge rst_n) begin
    if (~rst_n)
        cnt_pic <= 4'b0;
    else if (cnt_pic == 4'd10 && vsync_rise_edge)
        cnt_pic <= 4'd10;
    else if (vsync_rise_edge)
        cnt_pic <= cnt_pic + 1'b1;
    else 
        cnt_pic <= cnt_pic;
end

// pic_valid 拉高后表示图像数据有效
always @(posedge pclk or negedge rst_n) begin
    if (~rst_n)
        pic_valid <= 1'b0;
    else if (cnt_pic == 4'd10 && vsync_rise_edge)
        pic_valid <= 1'b1;
    else 
        pic_valid <= pic_valid;
end

// 对输入数据打拍
always @(posedge pclk or negedge rst_n) begin
    if (~rst_n)
        data_reg <= 8'd0;
    else
        data_reg <= data_from_ov5640;
end

// 构建数据高低位拼接标志信号
always @(posedge pclk or negedge rst_n) begin
    if (~rst_n)
        data_flag <= 1'b0;
    else if (href)
        data_flag <= ~data_flag;
    else 
        data_flag <= 1'b0;
end


// 输出写使能赋值
always @(posedge pclk or negedge rst_n) begin
    if (~rst_n)
        sdram_wr_en <= 1'b0;
    else if(pic_valid)
        sdram_wr_en <= data_flag;
end

// 输出数据赋值
always @(posedge pclk or negedge rst_n) begin
    if (~rst_n)
        data_to_sdram <= 16'b0;
    else if (data_flag && pic_valid)
         data_to_sdram <= {data_reg,data_from_ov5640};
end

endmodule







