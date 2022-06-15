`timescale 1ns/1ns
module tb_build_for_lut();

reg clk;
reg rst_n;
wire [15:0] data_out;

always #10 clk = ~clk;

initial begin
    clk = 1'b1;
    rst_n <= 1'b0;
    #200
    rst_n <= 1'b1;
end



build_for_lut build_for_lut_inst
(
    .clk  (clk  ),
    .rst_n(rst_n),  

    .data_out(data_out)
);

endmodule