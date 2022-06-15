/*--------------------------------------------------------------------------------------
    创建时间：2022/6/15
    器件: Altera EP4CE10F17C8N
    模块名：DIP_sobel
    所属工程：OV5640_VGA_SOBEL
    版本：V1.0
    
    介绍：
    SOBEL 检测模块的顶层模块

--------------------------------------------------------------------------------------*/
module DIP_sobel
#(
    parameter      CNT_COL_MAX = 16'd1023,
    parameter      CNT_ROW_MAX = 16'd767,
    parameter      THR  =  8'b000_011_00
)
(
    input wire          clk,
    input wire          rst_n,
    input wire          dip_en,
    input wire  [7:0]   dip_data,

    output wire          sdram_wr_en,
    output wire   [15:0] sdram_wr_data
);

wire        data_en;
wire  [7:0] p11;
wire  [7:0] p12;
wire  [7:0] p13;
wire  [7:0] p21;
wire  [7:0] p22;
wire  [7:0] p23;
wire  [7:0] p31;
wire  [7:0] p32;
wire  [7:0] p33;

get_3x3_matrix 
#(
    .CNT_COL_MAX (CNT_COL_MAX) ,
    .CNT_ROW_MAX (CNT_ROW_MAX)
)
get_3x3_matrix_inst
(
    .clk       (clk      ),
    .rst_n     (rst_n    ),
    .dip_en    (dip_en   ),
    .dip_data  (dip_data ),

    .data_en(data_en),
    .p11(p11),
    .p12(p12),
    .p13(p13),
    .p21(p21),
    .p22(p22),
    .p23(p23),
    .p31(p31),
    .p32(p32),
    .p33(p33)
);


sobel_detect
#(
    .THR (THR)
)
sobel_detect_inst
(
    .clk     (clk     ),
    .rst_n   (rst_n   ),
    .data_en (data_en ),
    .p11(p11),
    .p12(p12),
    .p13(p13),
    .p21(p21),
    .p22(p22),
    .p23(p23),
    .p31(p31),
    .p32(p32),
    .p33(p33),

    .sdram_wr_en  (sdram_wr_en  ),
    .sdram_wr_data(sdram_wr_data)
);


    
endmodule

       