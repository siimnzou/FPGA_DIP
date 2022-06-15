module SDRAM_INIT
(
    input clk,   // 时钟频率为100MHz
    input rst_n,

    output reg [3:0]  init_cmd,
    output reg [1:0]  init_ba,
    output reg [12:0] init_addr,
    output reg       init_end
);

parameter INIT_IDLE = 8'b00000001,     // 定义初始化的开始状态，在进入初始化前需要有一个等待时间，设置为200us，使用cnt_200us计数
          INIT_PRE  = 8'b00000010,     // 预充电指令
          INIT_TRP  = 8'b00000100,     // 预充电等待
          INIT_AR   = 8'b00001000,     // 自动刷新指令
          INIT_TRFC = 8'b00010000,     // 自动刷新等待
          INIT_MRS  = 8'b00100000,     //   模式寄存器配置
          INIT_TMRD = 8'b01000000,     //   模式寄存器配置等待
          INIT_END  = 8'b10000000;     //   初始化结束，一直保持END

parameter TRP  = 3'd2,      // 预充电等待周期
          TRFC = 3'd7,      // 自刷新等待周期
          TMRD = 3'd3,      // 模式寄存配置等待周期
          CNT_200US_MAX = 15'd20_000;  // 初始化之前等待周期

parameter NOP        = 4'b0111,
          PRE_CHARGE = 4'b0010,
          AUTO_REF   = 4'b0001,
          M_REG_SET  = 4'b0000;


reg [7:0]   state;
reg         idle_end;   // 初始化前等待时间结束信号
reg         trp_end;    // 预充电等待时间结束信号
reg         trfc_end;   // 自刷新等待时间结束信号
reg         tmrd_end;   // 模式寄存器配置等待时间结束信号
reg [2:0]      cnt_clk;
reg [14:0]  cnt_200us;
reg [2:0]   cnt_aref ;  // 记录自刷新的周期，用于状态机跳转

//  状态机的跳转
always @(posedge clk or negedge rst_n) begin
    if(~rst_n)
        state <= INIT_IDLE;
    else
        case (state)
            INIT_IDLE :
                if (idle_end)
                    state <= INIT_PRE;
                else 
                    state <= INIT_IDLE;
            INIT_PRE :
                    state <= INIT_TRP;
            INIT_TRP :
                if (trp_end)
                    state <= INIT_AR;
                else 
                    state <= INIT_TRP;
            INIT_AR  :
                     state <= INIT_TRFC;
            INIT_TRFC:  
                if (trfc_end && cnt_aref == 3'd2)   // 此处由于规定自刷新需要进行2次以上，所以需要添加cnt_aref 作为判断条件
                    state <= INIT_MRS;
                else if (trfc_end)
                    state <= INIT_AR;
                else 
                    state <= INIT_TRFC;            
            INIT_MRS :
                    state <= INIT_TMRD;
            INIT_TMRD:
                if (tmrd_end)
                    state <= INIT_END;
                else 
                    state <= INIT_TMRD;
            INIT_END:
                    state <= INIT_END;
            default: 
                    state <= INIT_IDLE;
        endcase
end

always @(posedge clk or negedge rst_n) begin
    if(~rst_n)
        cnt_200us <= 15'd0;
    else if (cnt_200us == CNT_200US_MAX)
        cnt_200us <= cnt_200us;
    else 
        cnt_200us <= cnt_200us + 1'b1;
end

always @(posedge clk or negedge rst_n) begin
    if(~rst_n)
        idle_end <= 1'b0;
    else if (state == INIT_IDLE && cnt_200us == CNT_200US_MAX - 2)
        idle_end <= 1'b1;
    else 
        idle_end <= 1'b0;
end


always @(posedge clk or negedge rst_n) begin
    if(~rst_n)
        cnt_clk <= 3'd0;
    else if ((state == INIT_TRP && cnt_clk == TRP - 1)
            || (state == INIT_TRFC && cnt_clk == TRFC - 1)
            || (state == INIT_TMRD && cnt_clk == TMRD - 1))
        cnt_clk <= 3'd0;
    else if ((state == INIT_TRP )
            || (state == INIT_TRFC )
            || (state == INIT_TMRD ))
        cnt_clk <= cnt_clk + 1'b1;
    else 
        cnt_clk <= cnt_clk;
end
// 预充电等待时间结束信号赋值
always @(posedge clk or negedge rst_n) begin
    if(~rst_n)
        trp_end <= 1'b0;
    else if (state == INIT_TRP && cnt_clk == TRP - 2)
        trp_end <= 1'b1;
    else 
        trp_end <= 1'b0;
end
// 自刷新等待时间结束信号赋值
always @(posedge clk or negedge rst_n) begin
    if(~rst_n)
        trfc_end <= 1'b0;
    else if (state == INIT_TRFC && cnt_clk == TRFC - 2)
        trfc_end <= 1'b1;
    else 
        trfc_end <= 1'b0;
end
// 模式寄存器配置等待时间结束信号赋值
always @(posedge clk or negedge rst_n) begin
    if(~rst_n)
        tmrd_end <= 1'b0;
    else if (state == INIT_TMRD && cnt_clk == TMRD - 2)
        tmrd_end <= 1'b1;
    else 
        tmrd_end <= 1'b0;
end
// 自刷新次数计数器赋值
always @(posedge clk or negedge rst_n) begin
    if(~rst_n)
        cnt_aref <= 3'd0;
    else if (state == INIT_AR)
        cnt_aref <= cnt_aref + 1'b1;
    else 
        cnt_aref <= cnt_aref;
end

always @(posedge clk or negedge rst_n) begin
    if(~rst_n)
        begin
        init_cmd  <= NOP;
        init_ba   <= 2'b11;
        init_addr <= 13'h1fff;
        end
    else
        case (state)
            INIT_IDLE,INIT_TRP,INIT_TRFC,INIT_TMRD,INIT_END:
                begin
                    init_cmd  <= NOP;
                    init_ba   <= 2'b11;
                    init_addr <= 13'h1fff;
                end
            INIT_PRE:
                begin
                    init_cmd  <= PRE_CHARGE;
                    init_ba   <= 2'b11;
                    init_addr <= 13'h1fff;
                end
            INIT_AR:
                begin
                    init_cmd  <= AUTO_REF;
                    init_ba   <= 2'b11;
                    init_addr <= 13'h1fff;
                end
            INIT_MRS:
                begin
                    init_cmd  <= M_REG_SET;
                    init_ba   <= 2'b00;
                    init_addr <= 13'b000_0_00_011_0_111;  // 根据数据手册配置模式寄存器
                end
            default:
                begin
                    init_cmd  <= NOP;
                    init_ba   <= 2'b11;
                    init_addr <= 13'h1fff;  
                end
        endcase
end

always @(posedge clk or negedge rst_n) begin
    if(~rst_n)
        init_end <= 1'b0;
    else if (state == INIT_END)
        init_end <= 1'b1;
    else 
        init_end <= 1'b0;
end

endmodule