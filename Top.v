module Top
(
	input clk,
	input rst,
	input [3:0] addr,
	input we,
	input [15:0] data_in_A,
	input [15:0] data_in_B,

	output [15:0] data_out_A,
	output [15:0] data_out_B
);


sram RAM_A(
	.clk(clk),
	.we(we),
	.addr(addr),
	.data_in(data_in_A),
	.data_out(data_out_A)
);

sram RAM_B(
	.clk(clk),
	.we(we),
	.addr(addr),
	.data_in(data_in_B),
	.data_out(data_out_B)
);


endmodule
