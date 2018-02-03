module demorgan
(
    input A,
    input B,
    output nA,
    output nB,
    output nAornB
);

  wire nA;
  wire nB;
  not Ainv(nA, A);
  not Binv(nB, B);
  or orgate(nAornB, nA, nB);


endmodule
