/*--------------------------------------------------------------------------------------
    创建时间：2022/6/15
    器件: Altera EP4CE10F17C8N
    模块名：sobel_detect
    所属工程：OV5640_VGA_SOBEL
    版本：V1.0
    
    介绍：
    根据卷积矩阵获取sobel卷积后的数据，并且和阈值进行比较后输出相应的数据

--------------------------------------------------------------------------------------*/
module sobel_detect
#(
    parameter      THR  =  8'b000_011_00
)
(
    input clk,
    input rst_n,
    input data_en,
    input  [7:0] p11,
    input  [7:0] p12,
    input  [7:0] p13,
    input  [7:0] p21,
    input  [7:0] p22,
    input  [7:0] p23,
    input  [7:0] p31,
    input  [7:0] p32,
    input  [7:0] p33,

    output reg          sdram_wr_en,
    output reg   [15:0] sdram_wr_data
);

localparam     WHITE  =  16'hffff;
localparam     BLACK  =  16'h0000;

reg [8:0] gx;
reg [8:0] gy;
reg [7:0] gxy;
reg data_en_dly1;
reg data_en_dly2;
reg data_en_dly3;

// 计算SOBEL因子gx gy
always @(posedge clk or negedge rst_n) begin
    if (~rst_n) begin
        gx <= 9'd0;
        gy <= 9'd0;
    end
    else begin
        gx <= (p13 - p11) + ((p23 - p21)<<1) + (p33 - p31);
        gy <= (p11 - p31) + ((p12 - p32)<<1) + (p13 - p33);
    end      
end
// 计算 |gx| + |gy|
always @(posedge clk or negedge rst_n) begin
    if (~rst_n) 
        gxy <= 8'd0;
    else 
        case({gx[8],gy[8]})
            2'b11 : gxy <= (~gx[7:0] + 1'b1) + (~gy[7:0] + 1'b1);
            2'b10 : gxy <= (~gx[7:0] + 1'b1) + gy[7:0] ;
            2'b01 : gxy <= (~gy[7:0] + 1'b1) + gx[7:0] ;
            2'b00 : gxy <= gx[7:0] + gy[7:0] ;
            default : gxy <= gx[7:0] + gy[7:0] ;
        endcase
end
// 根据阈值赋值
always @(posedge clk or negedge rst_n) begin
    if (~rst_n) 
        sdram_wr_data <= 16'd0;
    else if (data_en_dly2 && gxy >THR)
        sdram_wr_data <= BLACK;
    else if (data_en_dly2)
        sdram_wr_data <= WHITE;
end
// 数据有效信号延时
always @(posedge clk or negedge rst_n) begin
    if (~rst_n) begin
        data_en_dly1 <= 1'b0;
        data_en_dly2 <= 1'b0;
        data_en_dly3 <= 1'b0;
        sdram_wr_en  <= 1'b0;
    end
    else begin
        data_en_dly1 <= data_en;
        data_en_dly2 <= data_en_dly1;
        data_en_dly3 <= data_en_dly2;
        sdram_wr_en  <= data_en_dly3;
    end      
end

endmodule