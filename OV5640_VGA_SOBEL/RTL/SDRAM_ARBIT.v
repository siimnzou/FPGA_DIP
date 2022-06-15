/*--------------------------------------------------------------------------------------
    创建时间：2022/4/27
    器件: Altera EP4CE10F17C8N
    模块名：SDRAM_ARBIT
    所属工程：OV5640_VGA
    版本：V1.0
    
    介绍：
    SDRAM读写控制器仲裁模块
--------------------------------------------------------------------------------------*/
module SDRAM_ARBIT
(
    input       clk,
    input       rst_n,

    input[3:0]  init_cmd,
    input[1:0]  init_ba,
    input[12:0] init_addr,
    input       init_end,

    input [3:0]  aref_cmd,
    input [1:0]  aref_ba,
    input [12:0] aref_addr,
    input        aref_end,
    input        aref_req,

    input [3:0]   rd_cmd,
    input         rd_req,
    input         rd_end,
    input [1:0]   rd_ba,
    input [12:0]  rd_addr,

    input [3:0]  wr_cmd,
    input        wr_req,
    input        wr_end,
    input [1:0]  wr_ba,
    input [12:0] wr_addr,
    input        wr_sdram_en,
    input [15:0] wr_data,

    output reg aref_en,
    output reg wr_en,
    output reg rd_en,

    output wire        sdram_cs_n,
    output wire        sdram_cas_n,
    output wire        sdram_ras_n,
    output wire        sdram_we_n,
    output reg [1:0]  sdram_ba,
    output reg [12:0] sdram_addr,
    inout  wire [15:0] sdram_dq,
    output wire       sdram_cke
);

parameter IDLE     = 5'b00001,
          ARBIT    = 5'b00010,
          WRITE    = 5'b00100,
          READ     = 5'b01000,
          AUTO_REF = 5'b10000;

parameter NOP  = 4'b0111;

reg  [4:0] state ;
reg  [3:0] sdram_cmd;

always @(posedge clk or negedge rst_n) begin
    if(~rst_n)
        state <= IDLE;
    else 
        case (state)
            IDLE     :   
                if (init_end)
                    state <= ARBIT;
                else 
                    state <= IDLE;
            ARBIT    :
                if (aref_req)
                    state <= AUTO_REF;
                else if (wr_req)
                    state <= WRITE;
                else if (rd_req)
                    state <= READ;
                else 
                    state <= ARBIT;
            WRITE    :
                if (wr_end)
                    state <= ARBIT;
                else 
                    state <= WRITE;
            READ     :
                if (rd_end)
                    state <= ARBIT;
                else 
                    state <= READ;
            AUTO_REF :
                if (aref_end)
                    state <= ARBIT;
                else 
                    state <= AUTO_REF;
            default: state <= IDLE;
        endcase
end

always @(*) begin
    case (state)
        IDLE   :
            begin
                sdram_cmd  = init_cmd;
                sdram_addr = init_addr;
                sdram_ba   = init_ba;
            end 
        ARBIT   :
            begin
                sdram_cmd  = NOP;
                sdram_addr = 13'h1fff;
                sdram_ba   = 2'b11;
            end 
        WRITE   :
            begin
                sdram_cmd  = wr_cmd;
                sdram_addr = wr_addr;
                sdram_ba   = wr_ba;
            end 
        READ    :
            begin
                sdram_cmd  = rd_cmd;
                sdram_addr = rd_addr;
                sdram_ba   = rd_ba;
            end 
        AUTO_REF:
            begin
                sdram_cmd  = aref_cmd;
                sdram_addr = aref_addr;
                sdram_ba   = aref_ba;
            end 
        default:
            begin
                sdram_cmd  = init_cmd;
                sdram_addr = init_addr;
                sdram_ba   = init_ba;
            end 
    endcase
end

always @(posedge clk or negedge rst_n) begin
    if(~rst_n)
        aref_en <= 1'b0;
    else if (state == ARBIT && aref_req)
        aref_en <= 1'b1;
    else if (aref_end)
        aref_en <= 1'b0;
    else 
        aref_en <= aref_en;
end

always @(posedge clk or negedge rst_n) begin
    if(~rst_n)
        wr_en <= 1'b0;
    else if (state == ARBIT && ~aref_req && wr_req)
        wr_en <= 1'b1;
    else if (wr_end)
        wr_en <= 1'b0;
    else 
        wr_en <= wr_en;
end

always @(posedge clk or negedge rst_n) begin
    if(~rst_n)
        rd_en <= 1'b0;
    else if (state == ARBIT && ~aref_req && ~wr_req && rd_req)
        rd_en <= 1'b1;
    else if (rd_end)
        rd_en <= 1'b0;
    else 
        rd_en <= rd_en;
end

assign {sdram_cs_n,sdram_ras_n,sdram_cas_n,sdram_we_n} = sdram_cmd;

assign sdram_cke = 1'b1;

assign sdram_dq = (wr_sdram_en)? wr_data : 16'hzzzz;

endmodule