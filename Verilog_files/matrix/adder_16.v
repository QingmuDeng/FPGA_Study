// `include "adder_8.v"

module sixtnBitAdder(
    input [15:0] a,
    input [15:0] b,
    input Cin0, subtract,
    output C15,
    output [15:0] sum
  );

  wire C7;

  eightBitAdder ls8b(a[7:0], b[7:0], Cin0, subtract, C7, sum[7:0]);
  eightBitAdder ms8b(a[15:8], b[15:8], C7, subtract, C15, sum[15:8]);
endmodule
