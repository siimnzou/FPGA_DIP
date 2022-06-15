/*--------------------------------------------------------------------------------------
    创建时间：2022/4/27
    器件: Altera EP4CE10F17C8N
    模块名：SDRAM_RD
    所属工程：OV5640_VGA
    版本：V1.0
    
    介绍：
    SDRAM读写控制器写模块，对SDRAM进行写操作
--------------------------------------------------------------------------------------*/
module SDRAM_WR
(
    input             clk,
    input             rst_n,
    input             init_end,
    input             wr_en,
    input   [23:0]    wr_addr,    // 两位宽bank地址 13位宽行地址、9位宽列地址
    input   [15:0]    wr_data,    
    input   [9:0]     wr_burst_len,  // 采用页突发，一页512个，采用突发停止模式，可以实现任意长度的写入

    output reg [3:0]  wr_cmd,
    output wire        wr_ack,
    output wire        wr_end,
    output reg [1:0]  wr_ba,
    output reg [12:0] wr_sdram_addr,
    output reg        wr_sdram_en,
    output wire [15:0] wr_sdram_data
);

parameter WR_IDLE   =  8'b0000_0001,
          WR_ACTIVE =  8'b0000_0010,
          WR_TRCD   =  8'b0000_0100,
          WR_WRITE  =  8'b0000_1000,
          WR_DATA   =  8'b0001_0000,
          WR_PRE    =  8'b0010_0000,
          WR_TRP    =  8'b0100_0000,
          WR_END    =  8'b1000_0000;

parameter TRP  = 3'd2,
          TRCD = 3'd2;

parameter NOP        = 4'b0111,
          PRE_CHARGE = 4'b0010,
          ACTIVE     = 4'b0011,
          WRITE      = 4'b0100,
          BURST_STOP = 4'b0110;

reg [7:0] state;
reg [9:0] cnt_clk;
reg       trcd_end;
reg       trp_end;
reg       wr_data_end;

always @(posedge clk or negedge rst_n) begin
    if (~rst_n)
        state <= WR_IDLE;
    else 
        case (state)
            WR_IDLE   :
                if (init_end && wr_en)
                    state <= WR_ACTIVE;
                else 
                    state <= WR_IDLE;
            WR_ACTIVE :
                    state <= WR_TRCD; 
            WR_TRCD   :
                if (trcd_end)
                    state <= WR_WRITE;
                else    
                    state <= WR_TRCD;    
            WR_WRITE  :
                    state <= WR_DATA;
            WR_DATA   :
                if (wr_data_end)
                    state <= WR_PRE;
                else 
                    state <= WR_DATA;
            WR_PRE    :
                    state <= WR_TRP;
            WR_TRP    :
                if (trp_end)
                    state <= WR_END;
                else 
                    state <= WR_TRP;
            WR_END    :
                state <= WR_IDLE;
            default:state <= WR_IDLE;
        endcase
end

always @(posedge clk or negedge rst_n) begin
    if(~rst_n)
        trp_end <= 1'b0;
    else if (state == WR_TRP && cnt_clk == TRP - 2)
        trp_end <= 1'b1;
    else 
        trp_end <= 1'b0;
end

always @(posedge clk or negedge rst_n) begin
    if(~rst_n)
        trcd_end <= 1'b0;
    else if (state == WR_TRCD && cnt_clk == TRCD - 2)
        trcd_end <= 1'b1;
    else 
        trcd_end <= 1'b0;
end

always @(posedge clk or negedge rst_n) begin
    if(~rst_n)
        wr_data_end <= 1'b0;
    else if (state == WR_DATA && cnt_clk == wr_burst_len - 2)
        wr_data_end <= 1'b1;
    else 
        wr_data_end <= 1'b0;
end

always @(posedge clk or negedge rst_n) begin
    if(~rst_n)
        cnt_clk <= 10'd0;
    else if ((state == WR_TRP && cnt_clk == TRP - 1)
            || (state == WR_TRCD && cnt_clk == TRCD - 1)
            || (state == WR_DATA && cnt_clk == wr_burst_len - 1))
        cnt_clk <= 10'd0;
    else if ((state == WR_TRP )
            || (state ==  WR_TRCD )
            || (state == WR_DATA))
        cnt_clk <= cnt_clk + 1'b1;
    else 
        cnt_clk <= cnt_clk;
end

assign wr_ack = (state == WR_WRITE) || (state == WR_DATA && cnt_clk < wr_burst_len - 1);
assign wr_end = (state == WR_END);

always @(posedge clk or negedge rst_n) begin
    if(~rst_n)
        begin
        wr_cmd  <= NOP;
        wr_ba   <= 2'b11;
        wr_sdram_addr <= 13'h1fff;
        end
    else
        case (state)
            WR_IDLE,WR_TRP,WR_TRCD,WR_END:
                begin
                    wr_cmd  <= NOP;
                    wr_ba   <= 2'b11;
                    wr_sdram_addr <= 13'h1fff;
                end
            WR_ACTIVE:
                begin
                    wr_cmd  <= ACTIVE;
                    wr_ba   <= wr_addr[23:22];
                    wr_sdram_addr <= wr_addr[21:9];
                end
            WR_WRITE:
                begin
                    wr_cmd  <= WRITE;
                    wr_ba   <= wr_addr[23:22];
                    wr_sdram_addr <= {4'b0,wr_addr[8:0]};
                end
            WR_DATA:
                if (wr_data_end)
                    wr_cmd <= BURST_STOP;
                else
                    begin
                        wr_cmd  <= NOP;
                        wr_ba   <= 2'b11;
                        wr_sdram_addr <= 13'h1fff;
                    end
            WR_PRE:
                begin
                    wr_cmd  <= PRE_CHARGE;
                    wr_ba   <= wr_addr[23:22];
                    wr_sdram_addr <= 13'h0400;    // 对全部bank进行预充电
                end 
            default:
                begin
                    wr_cmd  <= NOP;
                    wr_ba   <= 2'b11;
                    wr_sdram_addr <= 13'h1fff;  
                end
        endcase
end

always @(posedge clk or negedge rst_n) begin
    if(~rst_n)
        wr_sdram_en <= 1'b0;
    else 
        wr_sdram_en <= wr_ack;
end

assign wr_sdram_data = (wr_sdram_en) ? wr_data : 16'd0;


endmodule