`include "norAB.v"

module morgan ();
  reg A, B;
  wire AnorB;

  demorgan duct(A, B, AnorB);

  initial begin
    $display("A  |B  | ~(A+B)");
    A = 0; B = 0; #1
    $display("%b  | %b  | %b", A, B, AnorB);
    A = 0; B = 1; #1
    $display("%b  | %b  | %b", A, B, AnorB);
    A = 1; B = 0; #1
    $display("%b  | %b  | %b", A, B, AnorB);
    A = 1; B = 1; #1
    $display("%b  | %b  | %b", A, B, AnorB);
  end
endmodule //
