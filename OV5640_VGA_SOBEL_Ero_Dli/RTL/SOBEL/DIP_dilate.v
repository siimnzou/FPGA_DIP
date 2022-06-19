/*--------------------------------------------------------------------------------------
    创建时间：2022/6/18
    器件: Altera EP4CE10F17C8N
    模块名：DIP_dilate
    所属工程：OV5640_VGA_SOBEL_Ero_Dli
    版本：V1.0
    
    介绍：
    膨胀算法的顶层模块 输入数据为一个8位宽的数据，输出数据为16位宽数据（可以直接写入SDRAM）

--------------------------------------------------------------------------------------*/
module DIP_dilate
#(
    parameter      CNT_COL_MAX = 16'd1023,
    parameter      CNT_ROW_MAX = 16'd767
)
(
    input wire          clk,
    input wire          rst_n,
    input wire          dip_en,
    input wire   [7:0]  dip_data,

    output wire          sdram_wr_en,
    output wire   [15:0] sdram_wr_data
);

wire        data_en;
wire        p11;
wire        p12;
wire        p13;
wire        p21;
wire        p22;
wire        p23;
wire        p31;
wire        p32;
wire        p33;

get_3x3_matrix_shift_ram_1bit
#(
    .CNT_COL_MAX (CNT_COL_MAX) ,
    .CNT_ROW_MAX (CNT_ROW_MAX)
)
get_3x3_matrix_shift_ram_1bit_inst
(
    .clk       (clk      ),
    .rst_n     (rst_n    ),
    .dip_en    (dip_en   ),
    .dip_data  (dip_data[7]),

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


dilate dilate_inst
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

       