/*--------------------------------------------------------------------------------------
    创建时间：2022/4/27
    器件: Altera EP4CE10F17C8N
    模块名：SDRAM_CTRL
    所属工程：OV5640_VGA
    版本：V1.0
    
    介绍：
    SDRAM读写控制器驱动模块
--------------------------------------------------------------------------------------*/
module SDRAM_CTRL
(
    input             clk,
    input             rst_n,
    output wire       init_end,

    input             sdram_wr_req,
    input  [15:0]     sdram_wr_data,
    input  [23:0]     sdram_wr_addr,
    input  [9:0]      sdram_wr_burst_len,
    output wire       sdram_wr_ack,

    input              sdram_rd_req,
    input  [23:0]      sdram_rd_addr,
    input  [9:0]       sdram_rd_burst_len,
    output wire        sdram_rd_ack,
    output wire [15:0] sdram_rd_data_out,

    output wire        sdram_cke ,
    output wire        sdram_cs_n,
    output wire        sdram_cas_n,
    output wire        sdram_ras_n,
    output wire        sdram_we_n,
    output wire [1:0]  sdram_ba,
    output wire [12:0] sdram_addr,
    inout  wire  [15:0] sdram_dq
);

wire [3:0] init_cmd;
wire [1:0] init_ba;
wire [12:0] init_addr;
 
wire        aref_en  ;
wire [3:0]  aref_cmd ;
wire [1:0]  aref_ba  ;
wire [12:0] aref_addr;
wire        aref_end ;
wire        aref_req ;

wire        wr_en    ;
wire [3:0]  wr_cmd   ;    
wire        wr_end   ;    
wire [1:0]  wr_ba    ;   
wire [12:0] wr_sdram_addr;
wire        wr_sdram_en  ;
wire [15:0] wr_sdram_data;

wire        rd_en;
wire [3:0]  rd_cmd     ;   
wire        rd_end     ;
wire [1:0]  rd_ba      ;
wire [12:0] rd_sdram_addr;
wire [16:0] rd_sdram_data;



SDRAM_INIT SDRAM_INIT_INST
(
    .clk       (clk) ,   // 时钟频率为100MHz
    .rst_n     (rst_n) ,

    .init_cmd  (init_cmd ) ,
    .init_ba   (init_ba  ) ,
    .init_addr (init_addr) ,
    .init_end  (init_end )
);

SDRAM_ARBIT SDRAN_ARBIT_INST
(
    .clk         (clk  ),
    .rst_n       (rst_n),

    .init_cmd    (init_cmd ),
    .init_ba     (init_ba  ),
    .init_addr   (init_addr),
    .init_end    (init_end ),

    .aref_cmd    (aref_cmd ),
    .aref_ba     (aref_ba  ),
    .aref_addr   (aref_addr),
    .aref_end    (aref_end ),
    .aref_req    (aref_req ),

    .rd_cmd        (rd_cmd),
    .rd_req        (sdram_rd_req),
    .rd_end        (rd_end),
    .rd_ba         (rd_ba),
    .rd_addr       (rd_sdram_addr),

    .wr_cmd      (wr_cmd),
    .wr_req      (sdram_wr_req     ),
    .wr_end      (wr_end     ),
    .wr_ba       (wr_ba      ),
    .wr_addr     (wr_sdram_addr    ),
    .wr_sdram_en (wr_sdram_en      ),
    .wr_data     (wr_sdram_data    ),

    .aref_en     (aref_en),
    .wr_en       (wr_en),
    .rd_en       (rd_en),

    .sdram_cs_n   (sdram_cs_n  )  ,
    .sdram_cas_n  (sdram_cas_n )  ,       
    .sdram_ras_n  (sdram_ras_n )  ,   
    .sdram_we_n   (sdram_we_n  )  ,
    .sdram_ba     (sdram_ba    )  ,
    .sdram_addr   (sdram_addr  )  ,
    .sdram_dq     (sdram_dq    )  ,
    .sdram_cke    (sdram_cke   )
);

SDRAM_AREF  SDRAM_AREF_INST
(
    .clk        (clk      )   ,   // 时钟频率为100MHz
    .rst_n      (rst_n    )   ,
    .init_end   (init_end )   ,
    .aref_en    (aref_en  )   ,

    .aref_cmd   (aref_cmd )   ,      
    .aref_ba    (aref_ba  )   ,
    .aref_addr  (aref_addr)   ,
    .aref_end   (aref_end )   ,
    .aref_req   (aref_req )
);

SDRAM_RD SDRAM_RD_ISNT
(
    . clk          (clk) ,
    . rst_n        (rst_n) ,
    . init_end     (init_end) ,
    . rd_en        (rd_en) ,
    . rd_addr      (sdram_rd_addr) ,    // 两位宽bank地址 13位宽行地址、9位宽列地址
    . rd_data      (sdram_dq) ,    
    . rd_burst_len (sdram_rd_burst_len) ,  // 采用页突发，一页512个，采用突发停止模式，可以实现任意长度的写入

    . rd_cmd       (rd_cmd) ,
    . rd_ack       (sdram_rd_ack) ,
    . rd_end       (rd_end) ,
    . rd_ba        (rd_ba) ,
    . rd_sdram_addr(rd_sdram_addr) ,
    . rd_sdram_data(sdram_rd_data_out)

);

SDRAM_WR    SDRAM_WR_INST
(
   . clk            (clk) ,
   . rst_n          (rst_n) ,
   . init_end       (init_end) ,
   . wr_en          (wr_en) ,
   . wr_addr        (sdram_wr_addr) ,    // 两位宽bank地址 13位宽行地址、9位宽列地址
   . wr_data        (sdram_wr_data) ,       
   . wr_burst_len   (sdram_wr_burst_len) ,  // 采用页突发，一页512个，采用突发停止模式，可以实现任意长度的写入

    .wr_cmd         (wr_cmd)  ,
    .wr_ack         (sdram_wr_ack)  ,
    .wr_end         (wr_end)  ,
    .wr_ba          (wr_ba)  ,
    .wr_sdram_addr  (wr_sdram_addr)  ,
    .wr_sdram_en    (wr_sdram_en  )  ,
    .wr_sdram_data  (wr_sdram_data)
);

endmodule