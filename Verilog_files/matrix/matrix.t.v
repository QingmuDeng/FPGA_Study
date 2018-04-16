`timescale 1 ns / 1 ps
`include "matrix.v"

module test_matrix ();
  reg [7:0] entry1;
  reg [7:0] entry2;
  reg [15:0] sum;
  wire [15:0] new_sum;
  wire C15;

  matrix_multiplier dut(entry1, entry2, sum, new_sum, C15);

  initial begin
    $dumpfile("matrix_multiplier.vsd");
    $dumpvars(0, dut);
    entry1 = 8; entry2 = 8; sum = 0;#100
    $display("%d   %d  %d |   %d", entry1, entry2, sum, new_sum);
    entry1 = 8; entry2 = 8; sum = new_sum;#100
    $display("%d   %d  %d |   %d", entry1, entry2, sum, new_sum);
    entry1 = 2; entry2 = 4; sum = new_sum;#100
    $display("%d   %d  %d |   %d", entry1, entry2, sum, new_sum);
    entry1 = 7; entry2 = 3; sum = new_sum;#100
    $display("%d   %d  %d |   %d", entry1, entry2, sum, new_sum);
  end


endmodule
