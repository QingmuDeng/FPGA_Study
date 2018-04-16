`timescale 1 ns / 1 ps
`include "multiplier_16.v"

module testSixtnBitAdder();
    reg [7:0] A;
    reg [7:0] B;
    wire [15:0] P;

    sixtnbit_multiplier dut(A, B, P);

    initial begin
      $dumpfile("sixtnBit-multiplier.vsd");
      $dumpvars(0, dut);
      A = 8'd9; B = -1; #100
      $display("%d   %d  |   %d", A, B, P[7:0]);
      A = 8'd8; B = 8'd100; #100
      $display("%d   %d  |   %d", A, B, P[7:0]);
      $display("%b", B[1]&&1'b1);
    end
endmodule
