`timescale 1 ns / 1 ps
`include "eightbit-multiplier.v"

module testEightBitAdder();
    reg [3:0] A;
    reg [3:0] B;
    wire [7:0] P;

    eightbit_multiplier dut(A, B, P);

    initial begin
      $dumpfile("eightbit-multiplier.vsd");
      $dumpvars(0, dut);
      A = 4'b1101; B = 4'b1101; #100
      $display("%d   %d  |   %d", A, B, P);
      $display("%b", B[1]&&1'b1);
    end
endmodule
