/*--------------------------------------------------------------------------------------
    创建时间：2022/6/15
    器件: Altera EP4CE10F17C8N
    模块名：OV5640_VGA_SOBEL
    所属工程：OV5640_VGA_SOBEL
    版本：V1.0
    
    介绍：
    OV5640 SOBEL 边缘检测 VGA显示的顶层模块
    分辨率为 1024*768
    边缘阈值设置为60

--------------------------------------------------------------------------------------*/
module OV5640_VGA_SOBEL
(
    input               clk             ,
    input               rst_n           ,
    input               ov5640_pclk            ,     
    input               ov5640_href            ,
    input               ov5640_vsync           ,
    input       [7:0]   data_from_ov5640,
    
    output wire         ov5640_rst_n,
    output wire         ov5640_pwdn,
    output wire         scl          , 
    inout  wire         sda          ,
    output wire         sdram_clk    ,
    output wire         sdram_cke    ,
    output wire         sdram_cs_n   ,
    output wire         sdram_cas_n  ,
    output wire         sdram_ras_n  ,
    output wire         sdram_we_n   ,
    output wire [1:0]   sdram_ba     ,
    output wire [12:0]  sdram_addr   ,
    output wire [1:0]   sdram_dqm    ,
    inout  wire [15:0]  sdram_dq     ,
    output wire [15:0]  rgb_565      ,
    output wire         hsync        ,
    output wire         vsync
);

parameter H_VALID    = 'd1024,
          V_VALID    = 'd768;

wire  clk_50m;
wire  clk_vga;
wire  clk_100m;
wire  clk_100m_shift;
wire  locked;
wire  locked1;
wire  rst_n_locked;
wire cfg_done;
wire init_end ;

wire sdram_wr_en;
wire [15:0] data_to_sdram;

wire dip_en;
wire [15:0] dip_data;
wire [7:0]  gray_data;
wire gray_data_flag;

wire [15:0] rd_fifo_rd_data ;
wire [11:0] x_loc;
wire [11:0] y_loc;
wire pix_data_req;

assign rst_n_locked = locked & rst_n & locked1;

assign  ov5640_rst_n = 1'b1;

assign  ov5640_pwdn = 1'b0;

CLK_GEN	CLK_GEN_inst (
	.areset ( ~rst_n  ),
	.inclk0 ( clk ),
	.c0 ( clk_50m ),
	.c1 ( clk_100m ),
	.c2 ( clk_100m_shift ),
	.locked ( locked1 )
	);

CLK_VGA	CLK_VGA_inst (
	.areset ( ~rst_n ),
	.inclk0 ( clk ),
	.c0 ( clk_vga ),
	.locked ( locked )
	);

OV5640_CTRL OV5640_CTRL_INST
(
    .pclk               (ov5640_pclk            ),     
    .href               (ov5640_href            ),
    .vsync              (ov5640_vsync           ),     
    .rst_n              (rst_n_locked           ),
    .data_from_ov5640   (data_from_ov5640       ),
    .clk                (clk_50m                ),
    .init_done          (cfg_done & init_end    ), 

    .scl            (scl          ), 
    .sda            (sda          ),
    .cfg_done       (cfg_done     ),
    .sdram_wr_en    (dip_en  ),
    .data_to_sdram  (dip_data)
);

DIP_rgb2ycrcb DIP_rgb2ycrcb_inst
(
.pclk     (ov5640_pclk    ),
.rst_n    (rst_n   ),
.dip_en   (dip_en  ),
.dip_data (dip_data),

.sdram_wr_data (),
.sdram_wr_en   (gray_data_flag   ),
.gray_data     (gray_data)
);

DIP_sobel 
#(
    .CNT_COL_MAX (16'd1023      ) ,
    .CNT_ROW_MAX (16'd767       ) ,
    .THR         (8'd60 )
)
DIP_sobel_inst
(
    .clk          (ov5640_pclk)  ,
    .rst_n        (rst_n)        ,
    .dip_en       (dip_en )      ,    
    .dip_data     (gray_data)    ,

    .sdram_wr_en  (sdram_wr_en)  ,
    .sdram_wr_data(data_to_sdram)
);

SDRAM SDRAM_INST
(
    .clk(clk_100m),
    .rst_n(rst_n_locked),
    .clk_out(clk_100m_shift),
    .init_end(init_end),

    .wr_fifo_wr_clk  (ov5640_pclk),
    .wr_fifo_wr_req  (sdram_wr_en),
    .wr_fifo_wr_data (data_to_sdram),
    .sdram_wr_b_addr (24'd0),
    .sdram_wr_e_addr (H_VALID*V_VALID),
    .wr_burst_len    (10'd512),
    .wr_rst          (~rst_n_locked),               // 写地址清零信号 

    .rd_fifo_rd_clk (clk_vga),
    .rd_fifo_rd_req (pix_data_req),
    .sdram_rd_b_addr(24'd0),
    .sdram_rd_e_addr(H_VALID*V_VALID),
    .rd_burst_len   (10'd512),
    .rd_valid       (1'b1),
    .rd_rst         (), 
    .rd_fifo_rd_data(rd_fifo_rd_data),
    .rd_fifo_num    (),

    .sdram_clk  (sdram_clk  ),
    .sdram_cke  (sdram_cke  ),
    .sdram_cs_n (sdram_cs_n ),
    .sdram_cas_n(sdram_cas_n),
    .sdram_ras_n(sdram_ras_n),
    .sdram_we_n (sdram_we_n ),
    .sdram_ba   (sdram_ba   ),
    .sdram_addr (sdram_addr ),
    .sdram_dqm  (sdram_dqm  ),
    .sdram_dq   (sdram_dq   )

);

VGA_CTRL VGA_CTRL_INST
(
    .clk        (clk_vga),
    .rst_n      (rst_n_locked),
    .pix_data   (rd_fifo_rd_data),

    .rgb_565    (rgb_565 ),
    .hsync      (hsync ),
    .vsync      (vsync ),
    .x_loc      (x_loc),
    .y_loc      (y_loc) ,  // 位宽设置大一点以便于分辨率的修改
    .pix_data_req (pix_data_req)
);

endmodule