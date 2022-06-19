/*--------------------------------------------------------------------------------------
    创建时间：2022/4/27
    器件: Altera EP4CE10F17C8N
    模块名：IIC_CTRL
    所属工程：OV5640_VGA
    版本：V1.0
    
    介绍：
    SCCB总线的驱动控制（与IIC相似，故用IIC驱动模块代替）
--------------------------------------------------------------------------------------*/
module IIC_CTRL
#(
    parameter DIV_FREQ = 10'd200 //定义器件的工作频率。这里250k所以用200
)
(
input           clk     ,     // 系统时钟，此处用的为50MHz
input           rst_n   ,     // 复位信号
input           wr_en     , // 写使能信号
input   [6:0]   dev_addr  , // 输入的器件地址
input   [15:0]  addr     ,    // 写或读地址
input   [7:0]   data     ,    // 输入的数据
input           addr_num    , // 地址数。1位2位，0为1位
input           rd_en     , // 读使能信号

output wire     scl         ,     //输出到器件的scl线
inout  wire     sda         ,     //输出到器件的sda线
output reg      done_flag   ,     //完成标志
output reg    [7:0]  rd_data_reg  //读到的数据
);




parameter QUART_MAX = (DIV_FREQ >> 2) - 1 ,     //这些参数用于产生高低电平以及下降沿标志信号
          HALF_MAX  = (DIV_FREQ >> 1) - 1 ,
          THREE_QUART_MAX = (HALF_MAX + QUART_MAX) + 1 ,
          EDGE_MAX  = (DIV_FREQ >> 1) + 1 ;

parameter IDLE                 =   4'd0      ,   //状态机各状态定义
          START                =   4'd1      ,
          WR_DEV_ADDR          =   4'd2      ,
          ACK1                 =   4'd3      ,
          WR_DATA_ADDR_H       =   4'd4      ,
          ACK2                 =   4'd5      ,
          WR_DATA_ADDR_L       =   4'd6      ,
          ACK3                 =   4'd7      ,
          WR_DATA              =   4'd8      ,
          ACK4                 =   4'd9      ,
          STOP                 =   4'd10     ,
          START2               =   4'd11     ,
          RD_DEV_ADDR          =   4'd12     ,
          ACK5                 =   4'd13     ,
          RD_DATA              =   4'd14     ,
          NACK                 =   4'd15     ;

