`timescale 1ns/1ns
module tb_get_3x3_matrix();

reg         pclk           ;
reg         rst_n          ;
reg         dip_en         ;
reg [7:0]  dip_data       ;
wire        data_en;
wire  [7:0] p11;
wire  [7:0] p12;
wire  [7:0] p13;
wire  [7:0] p21;
wire  [7:0] p22;
wire  [7:0] p23;
wire  [7:0] p31;
wire  [7:0] p32;
wire  [7:0] p33;

wire          sdram_wr_en;
wire   [15:0] sdram_wr_data;

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
        dip_data <= 8'd0;
    else if (dip_en)
        dip_data <= dip_data + 1'b1;
end

get_3x3_matrix 
#(
    .CNT_COL_MAX (16'd4) ,
    .CNT_ROW_MAX (16'd4)
)
get_3x3_matrix_inst
(
    .clk       (pclk      ),
    .rst_n     (rst_n    ),
    .dip_en    (dip_en   ),
    .dip_data  (dip_data ),

    .data_en(data_en),
    .p11(p11),
    .p12(p12),
    .p13(p13),
    .p21(p21),
    .p22(p22),
    .p23(p23),
    .p31(p31),
    .p32(p32),
    .p33(p33)
);


sobel_detect
#(
    .THR (8'b000_011_00)
)
sobel_detect_inst
(
    .clk     (pclk     ),
    .rst_n   (rst_n   ),
    .data_en (data_en ),
    .p11(p11),
    .p12(p12),
    .p13(p13),
    .p21(p21),
    .p22(p22),
    .p23(p23),
    .p31(p31),
    .p32(p32),
    .p33(p33),

    .sdram_wr_en  (sdram_wr_en  ),
    .sdram_wr_data(sdram_wr_data)
);

endmodule