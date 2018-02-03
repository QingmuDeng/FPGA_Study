`include "hw1.v"

module morgan ();

  reg A, B;
  wire nA, nB, nAandnB;

  demorgan dut(A, B, nA, nB, nAandnB);

  initial begin
    $display("A B | ~A ~B | ~A~B");
    A=0;B=0; #1
    $display("%b %b | %b %b | %b", A, B, nA, nB, nAandnB);
    A=0;B=1; #1
    $display("%b %b | %b %b | %b", A, B, nA, nB, nAandnB);
    A=1;B=0; #1
    $display("%b %b | %b %b | %b", A, B, nA, nB, nAandnB);
    A=1;B=1; #1
    $display("%b %b | %b %b | %b", A, B, nA, nB, nAandnB);
  end
endmodule