wire    [7:0]   dev_addr_rd = {dev_addr,1'b1};
wire    [7:0]   dev_addr_wr = {dev_addr,1'b0};

wire            scl_low_flag    ; // 时钟线低电平中央的标志信号
wire            scl_high_flag   ; // 时钟线高电平中央的标志信号
wire            scl_down_edge_flag  ;
reg  [10:0]     scl_cnt             ;
reg             scl_en          ;
reg  [3:0]      state           ;
reg             assign_flag     ;
reg  [3:0]      cnt_bit         ;
reg             iic_mode        ;
reg             sda_en          ;
wire            sda_in          ;
reg             sda_reg         ;
reg             ack_valid       ;


wire   [7:0]    addr_high ;
wire   [7:0]    addr_low  ;


assign addr_high = (addr_num == 1'b1) ? addr[15:8]:8'b0;
assign addr_low  = addr[7:0];
assign scl             =  (scl_cnt <= HALF_MAX) ? 1'b1 : 1'b0         ;  // 产生时钟线
assign scl_low_flag      =  (scl_cnt == THREE_QUART_MAX - 1)? 1'b1 : 1'b0   ;  // 产生时钟线低电平中央的标志信号
assign scl_high_flag     =  (scl_cnt == QUART_MAX)? 1'b1 : 1'b0         ;  // 产生时钟线高电平中央的标志信号
//assign scl_down_edge_flag    =  (scl_cnt == EDGE_MAX)? 1'b1 : 1'b0      ;  // 产生时钟线下降沿的标志信号

// 产生一个计数器来生成1MHz的scl 
always @(posedge clk or negedge rst_n) begin
    if (!rst_n)
        scl_cnt <= 11'd0;
    else if (scl_en == 1'b1 && scl_cnt == DIV_FREQ - 1)
        scl_cnt <= 11'd0;
    else if (scl_en == 1'b1)
        scl_cnt <= scl_cnt + 1'b1;
    else 
        scl_cnt <= 11'd0;
end

//产生一个scl使能信号来控制只有当有写和读任务的时候才进行工作
always @(posedge clk or negedge rst_n) begin
    if (!rst_n)
        scl_en <= 1'b0;
    else if (wr_en == 1'b1 || rd_en == 1'b1 )
        scl_en <= 1'b1;
    else if (state == STOP && scl_high_flag) 
        scl_en <= 1'b0;
    else 
        scl_en <= scl_en;
end


//使用ack_valid信号来判断是否传入了正确的应答信号
always @(posedge clk or negedge rst_n)begin
    if (!rst_n)
        ack_valid <= 1'b0;
    else if
        ((state == ACK1 ||
             state == ACK2 ||
             state == ACK3 ||
             state == ACK4 ||
             state == ACK5 ) && scl_high_flag == 1'b1 && sda_in == 1'b0)
        ack_valid <= 1'b1;
    else if (assign_flag == 1'b1)
        ack_valid <= 1'b0;
    else 
        ack_valid <= ack_valid;
end

//状态机的跳转编写
always @(posedge clk or negedge rst_n) begin
    if (!rst_n)
        state <= IDLE; 
    else 
        case (state)
            IDLE              :
                if (wr_en == 1'b1 || rd_en == 1'b1)
                    state <= START;
                else
                    state <= IDLE;
            START             :
                if (scl_low_flag == 1'b1)
                    state <= WR_DEV_ADDR;
                else 
                    state <= START;
            WR_DEV_ADDR       :
                if (scl_low_flag == 1'b1 && cnt_bit == 3'd7)
                    state <= ACK1;
                else 
                    state <= WR_DEV_ADDR;
            ACK1              :
                if (scl_low_flag == 1'b1 && ack_valid == 1'b1 &&  addr_num == 1'b1)
                    state <= WR_DATA_ADDR_H;
                else if (scl_low_flag == 1'b1 && ack_valid == 1'b1  && addr_num == 1'b0)
                    state <= WR_DATA_ADDR_L;    
                else 
                    state <= ACK1;
            WR_DATA_ADDR_H    :
                if (scl_low_flag == 1'b1 && cnt_bit == 3'd7)
                    state <= ACK2;
                else 
                    state <= WR_DATA_ADDR_H;
            ACK2              :
                if (scl_low_flag == 1'b1 && ack_valid == 1'b1 )
                    state <= WR_DATA_ADDR_L;
                else 
                    state <= ACK2;
            WR_DATA_ADDR_L    :                
                if (scl_low_flag == 1'b1 && cnt_bit == 3'd7)
                    state <= ACK3;
                else 
                    state <= WR_DATA_ADDR_L;
            ACK3              :                
                if (scl_low_flag == 1'b1 && ack_valid == 1'b1  && iic_mode == 1'b1)
                    state <= WR_DATA;
                else if (scl_low_flag == 1'b1 && ack_valid == 1'b1  && iic_mode == 1'b0) // 此时为读模式，进入START2状态
                    state <= START2;
                else 
                    state <= ACK3;
            WR_DATA           :
                if (scl_low_flag == 1'b1 && cnt_bit == 3'd7)
                    state <= ACK4;
                else 
                    state <= WR_DATA;
            ACK4              :
                if (scl_low_flag == 1'b1 && ack_valid == 1'b1)
                    state <= STOP;
                else 
                    state <= ACK4;
            STOP              :
                if(scl_high_flag == 1'b1)
                    state <= IDLE;
                else 
                    state <= STOP;
            START2:
                if(scl_low_flag == 1'b1)
                    state <= RD_DEV_ADDR;
                else
                    state <= START2;                
            RD_DEV_ADDR:
                if (cnt_bit == 3'd7 && scl_low_flag == 1'b1)
                    state <= ACK5;
                else 
                    state <= RD_DEV_ADDR;
            ACK5:
                if(scl_low_flag == 1'b1 && ack_valid == 1'b1 )
                    state <= RD_DATA;
                else 
                    state <= ACK5;
             RD_DATA    :
                if (cnt_bit == 3'd7 && scl_low_flag == 1'b1)
                    state <= NACK;
                else 
                    state <= RD_DATA;
             NACK       :
                if (sda == 1'b1 && scl_low_flag == 1'b1)
                    state <= STOP;
                else 
                    state <= NACK; 
            default: state <= IDLE ;
        endcase  
end

//状态机的跳转使用的是下降沿中心位置
//所以对下降沿中心标志信号打一拍作为赋值标志信号，保证赋值标志信号与状态机同步
always @(posedge clk ) begin
    if (!rst_n)
        assign_flag <= 1'b0;
    else 
        assign_flag <= scl_low_flag;
end

//比特计数器的赋值
always @(posedge clk or negedge rst_n) begin
    if (!rst_n)
       cnt_bit <= 3'd0;
    else if (scl_low_flag == 1'b1 && cnt_bit == 3'd7)
        cnt_bit <= 3'd0;
    else if ((state == WR_DEV_ADDR||
             state == WR_DATA_ADDR_H ||      
             state == WR_DATA_ADDR_L ||      
             state == WR_DATA||
             state == RD_DEV_ADDR||
             state == RD_DATA) && scl_low_flag == 1'b1)
        cnt_bit <= cnt_bit + 1'b1;   
    else 
        cnt_bit <= cnt_bit;
end

//sda_reg的赋值 
always @(posedge clk or negedge rst_n) begin
    if (!rst_n)
        sda_reg <= 1'b1;
    else if (state == START)
        sda_reg <= 1'b0;
    else if (state == START2 && assign_flag == 1'b1) // 此处需要注意，给出的起始信号必须是要在scl高电平中间拉低
        sda_reg <= 1'b1;
    else if (state == START2 && scl_high_flag == 1'b1)
        sda_reg <= 1'b0;
    else if (state == WR_DEV_ADDR && assign_flag == 1'b1)
        sda_reg <= dev_addr_wr[7 - cnt_bit];    
    else if (state == WR_DATA_ADDR_H && assign_flag == 1'b1)
        sda_reg <= addr_high[7 - cnt_bit];
    else if (state == WR_DATA_ADDR_L && assign_flag == 1'b1)
        sda_reg <= addr_low[7 - cnt_bit];
    else if (state == WR_DATA && assign_flag == 1'b1)
        sda_reg <= data[7 - cnt_bit];
    else if (state == RD_DEV_ADDR && assign_flag == 1'b1)
        sda_reg <= dev_addr_rd[7 - cnt_bit];
    else if (state == STOP && assign_flag == 1'b1)
        sda_reg <= 1'b0;
    else if (state == STOP && scl_high_flag == 1'b1)
        sda_reg <= 1'b1;
    else if (state == NACK && assign_flag == 1'b1)
        sda_reg <= 1'b1;
    else if (state == NACK && scl_low_flag == 1'b1)
        sda_reg <= 1'b0;
    else 
        sda_reg <= sda_reg;
end

//sda_en信号的赋值，sda_en信号在ACK器件都应该为低电平，此时需要将sda赋高阻态以接收信号
always @(posedge clk or negedge rst_n) begin
    if (!rst_n)
       sda_en <= 1'b1;
    else if ((state == ACK1 ||
             state == ACK2 ||
             state == ACK3 ||
             state == ACK4 ||
             state == ACK5 ) && assign_flag == 1'b1)
        sda_en <= 1'b0;
    else if (state == RD_DATA && cnt_bit == 3'd7 && scl_low_flag == 1'b1)
        sda_en <= 1'b1;
    else if (state == RD_DATA) 
        sda_en <= 1'b0;
    else if (state != ACK5 && scl_low_flag == 1'b1)
        sda_en <= 1'b1;
    else 
        sda_en <= sda_en;
end


//完成信号的赋值
always @(posedge clk or negedge rst_n) begin
    if (!rst_n)
       done_flag <= 1'b0;
    else if (state == STOP && scl_high_flag == 1'b1)
        done_flag <= 1'b1;
    else 
        done_flag <= 1'b0;
end

//IIC 总线模式的赋值
always @ (posedge clk or negedge rst_n) begin
    if (!rst_n)
       iic_mode <= 1'b0;        
    else if (wr_en == 1'b1)
        iic_mode<= 1'b1;
    else if (rd_en == 1'b1)
        iic_mode <= 1'b0;
    else 
        iic_mode <= iic_mode;
end

always @ (posedge clk or negedge rst_n)begin
    if (!rst_n)
        rd_data_reg <= 8'd0;
    else if (state == RD_DATA && scl_high_flag == 1'b1)
        rd_data_reg[7-cnt_bit]  <=  sda_in;
end

// sda 作为输入输出，需要用这种方式来进行控制
assign sda        =     (sda_en == 1'b1)? sda_reg : 1'bz  ; 
assign sda_in     =          sda                          ;

endmodule