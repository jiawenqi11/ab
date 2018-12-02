module mult( clk, reset, A, B, PRODUCT );

  input clk;
  input reset;

  input [31 : 0] A;
  input [31 : 0] B;
  output [31 : 0] PRODUCT;

  // Your code begins here
	reg [31:0] PRODUCT;
	reg [63:0] tempA;
	reg [31:0] tempB;
	reg [63:0] tempPRODUCT;
	reg [1:0] state;
	reg new;
	always @ (A or B)
		new <= 1'b1;
	always @ (posedge clk or reset) begin
		if(reset) begin
			state<=2'b0;
			PRODUCT<=1'b0;
			tempA<=64'b0;
			tempB<=32'b0;
			tempPRODUCT<=64'b0;
			new <= 1'b1;
		end
		else begin
			case(state)
				2'b00: begin
					if(new) begin
						tempA <= {32'b0,A};
						tempB <= B;
						tempPRODUCT <= 64'b0;
  						state <= 2'b01;
					end
					else
						state <= 2'b00;
				end
				2'b01: begin
					tempPRODUCT <= tempPRODUCT + (tempB[0]? tempA:0);
					if(tempB!=32'b0) begin
						tempA <= {tempA[62:0],1'b0};
						tempB <= {1'b0,tempB[31:1]};
						state <=2'b01;
					end
					else
						state <= 2'b10;
				end
				2'b10: begin
					PRODUCT <= tempPRODUCT[47:16];
					state <= 2'b00;
					new <= 1'b0;
				end
			endcase
		end
	end
endmodule
