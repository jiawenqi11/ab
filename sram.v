module sram
(
	input clk,
	input we,
	input [3:0] addr,
	input [15:0] data_in,
	output [15:0] data_out
);

	// Declare the RAM variable
	reg [15:0] mem[15:0];

	// Variable to hold the registered read address
	reg [3:0] addr_reg;

	always @ (posedge clk)
	begin
	// Write
		if (we)
			mem[addr] <= data_in;

		addr_reg <= addr;

	end

	// Continuous assignment implies read returns NEW data.
	// This is the natural behavior of the TriMatrix memory
	// blocks in Single Port mode.
	assign data_out = mem[addr_reg];

endmodule
