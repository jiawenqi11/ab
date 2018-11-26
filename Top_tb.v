`timescale 1ns / 1ps

module Top_tb();

    reg clk;
    reg rst;
    reg [3:0] addr;
    reg we;
    reg [15:0] data_in_A;
    reg [15:0] data_in_B;

    wire [15:0] data_out_A;
    wire [15:0] data_out_B;

    Top DUT(
        .clk(clk),
        .rst(rst),
        .addr(addr),
        .we(we),
        .data_in_A(data_in_A),
        .data_in_B(data_in_B),
        .data_out_A(data_out_A),
        .data_out_B(data_out_B)
        );

    initial
    begin
        $dumpfile("Top.vcd");
        $dumpvars(0, Top_tb);

        $readmemb("a_data.txt", DUT.RAM_A.mem);
        $readmemb("b_data.txt", DUT.RAM_B.mem);

        $monitor ( "clk = %b addr = %b data_out_A = %b data_out_B = %b" , clk, addr, data_out_A, data_out_B);


        clk = 0;

        #1000
        rst = 1;

	    // Add your testbench
        # 100
        rst = 0;
        addr = 1;
        we = 0;
        data_in_A = 0;
        data_in_B = 0;

        # 100
        addr = 2;

        # 100
        addr = 3;

        # 100
        addr = 4;

        # 100
        addr = 5;

        # 100
        addr = 6;

        # 100
        addr = 7;

        # 100
        addr = 8;

        $finish;
    end

    always
        #10 clk = !clk;

endmodule
