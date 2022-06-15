/*--------------------------------------------------------------------------------------
    创建时间：2022/4/27
    器件: Altera EP4CE10F17C8N
    模块名：VGA_CTRL
    所属工程：OV5640_VGA
    版本：V1.0
    
    介绍：
    VGA显示驱动模块，通过对参数修改可以调整分辨率以及显示帧率

    修改：2022/6/15：
    移植至 OV5640_VGA_SOBEL 并且将分辨率改为1024*768
    
--------------------------------------------------------------------------------------*/
module VGA_CTRL
(
    input clk ,
    input rst_n ,
    input [15:0] pix_data,

    output wire [15:0] rgb_565 ,
    output wire hsync,
    output wire vsync,
    output reg [11:0] x_loc,
    output reg [11:0] y_loc,       // 位宽设置大一点以便于分辨率的修改
    output wire pix_data_req
);

// 1024 x 768 分辨率
parameter H_SYNC   =  12'd136 , 
          H_BACK   =  12'd160 ,
          H_LEFT   =  12'd0   ,
          H_VALID  =  12'd1024,
          H_RIGHT  =  12'd0   ,
          H_FRONT  =  12'd24  ,
          H_TOTAL  =  12'd1344;

parameter V_SYNC   =  12'd6   ,
          V_BACK   =  12'd29  ,
          V_TOP    =  12'd0   ,
          V_VALID  =  12'd768,
          V_RIGHT  =  12'd0   ,
          V_BOTTON =  12'd3  ,
          V_TOTAL  =  12'd806; 

/* 1280 x 1024 分辨率
parameter H_SYNC   =  12'd112 , 
          H_BACK   =  12'd248 ,
          H_LEFT   =  12'd0   ,
          H_VALID  =  12'd1280,
          H_RIGHT  =  12'd0   ,
          H_FRONT  =  12'd48  ,
          H_TOTAL  =  12'd1688;

parameter V_SYNC   =  12'd3   ,
          V_BACK   =  12'd38  ,
          V_TOP    =  12'd0   ,
          V_VALID  =  12'd1024,
          V_RIGHT  =  12'd0   ,
          V_BOTTON =  12'd1   ,
          V_TOTAL  =  12'd1066; */

/*   640 * 480 分辨率
parameter H_SYNC   =  12'd96 , 
          H_BACK   =  12'd40 ,
          H_LEFT   =  12'd8   ,
          H_VALID  =  12'd640,
          H_RIGHT  =  12'd8   ,
          H_FRONT  =  12'd8  ,
          H_TOTAL  =  12'd800;

parameter V_SYNC   =  12'd2   ,
          V_BACK   =  12'd25  ,
          V_TOP    =  12'd8   ,
          V_VALID  =  12'd480 ,
          V_RIGHT  =  12'd8   ,
          V_BOTTON =  12'd2   ,
          V_TOTAL  =  12'd525 ; 
*/

reg  [11:0]  cnt_h ;  // 行计数器
reg  [11:0]  cnt_v ;  // 场计数器

always @(posedge clk or negedge rst_n) begin
    if(~rst_n)
        cnt_h <= 12'd0;
    else if (cnt_h == H_TOTAL - 1)
        cnt_h <= 12'd0;
    else 
        cnt_h <= cnt_h + 1'b1;
end
        
always @(posedge clk or negedge rst_n) begin
    if(~rst_n)
        cnt_v <= 12'd0;
    else if (cnt_h == H_TOTAL - 1 && cnt_v == V_TOTAL - 1)
        cnt_v <= 12'd0;
    else if (cnt_h == H_TOTAL - 1)
        cnt_v <= cnt_v + 1'b1;
    else 
        cnt_v <= cnt_v;
end

assign hsync = (cnt_h >= 0 && cnt_h <= H_SYNC - 1 && rst_n);
assign vsync = (cnt_v >= 0 && cnt_v <= V_SYNC - 1 && rst_n);

always @(posedge clk or negedge rst_n) begin
    if (~rst_n)
        x_loc <= 12'd0;
    else if (x_loc == H_VALID)
        x_loc <= 12'd0;
    else if ((cnt_v >= V_SYNC + V_BACK + V_TOP) && 
            (cnt_v < V_SYNC + V_BACK + V_TOP + V_VALID) &&
            (cnt_h >= H_SYNC + H_BACK + H_LEFT - 1) && 
            (cnt_h < H_SYNC + H_BACK + H_LEFT + H_VALID ))
        x_loc <= x_loc + 1'b1;
    else 
        x_loc <= 12'd0;
end

always @(posedge clk or negedge rst_n) begin
    if (~rst_n)
        y_loc <= 12'd0;
    else if (y_loc == V_VALID && cnt_h == H_TOTAL - 1)
        y_loc <= 12'd0;
    else if ((cnt_v >= V_SYNC + V_BACK + V_TOP - 1) && 
            (cnt_v < V_SYNC + V_BACK + V_TOP + V_VALID) &&
            (cnt_h == H_TOTAL - 1))
        y_loc <= y_loc + 1'b1;
    else 
        y_loc <= y_loc;
end

// 该信号为像素请求信号，需要在横纵坐标有效的前一个周期就生效
assign pix_data_req = (cnt_v >= V_SYNC + V_BACK + V_TOP ) && 
            (cnt_v < V_SYNC + V_BACK + V_TOP + V_VALID ) &&
            (cnt_h >= H_SYNC + H_BACK + H_LEFT - 1) && 
            (cnt_h < H_SYNC + H_BACK + H_LEFT + H_VALID - 1);

assign rgb_565 = (pix_data_req) ? pix_data : 16'h0;


endmodule
