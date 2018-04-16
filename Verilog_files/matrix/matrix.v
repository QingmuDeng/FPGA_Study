`include "multiplier_16.v"
`include "adder_16.v"

module matrix_multiplier(
  input [7:0] entry1,
  input [7:0] entry2,
  input [15:0] sum,
  output [15:0] new_sum,
  output C15
  );

  wire [15:0] product;

  sixtnbit_multiplier multiplier(entry1, entry2, product);
  sixtnBitAdder accumulator(sum, product, 0, 0, C15, new_sum);
endmodule
