module build_for_lut
(
    input  clk,
    input  rst_n,  

    output reg [16:0] data_out
);

parameter ADDR_MAX = 11'd899;

reg [10:0] cnt_addr;
reg [1:0]  quadrant;
reg [10:0] addr;
wire [15:0] q_reg;
 
always @(posedge clk or negedge rst_n) begin
    if (~rst_n)
        cnt_addr <= 11'd0;
    else if (cnt_addr == 11'd899)
        cnt_addr <= 11'd0;
    else 
        cnt_addr <= cnt_addr + 1'b1;
end

always @(posedge clk or negedge rst_n) begin
    if (~rst_n)
        quadrant <= 2'd0;
    else if (cnt_addr == 11'd899 && quadrant == 2'd3)
        quadrant <= 2'd0;
    else if (cnt_addr == 11'd899)
        quadrant <= quadrant + 1'b1;
    else 
        quadrant <= quadrant;
end

always @(posedge clk or negedge rst_n) begin
    if (~rst_n)
        addr <= 11'd0;
    else
        case(quadrant)
            2'd0 : addr <= cnt_addr;
            2'd1 : addr <= ADDR_MAX - cnt_addr ;
            2'd2 : addr <= cnt_addr;
            2'd3 : addr <= ADDR_MAX - cnt_addr ;
            default: addr <= 11'd0;
        endcase
end

always @(posedge clk or negedge rst_n) begin
    if (~rst_n)
        data_out <= 17'd0;
    else
        case(quadrant)
            2'd0 : data_out <= q_reg + 17'd16384;
            2'd1 : data_out <= q_reg + 17'd16384;
            2'd2 : data_out <= 17'd16384 - q_reg;
            2'd3 : data_out <= 17'd16384 - q_reg;
            default: data_out <= 17'd0;
        endcase
end

sin_lut	sin_lut_inst (
	.address ( addr ),
	.clock ( clk ),
	.q ( q_reg )
	);

endmodule