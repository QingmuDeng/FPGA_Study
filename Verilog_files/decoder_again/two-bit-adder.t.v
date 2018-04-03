`timescale 1 ns / 1 ps
`include "two-bit-adder.v"

module testTwoBitAdder();
    reg [1:0] a;
    reg [1:0] b;
    reg Cin0, subtract;
    wire sum0, sum1, C1;

    twoBitAdder dut(
      .a(a), .b(b), .Cin0(Cin0), .subtract(subtract),
      .sum0(sum0), .sum1(sum1), .C1(C1));

    initial begin
      $dumpfile("two-bit-adder.vsd");
      $dumpvars(0, dut);
      $display("a   b   Cin  |  C1  Sum1  Sum0");
      a = 2'b00; b = 2'b00; Cin0 = 1'b0 ; subtract = 1'b0;#100
      $display("%b  %b  %b    |  %b   %b     %b", a, b, Cin0, C1, sum1, sum0);
      a = 2'b01; b = 2'b00; Cin0 = 1'b0 ; subtract = 1'b0;#100
      $display("%b  %b  %b    |  %b   %b     %b", a, b, Cin0, C1, sum1, sum0);
      a = 2'b00; b = 2'b01; Cin0 = 1'b0 ; subtract = 1'b0;#100
      $display("%b  %b  %b    |  %b   %b     %b", a, b, Cin0, C1, sum1, sum0);
      a = 2'b10; b = 2'b11; Cin0 = 1'b0 ; subtract = 1'b0;#100
      $display("%b  %b  %b    |  %b   %b     %b", a, b, Cin0, C1, sum1, sum0);
      a = 2'b11; b = 2'b11; Cin0 = 1'b0 ; subtract = 1'b0;#100
      $display("%b  %b  %b    |  %b   %b     %b", a, b, Cin0, C1, sum1, sum0);
      a = 2'b11; b = 2'b01; Cin0 = 1'b0 ; subtract = 1'b0;#100
      $display("%b  %b  %b    |  %b   %b     %b", a, b, Cin0, C1, sum1, sum0);
      a = 2'b10; b = 2'b01; Cin0 = 1'b0 ; subtract = 1'b1;#100
      $display("%b  %b  %b    |  %b   %b     %b", a, b, Cin0, C1, sum1, sum0);
    end
endmodule
