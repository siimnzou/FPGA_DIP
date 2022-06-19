/*--------------------------------------------------------------------------------------
    创建时间：2022/6/15
    器件: Altera EP4CE10F17C8N
    模块名：get_3x3_matrix
    所属工程：OV5640_VGA_SOBEL
    版本：V1.0
    
    介绍：
    获取sobel边缘检测中的卷积矩阵

--------------------------------------------------------------------------------------*/
module get_3x3_matrix
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
reg    fifo1_wr_en;
reg    fifo2_wr_en;
reg    fifo_rd_en;
reg    [7:0]      dip_data_dly1;
reg    [7:0]      dip_data_dly2;
reg    [7:0]      dip_data_dly3;
reg    matrix_assign_flag;
reg    data_en_temp0;
reg    data_en_temp1;
reg    [7:0]      fifo_wr_data;
reg    data_valid;
wire    [7:0]      fifo1_rd_data;
wire    [7:0]      fifo2_rd_data;

// 用于获取图像的数据有效信号
always@(posedge clk or negedge rst_n) begin
    if(~rst_n)
        data_valid <=  1'b0;
    else if (cnt_row == 1'b1)
        data_valid <=  1'b1;
end

// 对数据进行打拍同步
always@(posedge clk or negedge rst_n) begin
    if(~rst_n) begin
        dip_data_dly1 <= 8'd0;
        dip_data_dly2 <= 8'd0;
        dip_data_dly3 <= 8'd0;
    end 
    else  begin
        dip_data_dly1 <= dip_data;
        dip_data_dly2 <= dip_data_dly1;
        dip_data_dly3 <= dip_data_dly2;
    end
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
// fifo1 记录除最后两行后的每一行
always@(posedge clk or negedge rst_n) begin
    if(~rst_n)
        fifo1_wr_en <=  1'b0;
    else if (cnt_row < CNT_ROW_MAX - 1)
        fifo1_wr_en <=  dip_en;
    else 
        fifo1_wr_en <= 1'b0;
end
// fifo2 记录除最开始一行和最后一行后的每一行
always@(posedge clk or negedge rst_n) begin
    if(~rst_n)
        fifo2_wr_en <=  1'b0;
    else if (cnt_row < CNT_ROW_MAX && cnt_row > 1'b0)
        fifo2_wr_en <=  dip_en;
    else 
        fifo2_wr_en <= 1'b0;
end
// 当两行数据读完后开始对FIFO进行读操作
always@(posedge clk or negedge rst_n) begin
    if(~rst_n)
        fifo_rd_en <=  1'b0;
    else if (cnt_row > 1'b1)
        fifo_rd_en <=  dip_en;
    else 
        fifo_rd_en <= 1'b0;
end
// 矩阵赋值信号以及数据有效信号的赋值
always @(posedge clk or negedge rst_n) begin
    if(~rst_n) begin
        matrix_assign_flag <= 1'b0;
        data_en_temp1 <= 1'b0;
        data_en <= 1'b0;
    end 
    else  begin
        matrix_assign_flag <= fifo_rd_en;
        data_en_temp1 <= data_en_temp0;
        data_en <= data_en_temp1;
    end
end
// 矩阵赋值
always @(posedge clk or negedge rst_n) begin
    if (~rst_n) begin
        {p11,p12,p13} <= 24'd0;
        {p21,p22,p23} <= 24'd0;
        {p31,p32,p33} <= 24'd0;
    end
    else if (matrix_assign_flag) begin
        {p11,p12,p13} <= {p12,p13,fifo1_rd_data} ;
        {p21,p22,p23} <= {p22,p23,fifo2_rd_data} ;
        {p31,p32,p33} <= {p32,p33,dip_data_dly3} ;
    end
end

always @(posedge clk or negedge rst_n) begin
    if (~rst_n) 
        data_en_temp0 <= 1'b0;
    else if (data_valid)
        data_en_temp0 <= dip_en;
end

fifo	fifo_inst1 (
	.clock ( clk ),
	.data ( dip_data_dly1 ),
	.rdreq ( fifo_rd_en ),
	.wrreq ( fifo1_wr_en ),

	.q ( fifo1_rd_data )
	);

fifo	fifo_inst2 (
	.clock ( clk ),
	.data ( dip_data_dly1 ),
	.rdreq ( fifo_rd_en ),
	.wrreq ( fifo2_wr_en ),

	.q ( fifo2_rd_data )
	);


endmodule