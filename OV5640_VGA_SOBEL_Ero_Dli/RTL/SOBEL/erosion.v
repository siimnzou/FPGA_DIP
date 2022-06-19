/*--------------------------------------------------------------------------------------
    创建时间：2022/6/15
    器件: Altera EP4CE10F17C8N
    模块名：erosion
    所属工程：OV5640_VGA_SOBEL_Ero_Dli
    版本：V1.0
    
    介绍：
    根据卷积矩阵对其进行腐蚀操作，（原本是需要对前景色进行与操作）
    由于在该实验工程中，黑色为前景色，白色为背景色，所以在此我们采取
    对背景色进行膨胀操作以获取同样的效果。
    输入数据为一位宽数据（1表示背景，0表示前景）

--------------------------------------------------------------------------------------*/
module erosion
(
    input  clk,
    input  rst_n,
    input  data_en,
    input  p11,
    input  p12,
    input  p13,
    input  p21,
    input  p22,
    input  p23,
    input  p31,
    input  p32,
    input  p33,

    output reg          sdram_wr_en,
    output reg   [15:0] sdram_wr_data
);

localparam     WHITE  =  16'hffff;
localparam     BLACK  =  16'h0000;


reg  taps_1x;
reg  taps_2x;
reg  taps_3x;
reg  erosion_result;

reg data_en_dly1;
reg data_en_dly2;

// 计算每一行
always @(posedge clk or negedge rst_n) begin
    if (~rst_n) begin
        taps_1x <= 1'd0;
        taps_2x <= 1'd0;
        taps_3x <= 1'd0;
    end
    else begin
        taps_1x <= p11 | p12 | p13;
        taps_2x <= p21 | p22 | p23;
        taps_3x <= p31 | p32 | p33;
    end      
end
// 计算全部
always @(posedge clk or negedge rst_n) begin
    if (~rst_n) 
        erosion_result <= 1'd0;
    else 
        erosion_result <= taps_1x | taps_2x | taps_3x;
end
// 根据结果赋值
always @(posedge clk or negedge rst_n) begin
    if (~rst_n) 
        sdram_wr_data <= 16'd0;
    else if (erosion_result)
        sdram_wr_data <= WHITE;
    else
        sdram_wr_data <= BLACK;
end
// 数据有效信号延时
always @(posedge clk or negedge rst_n) begin
    if (~rst_n) begin
        data_en_dly1 <= 1'b0;
        data_en_dly2 <= 1'b0;
        sdram_wr_en  <= 1'b0;
    end
    else begin
        data_en_dly1 <= data_en;
        data_en_dly2 <= data_en_dly1;
        sdram_wr_en  <= data_en_dly2;  
    end      
end

endmodule