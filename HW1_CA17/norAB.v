module demorgan (
  input A,
  input B,
  output AnorB
  );

  wire A;
  wire B;
  nor norgate(AnorB, A, B);
endmodule //
