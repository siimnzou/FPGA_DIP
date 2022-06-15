/*--------------------------------------------------------------------------------------
    创建时间：2022/4/27
    器件: Altera EP4CE10F17C8N
    模块名：OV5640_CFG
    所属工程：OV5640_VGA
    版本：V1.0
    
    介绍：
    OV5640寄存器配置模块顶层
--------------------------------------------------------------------------------------*/
module OV5640_CFG
(
    input clk,
    input rst_n,

    output wire     scl         , 
    inout  wire     sda         ,  
    output wire     cfg_done
);

wire done_flag;
wire cfg_flag;
wire cfg_en ;
wire [23:0] cfg_data ;

OV5640_REG_CFG OV5640_REG_CFG_INST
(
    .clk        (clk      ),
    .rst_n      (rst_n    ),
    .done_flag  (done_flag),

    .cfg_en  (cfg_en  )  ,    
    .cfg_data(cfg_data)  ,
    .cfg_done(cfg_done)
);

IIC_CTRL 
#
(
    .DIV_FREQ(10'd200) // 定义时钟频率 频率数 = 50M/DIV_FREQ
)
IIC_CTRL_INST
(
.clk       (clk  ),     // 系统时钟，此处用的为50MHz
.rst_n     (rst_n),     // 复位信号
.wr_en     (cfg_en), // 写使能信号
.dev_addr  (7'h3c), // 输入的器件地址
.addr      (cfg_data[23:8]),    // 写或读地址
.data      (cfg_data[7:0]),    // 输入的数据
.addr_num  (1'b1), // 地址数。1位2位，0为1位
.rd_en     (1'b0), // 读使能信号

.scl         (scl),     //输出到器件的scl线
.sda         (sda),     //输出到器件的sda线
.done_flag   (done_flag),     //完成标志
.rd_data_reg () //读到的数据
);

endmodule