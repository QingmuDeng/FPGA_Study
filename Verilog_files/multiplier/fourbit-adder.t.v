`timescale 1 ns / 1 ps
`include "fourbit-adder.v"

module testEightBitAdder();
    reg [3:0] a;
    reg [3:0] b;
    reg Cin0, subtract;
    wire Cout;
    wire [3:0] sum;

    eightBitAdder dut(
        a, b, Cin0, subtract,
        Cout, sum
      );

    initial begin
      $dumpfile("eight-bit-adder.vsd");
      $dumpvars(0, dut);
      a = 4'b0100; b = 8'b0011; Cin0 = 1'b0 ; subtract = 1'b0;#100
      $display("%b  %b  %b    |  %b %b", a, b, subtract, Cout, sum);
    end
endmodule
