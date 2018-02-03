module demorgan(
  input A,
  input B,
  output AnandB
);

  wire A;
  wire B;
  nand nandgate(AnandB, A, B);

endmodule
