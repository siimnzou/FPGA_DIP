module SDRAM
(
    input clk,
    input rst_n,
    input clk_out,
    output wire init_end,


    input           wr_fifo_wr_clk,
    input           wr_fifo_wr_req,
    input  [15:0]   wr_fifo_wr_data,
    input  [23:0]   sdram_wr_b_addr,
    input  [23:0]   sdram_wr_e_addr,
    input  [9 :0]   wr_burst_len,
    input           wr_rst,               // 写地址清零信号 

    input           rd_fifo_rd_clk,
    input           rd_fifo_rd_req,
    input  [23:0]   sdram_rd_b_addr,
    input  [23:0]   sdram_rd_e_addr,
    input  [9 :0]   rd_burst_len,
    input           rd_valid,
    input           rd_rst,            
    output wire  [15:0]  rd_fifo_rd_data,
    output wire [9 :0]  rd_fifo_num,

    output wire        sdram_clk ,
    output wire        sdram_cke ,
    output wire        sdram_cs_n,
    output wire        sdram_cas_n,
    output wire        sdram_ras_n,
    output wire        sdram_we_n,
    output wire [1:0]  sdram_ba,
    output wire [12:0] sdram_addr,
    output wire   [1:0]    sdram_dqm ,
    inout  wire  [15:0] sdram_dq    

);


wire sdram_wr_ack ;
wire sdram_rd_ack ;
wire sdram_wr_req ;
wire sdram_rd_req ;
wire [23:0] sdram_wr_addr ;
wire [23:0] sdram_rd_addr ;
wire [15:0] sdram_data_in ;
wire [15:0] sdram_data_out ;

assign sdram_clk = clk_out;
assign sdram_dqm = 1'b0;
 
SDRAM_FIFO SDRAM_FIFO_INST
(
    .clk           (clk),
    .rst_n         (rst_n),
    .init_end      (init_end),
 // wr_fifo
    .wr_fifo_wr_clk    (wr_fifo_wr_clk) ,
    .wr_fifo_wr_req    (wr_fifo_wr_req ) ,
    .wr_fifo_wr_data   (wr_fifo_wr_data) ,
    .sdram_wr_b_addr   (sdram_wr_b_addr) ,
    .sdram_wr_e_addr   (sdram_wr_e_addr) ,
    .wr_burst_len      (wr_burst_len) ,
    .wr_rst            (wr_rst) ,               // 写地址清零信号 
 // rd_fifo
    .rd_fifo_rd_clk    (rd_fifo_rd_clk) ,
    .rd_fifo_rd_req    (rd_fifo_rd_req ) ,
    .sdram_rd_b_addr   (sdram_rd_b_addr) ,
    .sdram_rd_e_addr   (sdram_rd_e_addr ) ,
    .rd_burst_len      (rd_burst_len) ,
    .rd_valid          (rd_valid ) ,
    .rd_rst            (rd_rst ) ,                    // 读地址清零信号  
    .rd_fifo_rd_data   (rd_fifo_rd_data) ,
    .rd_fifo_num       (rd_fifo_num) ,

 // sdram_wr
    .sdram_wr_ack (sdram_wr_ack),
    .sdram_wr_req (sdram_wr_req),
    .sdram_wr_addr(sdram_wr_addr),
    .sdram_data_in(sdram_data_in),
 // sdram_rd
    .sdram_rd_ack  (sdram_rd_ack),
    .sdram_rd_req  (sdram_rd_req),
    .sdram_rd_addr (sdram_rd_addr),
    .sdram_data_out(sdram_data_out)
);


SDRAM_CTRL   SDRAM_CTRL_INST
(
    .clk                (clk)    ,
    .rst_n              (rst_n)    ,
    .init_end           (init_end)    ,

    .sdram_wr_req       (sdram_wr_req)    ,
    .sdram_wr_data      (sdram_data_in)    ,
    .sdram_wr_addr      (sdram_wr_addr)    ,
    .sdram_wr_burst_len (wr_burst_len)    ,
    .sdram_wr_ack       (sdram_wr_ack)    ,  

    .sdram_rd_req       (sdram_rd_req)    ,
    .sdram_rd_addr      (sdram_rd_addr)    ,
    .sdram_rd_burst_len (rd_burst_len)    ,
    .sdram_rd_ack       (sdram_rd_ack)    ,
    .sdram_rd_data_out  (sdram_data_out)    ,

    .sdram_cke          (sdram_cke   )    ,
    .sdram_cs_n         (sdram_cs_n  )    ,
    .sdram_cas_n        (sdram_cas_n )    ,
    .sdram_ras_n        (sdram_ras_n )    ,
    .sdram_we_n         (sdram_we_n  )    ,
    .sdram_ba           (sdram_ba    )    ,
    .sdram_addr         (sdram_addr  )    ,
    .sdram_dq           (sdram_dq    )
);

endmodule