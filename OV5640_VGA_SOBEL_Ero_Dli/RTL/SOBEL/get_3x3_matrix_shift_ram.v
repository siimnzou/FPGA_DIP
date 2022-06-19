/*--------------------------------------------------------------------------------------
    创建时间：2022/6/15
    器件: Altera EP4CE10F17C8N
    模块名：get_3x3_matrix
    所属工程：OV5640_VGA_SOBEL
    版本：V1.0
    
    介绍：
    获取sobel边缘检测中的卷积矩阵

--------------------------------------------------------------------------------------*/
module get_3x3_matrix_shift_ram
#(
    parameter      CNT_COL_MAX = 16'd1023,
    parameter      CNT_ROW_MAX = 16'd767
)
(
    input clk,
    input rst_n,
    input dip_en,
    input [7:0] dip_data,

    output reg       data_en,
    output reg [7:0] p11,
    output reg [7:0] p12,
    output reg [7:0] p13,
    output reg [7:0] p21,
    output reg [7:0] p22,
    output reg [7:0] p23,
    output reg [7:0] p31,
    output reg [7:0] p32,
    output reg [7:0] p33
);

reg    [15:0]     cnt_col;
reg    [15:0]     cnt_row;
reg    data_valid;

wire [7:0] taps0x_data;
wire [7:0] taps1x_data;
wire [7:0] shift_out_data;




// 用于获取图像的数据有效信号
always@(posedge clk or negedge rst_n) begin
    if(~rst_n)
        data_valid <=  1'b0;
    else if (cnt_row == 1'b1)
        data_valid <=  1'b1;
end

// 列计数
always@(posedge clk or negedge rst_n) begin
    if(~rst_n)
        cnt_col <=  16'd0;
    else    if(cnt_col == CNT_COL_MAX && dip_en)
        cnt_col <=  16'd0;
    else    if(dip_en)
        cnt_col <=  cnt_col + 1'b1;
end
// 行计数
always@(posedge clk or negedge rst_n) begin
    if(~rst_n)
        cnt_row <=  16'd0;
    else if (cnt_row == CNT_ROW_MAX && cnt_col == CNT_COL_MAX && dip_en)
        cnt_row <=  16'd0;
    else if (cnt_col == CNT_COL_MAX && dip_en)
        cnt_row <=  cnt_row + 1'b1;
end

always@(posedge clk or negedge rst_n) begin
    if(~rst_n)
        data_en <=  1'b0;
    else if (data_valid)
        data_en <=  dip_en;
end

// 矩阵赋值
always @(posedge clk or negedge rst_n) begin
    if (~rst_n) begin
        {p11,p12,p13} <= 24'd0;
        {p21,p22,p23} <= 24'd0;
        {p31,p32,p33} <= 24'd0;
    end
    else if (dip_en) begin
        {p11,p12,p13} <= {p12,p13,taps1x_data} ;
        {p21,p22,p23} <= {p22,p23,taps0x_data} ;
        {p31,p32,p33} <= {p32,p33,dip_data} ;
    end
end

shift_ram	shift_ram_inst (
	.clken ( dip_en     ),
	.clock ( clk ),
	.shiftin ( dip_data ),
	.shiftout ( shift_out_data ),
	.taps0x ( taps0x_data ),
	.taps1x ( taps1x_data )
	);

endmodule