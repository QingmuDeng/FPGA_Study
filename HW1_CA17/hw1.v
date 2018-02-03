module demorgan
(
    input A,
    input B,
    output nA,
    output nB,
    output nAandnB
);

  wire nA;
  wire nB;
  not Ainv(nA, A);
  not Binv(nB, B);
  and andgate(nAandnB, nA, nB);


endmodule
