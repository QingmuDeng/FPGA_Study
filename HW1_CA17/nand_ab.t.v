`include "nand_ab.v"

module morgan();

  reg A, B;
  wire AnandB;

  demorgan dut(A, B, AnandB);

  initial begin
    $display("A B | ~(AB)");
    A = 0; B = 0; #1
    $display("%b  | %b  | %b", A, B, AnandB);
    A = 0; B = 1; #1
    $display("%b  | %b  | %b", A, B, AnandB);
    A = 1; B = 0; #1
    $display("%b  | %b  | %b", A, B, AnandB);
    A = 1; B = 1; #1
    $display("%b  | %b  | %b", A, B, AnandB);
  end
endmodule
