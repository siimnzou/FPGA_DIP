// 实现读写请求与SDRAM之间的跨时钟域处理
module SDRAM_FIFO
(
    input clk,
    input rst_n,
    input init_end,
 // wr_fifo
    input           wr_fifo_wr_clk,
    input           wr_fifo_wr_req,
    input  [15:0]   wr_fifo_wr_data,
    input  [23:0]   sdram_wr_b_addr,
    input  [23:0]   sdram_wr_e_addr,
    input  [9 :0]   wr_burst_len,
    input           wr_rst,               // 写地址清零信号 
 // rd_fifo
    input           rd_fifo_rd_clk,
    input           rd_fifo_rd_req,
    input  [23:0]   sdram_rd_b_addr,
    input  [23:0]   sdram_rd_e_addr,
    input  [9 :0]   rd_burst_len,
    input           rd_valid,
    input           rd_rst,                    // 读地址清零信号  
    output wire [15:0]  rd_fifo_rd_data,
    output wire [9 :0]  rd_fifo_num,

 // sdram_wr
    input  sdram_wr_ack,
    output reg  sdram_wr_req ,
    output reg [23:0] sdram_wr_addr,
    output wire [15:0] sdram_data_in,
 // sdram_rd
    input       sdram_rd_ack,
    output reg  sdram_rd_req ,
    output reg [23:0] sdram_rd_addr,
    input  wire [15:0] sdram_data_out
);

wire [9:0]  wr_fifo_num;
reg   wr_ack_reg;
wire  wr_ack_fall ;
reg   rd_ack_reg;
wire  rd_ack_fall ;
reg  read_valid;
wire wr_fifo_full ;
wire rd_fifo_full ;

//保证先进行了写操作后再进行读操作

always @(posedge clk or negedge rst_n) begin
   if(~rst_n)
      read_valid <= 1'b0;
   else if (rd_valid && sdram_wr_req)
      read_valid <= 1'b1;
end


always @(posedge clk or negedge rst_n) begin
   if(~rst_n)
      wr_ack_reg <= 1'b0;
   else
      wr_ack_reg <= sdram_wr_ack;
end

always @(posedge clk or negedge rst_n) begin
   if(~rst_n)
      rd_ack_reg <= 1'b0;
   else
      rd_ack_reg <= sdram_rd_ack;
end

assign wr_ack_fall = (wr_ack_reg && ~sdram_wr_ack);
assign rd_ack_fall = (rd_ack_reg && ~sdram_rd_ack);

always @(posedge clk or negedge rst_n) begin
   if(~rst_n)
      sdram_wr_addr  <= 24'd0;
   else if (wr_rst)
      sdram_wr_addr  <= sdram_wr_b_addr;
   else if (wr_ack_fall == 1'b1)
      begin
         if (sdram_wr_addr < sdram_wr_e_addr - wr_burst_len)
            sdram_wr_addr <= sdram_wr_addr + wr_burst_len ;
         else 
            sdram_wr_addr <= sdram_wr_b_addr;
      end
end

always @(posedge clk or negedge rst_n) begin
   if(~rst_n)
      sdram_rd_addr  <= 24'd0;
   else if (rd_rst)
      sdram_rd_addr  <= sdram_rd_b_addr;
   else if (rd_ack_fall == 1'b1)
      begin
         if (sdram_rd_addr < sdram_rd_e_addr - rd_burst_len)
            sdram_rd_addr <= sdram_rd_addr + rd_burst_len ;
         else 
            sdram_rd_addr <= sdram_rd_b_addr;
      end
end

always @(posedge clk or negedge rst_n) begin
   if(~rst_n)
      begin
         sdram_wr_req  <= 1'b0;
         sdram_rd_req  <= 1'b0;
      end
   else if (init_end)
      begin
            if (wr_fifo_num >= wr_burst_len || wr_fifo_full)
               begin
                  sdram_wr_req  <= 1'b1;
                  sdram_rd_req  <= 1'b0;
               end
            else if ((rd_fifo_num < rd_burst_len) && rd_valid)
               begin
                  sdram_wr_req  <= 1'b0;  
                  sdram_rd_req  <= 1'b1;
               end
            else 
               begin
                  sdram_wr_req  <= 1'b0;
                  sdram_rd_req  <= 1'b0;
               end
      end
   else
      begin
         sdram_wr_req  <= 1'b0;
         sdram_rd_req  <= 1'b0;
      end
end

sdram_fifo	sdram_fifo_wr 
(
   // in
   .wrclk ( wr_fifo_wr_clk ),
	.wrreq ( wr_fifo_wr_req ),
	.data  ( wr_fifo_wr_data ),
   // sdram_in
	.rdclk ( clk ),
	.rdreq ( sdram_wr_ack ),
	.q     ( sdram_data_in ),

	.aclr  ( ~rst_n || wr_rst ),
   .wrfull (  ),
   .rdfull ( wr_fifo_full ),
	.rdusedw ( wr_fifo_num ),
	.wrusedw (  )
);

sdram_fifo	sdram_fifo_rd 
(
   //sdram_out
   .wrclk ( clk ),
	.wrreq (sdram_rd_ack ),
	.data  (sdram_data_out ),
   //out
	.rdclk ( rd_fifo_rd_clk ),
	.rdreq ( rd_fifo_rd_req ),
	.q ( rd_fifo_rd_data ),

	.aclr  ( ~rst_n || rd_rst ),
   .wrfull (  rd_fifo_full),
   .rdfull (  ),
	.rdusedw (  ),
	.wrusedw ( rd_fifo_num )
);

endmodule