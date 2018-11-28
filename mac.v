// Code for a MAC unit
// TODO: Add a description 
// ESE 461 Team 3
// 2018-11-28
`timescale 1ns / 1ps

// Module Delcaration
module mac(
	rst,
	clk,
	enable,
	update_inputs,
	res,
	pix0,
	pix1,
	pix2,
	pix3,
	pix4,
	pix5,
	pix6,
	pix7,
	weight0,
	weight1,
	weight2,
	weight3,
	weight4,
	weight5,
	weight6,
	weight7
	);

	// I/O Declaration
	input rst;
	input clk;
	input enable;
	input update_inputs;
	input [15:0] pix0;
	input [15:0] pix1;
	input [15:0] pix2;
	input [15:0] pix3;
	input [15:0] pix4;
	input [15:0] pix5;
	input [15:0] pix6;	
	input [15:0] pix7;	
	input [15:0] weight0;
	input [15:0] weight1;
	input [15:0] weight2;
	input [15:0] weight3;
	input [15:0] weight4;
	input [15:0] weight5;
	input [15:0] weight6;
	input [15:0] weight7;	
	output [15:0] res;
	// Registers and Wires
	reg [15:0] pix_buff0;
	reg [15:0] pix_buff1;
	reg [15:0] pix_buff2;
	reg [15:0] pix_buff3;
	reg [15:0] pix_buff4;
	reg [15:0] pix_buff5;
	reg [15:0] pix_buff6;
	reg [15:0] pix_buff7;
	reg [15:0] weight_buff0;
	reg [15:0] weight_buff1;
	reg [15:0] weight_buff2;
	reg [15:0] weight_buff3;
	reg [15:0] weight_buff4;
	reg [15:0] weight_buff5;
	reg [15:0] weight_buff6;
	reg [15:0] weight_buff7;
	reg [31:0] mult_res0;
	reg [31:0] mult_res1;
	reg [31:0] mult_res2;
	reg [31:0] mult_res3;
	reg [31:0] mult_res4;
	reg [31:0] mult_res5;
	reg [31:0] mult_res6;
	reg [31:0] mult_res7;
	reg [15:0] mult_buff0;
	reg [15:0] mult_buff1;
	reg [15:0] mult_buff2;
	reg [15:0] mult_buff3;
	reg [15:0] mult_buff4;
	reg [15:0] mult_buff5;
	reg [15:0] mult_buff6;
	reg [15:0] mult_buff7;
	reg [15:0] sum_res;
	reg [15:0] sum_buff;
	
	// Sequentail Logic
	always @ (posedge clk)
	begin
		// Reset all of the registers if reset is asserted		
		if(rst)
		begin
			pix_buff0 <= 0;
			pix_buff1 <= 0;
			pix_buff2 <= 0;
			pix_buff3 <= 0;
			pix_buff4 <= 0;
			pix_buff5 <= 0;
			pix_buff6 <= 0;
			pix_buff7 <= 0;
			weight_buff0 <= 0;
			weight_buff1 <= 0;
			weight_buff2 <= 0;
			weight_buff3 <= 0;
			weight_buff4 <= 0;
			weight_buff5 <= 0;
			weight_buff6 <= 0;
			weight_buff7 <= 0;
			mult_buff0 <= 0; 
			mult_buff1 <= 0;
			mult_buff2 <= 0;
			mult_buff3 <= 0;
			mult_buff4 <= 0;
			mult_buff5 <= 0;
			mult_buff6 <= 0;
			mult_buff7 <= 0;
			sum_buff <= 0;
		end else if (enable)
		begin
			// Begin normal MAC execution
			// Only update the inputs if signaled by control
			if(update_inputs)
			begin
				pix_buff0 <= pix0;
				pix_buff1 <= pix1;
				pix_buff2 <= pix2;
				pix_buff3 <= pix3;
				pix_buff4 <= pix4;
				pix_buff5 <= pix5;
				pix_buff6 <= pix6;
				pix_buff7 <= pix7;
			end			
			// Read in the new weight at every cycle
			weight_buff0 <= weight0;
			weight_buff1 <= weight1;
			weight_buff2 <= weight2;
			weight_buff3 <= weight3;
			weight_buff4 <= weight4;
			weight_buff5 <= weight5;
			weight_buff6 <= weight6;
			weight_buff7 <= weight7;

			mult_buff0 <= mult_res0[23:8]; 
			mult_buff1 <= mult_res1[23:8];
			mult_buff2 <= mult_res2[23:8];
			mult_buff3 <= mult_res3[23:8];
			mult_buff4 <= mult_res4[23:8];
			mult_buff5 <= mult_res5[23:8];
			mult_buff6 <= mult_res6[23:8];
			mult_buff7 <= mult_res7[23:8];
			sum_buff <= sum_res;
			
		end  	
	end
	// Comobonational Logic
	always @ *
	begin	
		// Ensure that these values are indeed infact combonational
		mult_res0 = 0;	
		mult_res1 = 0;
		mult_res2 = 0;
		mult_res3 = 0;
		mult_res4 = 0;
		mult_res5 = 0;
		mult_res6 = 0;
		mult_res7 = 0; 
		// Perform the Multiplication
		mult_res0 = pix_buff0 * weight_buff0;
		mult_res1 = pix_buff1 * weight_buff1;
		mult_res2 = pix_buff2 * weight_buff2;
		mult_res3 = pix_buff3 * weight_buff3;
		mult_res4 = pix_buff4 * weight_buff4;
		mult_res5 = pix_buff5 * weight_buff5;
		mult_res6 = pix_buff6 * weight_buff6;
		mult_res7 = pix_buff7 * weight_buff7;
		// Perform the Addition
		sum_res = mult_buff0 +mult_buff1+ mult_buff2 + mult_buff3 + mult_buff4
				+mult_buff5 + mult_buff6 + mult_buff7;
	end

	// Set the output ports
	assign res = sum_buff;	
	
endmodule

