`include "hw1_na+nb.v"

module morgan();

  reg A, B;
  wire nA, nB, nAornB;

  demorgan dut(A, B, nA, nB, nAornB);

  initial begin
    $display("A B | ~A ~B | ~A+~B");
    A=0;B=0; #1
    $display("%b %b | %b %b | %b", A, B, nA, nB, nAornB);
    A=0;B=1; #1
    $display("%b %b | %b %b | %b", A, B, nA, nB, nAornB);
    A=1;B=0; #1
    $display("%b %b | %b %b | %b", A, B, nA, nB, nAornB);
    A=1;B=1; #1
    $display("%b %b | %b %b | %b", A, B, nA, nB, nAornB);
  end


endmodule
