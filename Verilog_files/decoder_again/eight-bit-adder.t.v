`timescale 1 ns / 1 ps
`include "eight-bit-adder.v"

module testEightBitAdder();
    reg [7:0] a;
    reg [7:0] b;
    reg Cin0, subtract;
    wire C7, sum7, sum6, sum5, sum4, sum3, sum2, sum1, sum0;

    eightBitAdder dut(
        a, b, Cin0, subtract,
        C7, sum7, sum6, sum5, sum4, sum3, sum2, sum1, sum0
      );

    initial begin
      $dumpfile("eight-bit-adder.vsd");
      $dumpvars(0, dut);
      a = 8'b10101010; b = 8'b01010101; Cin0 = 1'b0 ; subtract = 1'b0;#100
      $display("%b  %b  %b    |  %b%b%b%b%b%b%b%b%b", a, b, subtract, C7, sum7, sum6, sum5, sum4, sum3, sum2, sum1, sum0);
    end
endmodule
