`timescale 1 ns / 1 ps
`include "eightbit-better.v"

module testEightBitAdder();
    reg [7:0] a;
    reg [7:0] b;
    reg Cin0, subtract;
    wire C7;
    wire [7:0] sum;

    eightBitAdder dut(
        a, b, Cin0, subtract,
        C7, sum
      );

    initial begin
      $dumpfile("eight-bit-adder.vsd");
      $dumpvars(0, dut);
      a = 8'b00000010; b = 8'b00000010; Cin0 = 1'b0 ; subtract = 1'b0;#100
      $display("%b  %b  %b    |  %b %b", a, b, subtract, C7, sum);
    end
endmodule
