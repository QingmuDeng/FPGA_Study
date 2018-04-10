`include "two-bit-adder.v"

module fourBitAdder(
    input [3:0] a,
    input [3:0] b,
    input Cin0, subtract,
    output Cout,
    output [3:0] sum
  );

  // wire Cin2;
  //
  // twoBitAdder twoBitAdder0(a[3:2], b[3:2], Cin0, subtract, sum0, sum1, Cin2);
  // twoBitAdder twoBitAdder1(a[1:0], b[1:0], Cin2, subtract, sum2, sum3, C3);

  wire [2:0] C;
  wire [3:0] b_new;
  wire Cin0_new;
  integer i = 0;

//   for(i = 0; i < 8; i = i + 1) begin
// // repeat (8) begin
// xor subtract(b_new[i], b[i], subtract);
// // i = i + 1;
// end
  xor subtractb0(b_new[0], b[0], subtract);
  xor subtractb1(b_new[1], b[1], subtract);
  xor subtractb0(b_new[2], b[2], subtract);
  xor subtractb1(b_new[3], b[3], subtract);

  or subtractCarry(Cin0_new, Cin0, subtract);

  behavioralFullAdder adder0(.sum(sum[0]), .carryout(C[0]), .a(a[0]), .b(b_new[0]), .carryin(Cin0_new));
  behavioralFullAdder adder1(.sum(sum[1]), .carryout(C[1]), .a(a[1]), .b(b_new[1]), .carryin(C[0]));
  behavioralFullAdder adder2(.sum(sum[2]), .carryout(C[2]), .a(a[2]), .b(b_new[2]), .carryin(C[1]));
  behavioralFullAdder adder3(.sum(sum[3]), .carryout(Cout), .a(a[3]), .b(b_new[3]), .carryin(C[2]));

  // endmodule

endmodule
