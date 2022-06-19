/*--------------------------------------------------------------------------------------
    创建时间：2022/4/27
    器件: Altera EP4CE10F17C8N
    模块名：SDRAM_AREF
    所属工程：OV5640_VGA
    版本：V1.0
    
    介绍：
    SDRAM读写控制器自动刷新模块
--------------------------------------------------------------------------------------*/
module SDRAM_AREF
(
    input clk,   // 时钟频率为100MHz
    input rst_n,
    input init_end,
    input aref_en,

    output reg [3:0]  aref_cmd,
    output reg [1:0]  aref_ba,
    output reg [12:0] aref_addr,
    output reg        aref_end,
    output reg        aref_req
);

parameter AREF_CYCLE =  10'd749,  // 定义自动刷新的周期
          TRP   = 3'd2,           
          TRFC  = 3'd7;

parameter AREF_IDLE  = 6'b000001,
          AREF_PRE   = 6'b000010,
          AREF_TRP   = 6'b000100,
          AREF_AR    = 6'b001000,
          AREF_TRFC  = 6'b010000,
          AREF_END   = 6'b100000;

parameter NOP        = 4'b0111,
          PRE_CHARGE = 4'b0010,
          AUTO_REF   = 4'b0001;


reg [5:0]   state ;
wire         aref_ack  ;      
reg [2:0]   cnt_clk;
reg [9:0]   cnt_cycle;
reg [2:0]   cnt_aref;
reg         trp_end;
reg         trfc_end;

always @(posedge clk or negedge rst_n) begin
    if (~rst_n)
        cnt_cycle <= 10'b0;
    else if (cnt_cycle == AREF_CYCLE)
        cnt_cycle <= 10'd0;
    else if (init_end == 1'b1)
        cnt_cycle <= cnt_cycle + 1'b1;
    else 
        cnt_cycle <= cnt_cycle;
end


// 当自动刷新周期计数器计满后，需要进行自动刷新，此时向仲裁模块发出自动刷新请求
// 当仲裁模块响应，输入的aref_en拉高时，将自动刷新请求信号拉低
always @(posedge clk or negedge rst_n) begin
    if (~rst_n)
        aref_req <= 1'b0;
    else if (cnt_cycle == AREF_CYCLE)
        aref_req <= 1'b1;
    else if (aref_ack)
        aref_req <= 1'b0;
    else  
        aref_req <= aref_req;
end

assign aref_ack = aref_req && aref_en;

// 
always @(posedge clk or negedge rst_n) begin
    if (~rst_n)
        state <= AREF_IDLE;
    else    
        case (state)
            AREF_IDLE :
                if (aref_ack)
                    state <= AREF_PRE;
                else    
                    state <= AREF_IDLE;
            AREF_PRE  :
                    state <= AREF_TRP;
            AREF_TRP  :
                if (trp_end)
                    state <= AREF_AR;
                else 
                    state <= AREF_TRP;
            AREF_AR   :
                    state <=  AREF_TRFC ;
            AREF_TRFC :
                if (trfc_end && cnt_aref == 3'd2)
                    state <= AREF_END;
                else if (trfc_end)
                    state <= AREF_AR;
                else   
                    state <=  AREF_TRFC ;
            AREF_END  :
                state <= AREF_IDLE;
            default:state <= AREF_IDLE;
        endcase
end

always @(posedge clk or negedge rst_n) begin
    if(~rst_n)
        cnt_clk <= 3'd0;
    else if ((state == AREF_TRP && cnt_clk == TRP - 1)
            || (state == AREF_TRFC && cnt_clk == TRFC - 1))
        cnt_clk <= 3'd0;
    else if ((state == AREF_TRP )
            || (state == AREF_TRFC ))
        cnt_clk <= cnt_clk + 1'b1;
    else 
        cnt_clk <= cnt_clk;
end

always @(posedge clk or negedge rst_n) begin
    if(~rst_n)
        cnt_aref <= 3'd0;
    else if (state == AREF_END)
        cnt_aref <= 3'd0;
    else if (state ==  AREF_AR)
        cnt_aref <= cnt_aref + 1'b1;
    else 
        cnt_aref <= cnt_aref;
end
// 预充电等待时间结束信号赋值
always @(posedge clk or negedge rst_n) begin
    if(~rst_n)
        trp_end <= 1'b0;
    else if (state == AREF_TRP && cnt_clk == TRP - 2)
        trp_end <= 1'b1;
    else 
        trp_end <= 1'b0;
end
// 自刷新等待时间结束信号赋值
always @(posedge clk or negedge rst_n) begin
    if(~rst_n)
        trfc_end <= 1'b0;
    else if (state == AREF_TRFC && cnt_clk == TRFC - 2)
        trfc_end <= 1'b1;
    else 
        trfc_end <= 1'b0;
end

always @(posedge clk or negedge rst_n) begin
    if(~rst_n)
        begin
        aref_cmd  <= NOP;
        aref_ba   <= 2'b11;
        aref_addr <= 13'h1fff;
        end
    else
        case (state)
            AREF_IDLE,AREF_TRP,AREF_TRFC,AREF_END:
                begin
                    aref_cmd  <= NOP;
                    aref_ba   <= 2'b11;
                    aref_addr <= 13'h1fff;
                end
            AREF_PRE:
                begin
                    aref_cmd  <= PRE_CHARGE;
                    aref_ba   <= 2'b11;
                    aref_addr <= 13'h1fff;
                end
            AREF_AR:
                begin
                    aref_cmd  <= AUTO_REF;
                    aref_ba   <= 2'b11;
                    aref_addr <= 13'h1fff;
                end
            default:
                begin
                    aref_cmd  <= NOP;
                    aref_ba   <= 2'b11;
                    aref_addr <= 13'h1fff;  
                end
        endcase
end

always @(posedge clk or negedge rst_n) begin
    if(~rst_n)
        aref_end <= 1'b0;
    else if (state == AREF_END)
        aref_end <= 1'b1;
    else 
        aref_end <= 1'b0;
end

endmodule