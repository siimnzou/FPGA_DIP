/*--------------------------------------------------------------------------------------
    创建时间：2022/4/27
    器件: Altera EP4CE10F17C8N
    模块名：OV5640_CTRL
    所属工程：OV5640_VGA
    版本：V1.0
    
    介绍：
    OV5640的驱动模块顶层，可以完成对OV5640中模式模式寄存器的配置，以及读取OV5640的数据
    在该工程中，采用RGB565颜色，读取分辨率为640 * 480

    2022/6/13
    将分辨率修改为1024*768
--------------------------------------------------------------------------------------*/
module OV5640_CTRL
(
    input               pclk,     
    input               href,
    input               vsync,
    input               rst_n,
    input [7:0]         data_from_ov5640,
    input               clk,
    input               init_done, 

    output wire     scl         , 
    inout  wire     sda         ,
    output wire     cfg_done    ,
    output wire        sdram_wr_en,
    output wire [15:0] data_to_sdram
);

OV5640_CFG OV5640_CFG_INST
(
    .clk  (clk  ),
    .rst_n(rst_n),

    .scl(scl)         , 
    .sda(sda)         ,
    .cfg_done(cfg_done)    
);

OV5640_DATA OV5640_DATA_INST
(
    .pclk               (pclk            ),     // 摄像头传入的工作时钟，频率24M
    .href               (href            ),
    .vsync              (vsync           ),
    .rst_n              (rst_n & init_done),
    .data_from_ov5640   (data_from_ov5640),

    .sdram_wr_en        (sdram_wr_en  )   ,   
    .data_to_sdram      (data_to_sdram)    
);

endmodule