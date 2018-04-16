`timescale 1 ns / 1 ps
`include "adder_16.v"

module testEightBitAdder();
    reg [15:0] a;
    reg [15:0] b;
    reg Cin0, subtract;
    wire C15;
    wire [15:0] sum;

    sixtnBitAdder dut(
        a, b, Cin0, subtract,
        C15, sum
      );

    initial begin
      $dumpfile("sixtnBitAdder.vsd");
      $dumpvars(0, dut);
      a = 16'd50; b = 16'd13; Cin0 = 1'b0 ; subtract = 1'b0;#100
      $display("%d  %d  %b    |  %b %d", a, b, subtract, C15, sum);
    end
endmodule
