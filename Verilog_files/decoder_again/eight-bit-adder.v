`include "two-bit-adder.v"

module eightBitAdder(
    input [7:0] a,
    input [7:0] b,
    input Cin0, subtract,
    output C7, sum7, sum6, sum5, sum4, sum3, sum2, sum1, sum0
  );

  // wire Cin2;
  //
  // twoBitAdder twoBitAdder0(a[3:2], b[3:2], Cin0, subtract, sum0, sum1, Cin2);
  // twoBitAdder twoBitAdder1(a[1:0], b[1:0], Cin2, subtract, sum2, sum3, C3);

  wire C0, C1, C2, C3, C4, C5, C6;
  wire b_new_0, b_new_1, b_new_2, b_new_3, b_new_4, b_new_5, b_new_6, b_new_7, Cin0_new;

  xor subtractb0(b_new_0, b[0], subtract);
  xor subtractb1(b_new_1, b[1], subtract);
  xor subtractb0(b_new_2, b[2], subtract);
  xor subtractb1(b_new_3, b[3], subtract);
  xor subtractb0(b_new_4, b[4], subtract);
  xor subtractb1(b_new_5, b[5], subtract);
  xor subtractb0(b_new_6, b[6], subtract);
  xor subtractb1(b_new_7, b[7], subtract);
  or subtractCarry(Cin0_new, Cin0, subtract);

  behavioralFullAdder adder0(.sum(sum0), .carryout(C0), .a(a[0]), .b(b_new_0), .carryin(Cin0_new));
  behavioralFullAdder adder1(.sum(sum1), .carryout(C1), .a(a[1]), .b(b_new_1), .carryin(C0));
  behavioralFullAdder adder2(.sum(sum2), .carryout(C2), .a(a[2]), .b(b_new_2), .carryin(C1));
  behavioralFullAdder adder3(.sum(sum3), .carryout(C3), .a(a[3]), .b(b_new_3), .carryin(C2));
  behavioralFullAdder adder4(.sum(sum4), .carryout(C4), .a(a[4]), .b(b_new_4), .carryin(C3));
  behavioralFullAdder adder5(.sum(sum5), .carryout(C5), .a(a[5]), .b(b_new_5), .carryin(C4));
  behavioralFullAdder adder6(.sum(sum6), .carryout(C6), .a(a[6]), .b(b_new_6), .carryin(C5));
  behavioralFullAdder adder7(.sum(sum7), .carryout(C7), .a(a[7]), .b(b_new_7), .carryin(C6));

  // endmodule

endmodule
