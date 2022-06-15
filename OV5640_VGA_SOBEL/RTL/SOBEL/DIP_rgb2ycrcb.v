/*--------------------------------------------------------------------------------------
    创建时间：2022/6/15
    器件: Altera EP4CE10F17C8N
    模块名：DIP_rgb2ycrcb
    所属工程：OV5640_VGA_SOBEL
    版本：V1.0
    
    介绍：
    将OV5640传入的RGB565模式转化为灰度格式，方便后续的图像处理（输出为8/16位的灰度图像）

--------------------------------------------------------------------------------------*/
module DIP_rgb2ycrcb
(
input           pclk,
input           rst_n,
input           dip_en,
input [15:0]    dip_data,

output reg [15:0] sdram_wr_data,
output reg        sdram_wr_en,
output reg [7:0]  gray_data
);

reg dip_en_reg ;
reg dip_en_reg1;
reg dip_en_reg2;
reg [7:0] rgb888_r;
reg [7:0] rgb888_g;
reg [7:0] rgb888_b;
reg [15:0] dip_data_reg;
reg [15:0] y_m0;
reg [15:0] y_m1;
reg [15:0] y_m2;
reg [15:0] image_y;

// 对传入的数据使能信号进行打拍
always @(posedge pclk or negedge rst_n ) begin
    if (~rst_n) begin
        dip_en_reg <= 1'b0;
        dip_en_reg1 <= 1'b0;
        dip_en_reg2 <= 1'b0;
        sdram_wr_en <= 1'b0;
    end
    else begin
        dip_en_reg  <= dip_en;
        dip_en_reg1 <= dip_en_reg;
        dip_en_reg2 <= dip_en_reg1;
        sdram_wr_en <= dip_en_reg2;
    end
end
// 传入的数据进行延时
always @(posedge pclk or negedge rst_n) begin
    if (~rst_n)
        dip_data_reg <= 16'd0;
    else 
        dip_data_reg <= dip_data;
end
// 传入的数据转化为RGB888
always @(posedge pclk or negedge rst_n) begin
    if (~rst_n) begin
        rgb888_r <= 8'd0;
        rgb888_g <= 8'd0;
        rgb888_b <= 8'd0;
    end
    else if (dip_en) begin
        rgb888_r <= {dip_data_reg[15:11],dip_data_reg[13:11]};
        rgb888_g <= {dip_data_reg[10: 5],dip_data_reg[ 6: 5]};
        rgb888_b <= {dip_data_reg[ 4: 0],dip_data_reg[ 2: 0]};
    end
end
// 计算RGB888的乘数项 （均已放大256倍，即左移8位）
always @(posedge pclk or negedge rst_n) begin
    if (~rst_n) begin
        y_m0 <= 16'd0;
        y_m1 <= 16'd0;
        y_m2 <= 16'd0;
    end
    else if (dip_en_reg) begin
        y_m0 <= rgb888_r * 8'd77 ;
        y_m1 <= rgb888_g * 8'd150;
        y_m2 <= rgb888_b * 8'd29;
    end
end
// 计算灰度的加数项 （均已放大256倍，即左移8位）
always @(posedge pclk or negedge rst_n) begin
    if (~rst_n) begin
        image_y <= 16'd0;
    end
    else if (dip_en_reg1) begin
        image_y <= y_m0 + y_m1 + y_m2;
    end
end


// 获取16位灰度值
always @(posedge pclk or negedge rst_n) begin
    if (~rst_n) begin
        sdram_wr_data <= 16'd0;
    end
    else if (dip_en_reg2) begin
        sdram_wr_data <= {image_y[15:11],image_y[15:10],image_y[15:11]};
    end
end

// 截取8位灰度值
always @(posedge pclk or negedge rst_n) begin
    if (~rst_n) begin
        gray_data <= 8'd0;
    end
    else if (dip_en_reg2) begin
        gray_data <= image_y[15:8];
    end
end

endmodule