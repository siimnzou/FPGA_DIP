module SDRAM_RD
(
    input             clk,
    input             rst_n,
    input             init_end,
    input             rd_en,
    input   [23:0]    rd_addr,    // 两位宽bank地址 13位宽行地址、9位宽列地址
    input   [15:0]    rd_data,    
    input   [9:0]     rd_burst_len,  // 采用页突发，一页512个，采用突发停止模式，可以实现任意长度的写入

    output reg [3:0]   rd_cmd,
    output wire        rd_ack,
    output wire        rd_end,
    output reg [1:0]   rd_ba,
    output reg [12:0]  rd_sdram_addr,
    output wire [15:0] rd_sdram_data

);

parameter RD_IDLE   =  9'b00000_0001,
          RD_ACTIVE =  9'b00000_0010,
          RD_TRCD   =  9'b00000_0100,
          RD_READ   =  9'b00000_1000,
          RD_CL     =  9'b00001_0000,
          RD_DATA   =  9'b00010_0000,
          RD_PRE    =  9'b00100_0000,
          RD_TRP    =  9'b01000_0000,
          RD_END    =  9'b10000_0000;

parameter TRP  = 3'd2,
          TRCD = 3'd2,
          CL   = 3'd3;

parameter NOP        = 4'b0111,
          PRE_CHARGE = 4'b0010,
          ACTIVE     = 4'b0011,
          READ       = 4'b0101,
          BURST_STOP = 4'b0110;


reg [8:0] state;
reg [9:0] cnt_clk;
reg       trcd_end;
reg       trp_end;
reg       cl_end;
reg       rd_data_end;   
reg [15:0] rd_data_reg;

always @(posedge clk or negedge rst_n) begin
    if (~rst_n)
        rd_data_reg <= 16'd0;
    else
        rd_data_reg <= rd_data;
end

always @(posedge clk or negedge rst_n) begin
    if (~rst_n)
        state <= RD_IDLE;
    else 
        case (state)
            RD_IDLE   :
                if (init_end && rd_en)
                    state <= RD_ACTIVE;
                else 
                    state <= RD_IDLE;
            RD_ACTIVE :
                    state <= RD_TRCD; 
            RD_TRCD   :
                if (trcd_end)
                    state <= RD_READ;
                else    
                    state <= RD_TRCD;    
            RD_READ  :
                    state <= RD_CL;
            RD_CL     :
                if (cl_end)
                    state <= RD_DATA;
                else 
                    state <= RD_CL;
            RD_DATA   :
                if (rd_data_end)
                    state <= RD_PRE;
                else 
                    state <= RD_DATA;
            RD_PRE    :
                    state <= RD_TRP;
            RD_TRP    :
                if (trp_end)
                    state <= RD_END;
                else 
                    state <= RD_TRP;
            RD_END    :
                state <= RD_IDLE;
            default:state <= RD_IDLE;
        endcase
end

always @(posedge clk or negedge rst_n) begin
    if(~rst_n)
        trp_end <= 1'b0;
    else if (state == RD_TRP && cnt_clk == TRP - 2)
        trp_end <= 1'b1;
    else 
        trp_end <= 1'b0;
end

always @(posedge clk or negedge rst_n) begin
    if(~rst_n)
        trcd_end <= 1'b0;
    else if (state == RD_TRCD && cnt_clk == TRCD - 2)
        trcd_end <= 1'b1;
    else 
        trcd_end <= 1'b0;
end

always @(posedge clk or negedge rst_n) begin
    if(~rst_n)
        cl_end <= 1'b0;
    else if (state == RD_CL && cnt_clk == CL - 2)
        cl_end  <= 1'b1;
    else 
        cl_end  <= 1'b0;
end

always @(posedge clk or negedge rst_n) begin
    if(~rst_n)
        rd_data_end <= 1'b0;
    else if (state == RD_DATA && cnt_clk == rd_burst_len + CL - 2)
        rd_data_end <= 1'b1;
    else 
        rd_data_end <= 1'b0;
end

always @(posedge clk or negedge rst_n) begin
    if(~rst_n)
        cnt_clk <= 10'd0;
    else if ((state == RD_TRP && cnt_clk == TRP - 1)
            || (state == RD_TRCD && cnt_clk == TRCD - 1)
            || (state == RD_CL && cnt_clk == CL - 1)
            || (state == RD_DATA && cnt_clk == rd_burst_len + CL - 1))
        cnt_clk <= 10'd0;
    else if ((state == RD_TRP )
            || (state ==  RD_TRCD )
            || (state == RD_CL)
            || (state == RD_DATA))
        cnt_clk <= cnt_clk + 1'b1;
    else 
        cnt_clk <= cnt_clk;
end

assign rd_ack = (state == RD_DATA && cnt_clk > 0 && cnt_clk <= rd_burst_len);
assign rd_end = (state == RD_END);

always @(posedge clk or negedge rst_n) begin
    if(~rst_n)
        begin
        rd_cmd  <= NOP;
        rd_ba   <= 2'b11;
        rd_sdram_addr <= 13'h1fff;
        end
    else
        case (state)
            RD_IDLE,RD_TRP,RD_TRCD,RD_END,RD_CL:
                begin
                    rd_cmd  <= NOP;
                    rd_ba   <= 2'b11;
                    rd_sdram_addr <= 13'h1fff;
                end
            RD_ACTIVE:
                begin
                    rd_cmd  <= ACTIVE;
                    rd_ba   <= rd_addr[23:22];
                    rd_sdram_addr <= rd_addr[21:9];
                end
            RD_READ:
                begin
                    rd_cmd  <= READ;
                    rd_ba   <= rd_addr[23:22];
                    rd_sdram_addr <= {4'b0,rd_addr[8:0]};
                end
            RD_DATA:
                if (cnt_clk == rd_burst_len - 1 - CL)
                    rd_cmd <= BURST_STOP;
                else
                    begin
                        rd_cmd  <= NOP;
                        rd_ba   <= 2'b11;
                        rd_sdram_addr <= 13'h1fff;
                    end
            RD_PRE:
                begin
                    rd_cmd  <= PRE_CHARGE;
                    rd_ba   <= rd_addr[23:22];
                    rd_sdram_addr <= 13'h0400;    // 对全部bank进行预充电
                end 
            default:
                begin
                    rd_cmd  <= NOP;
                    rd_ba   <= 2'b11;
                    rd_sdram_addr <= 13'h1fff;  
                end
        endcase
end

assign rd_sdram_data = (rd_ack) ? rd_data_reg : 16'b0;

endmodule