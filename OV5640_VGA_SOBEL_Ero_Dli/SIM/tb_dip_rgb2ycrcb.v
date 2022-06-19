`timescale 1ns/1ns
module tb_dip_rgb2ycrcb();

reg         pclk           ;
reg         rst_n          ;
reg         dip_en         ;
reg [15:0]  dip_data       ;
wire [15:0] sdram_wr_data  ;
wire        sdram_wr_en    ;

initial begin
    pclk = 1'b1;
    rst_n <= 1'b0;
    #200
    rst_n <= 1'b1;
end

always #10 pclk = ~pclk;

always @(posedge pclk or negedge rst_n) begin
    if (~rst_n)
        dip_en <= 1'b0;
    else 
        dip_en <= ~dip_en;
end

always @(posedge pclk or negedge rst_n) begin
    if (~rst_n)
        dip_data <= 16'd0;
    else if (dip_en)
        dip_data <= dip_data + 1'b1;
end

DIP_rgb2ycrcb DIP_rgb2ycrcb_inst
(
.pclk     (pclk    ),
.rst_n    (rst_n   ),
.dip_en   (dip_en  ),
.dip_data (dip_data),

.sdram_wr_data (sdram_wr_data ),
.sdram_wr_en   (sdram_wr_en   )
);


endmodule