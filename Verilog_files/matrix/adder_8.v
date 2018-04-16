`include "adder_1.v"

module eightBitAdder(
    input [7:0] a,
    input [7:0] b,
    input Cin0, subtract,
    output C7,
    output [7:0] sum
  );

  wire [6:0] C;
  wire [7:0] b_new;
  wire Cin0_new;

  xor subtractb0(b_new[0], b[0], subtract);
  xor subtractb1(b_new[1], b[1], subtract);
  xor subtractb0(b_new[2], b[2], subtract);
  xor subtractb1(b_new[3], b[3], subtract);
  xor subtractb0(b_new[4], b[4], subtract);
  xor subtractb1(b_new[5], b[5], subtract);
  xor subtractb0(b_new[6], b[6], subtract);
  xor subtractb1(b_new[7], b[7], subtract);

  or subtractCarry(Cin0_new, Cin0, subtract);

  behavioralFullAdder adder0(.sum(sum[0]), .carryout(C[0]), .a(a[0]), .b(b_new[0]), .carryin(Cin0_new));
  behavioralFullAdder adder1(.sum(sum[1]), .carryout(C[1]), .a(a[1]), .b(b_new[1]), .carryin(C[0]));
  behavioralFullAdder adder2(.sum(sum[2]), .carryout(C[2]), .a(a[2]), .b(b_new[2]), .carryin(C[1]));
  behavioralFullAdder adder3(.sum(sum[3]), .carryout(C[3]), .a(a[3]), .b(b_new[3]), .carryin(C[2]));
  behavioralFullAdder adder4(.sum(sum[4]), .carryout(C[4]), .a(a[4]), .b(b_new[4]), .carryin(C[3]));
  behavioralFullAdder adder5(.sum(sum[5]), .carryout(C[5]), .a(a[5]), .b(b_new[5]), .carryin(C[4]));
  behavioralFullAdder adder6(.sum(sum[6]), .carryout(C[6]), .a(a[6]), .b(b_new[6]), .carryin(C[5]));
  behavioralFullAdder adder7(.sum(sum[7]), .carryout(C7), .a(a[7]), .b(b_new[7]), .carryin(C[6]));

endmodule
