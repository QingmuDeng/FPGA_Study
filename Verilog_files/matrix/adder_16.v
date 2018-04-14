`include "adder_1.v"

module sixtnBitAdder(
    input [15:0] a,
    input [15:0] b,
    input Cin0, subtract,
    output C15,
    output [15:0] sum
  );

  // wire Cin2;
  //
  // twoBitAdder twoBitAdder0(a[3:2], b[3:2], Cin0, subtract, sum0, sum1, Cin2);
  // twoBitAdder twoBitAdder1(a[1:0], b[1:0], Cin2, subtract, sum2, sum3, C3);

  wire [14:0] C;
  wire [15:0] b_new;
  wire Cin0_new;
  // integer i = 0;

//   for(i = 0; i < 8; i = i + 1) begin
// // repeat (8) begin
// xor subtract(b_new[i], b[i], subtract);
// // i = i + 1;
// end
  xor subtractb0(b_new[0], b[0], subtract);
  xor subtractb1(b_new[1], b[1], subtract);
  xor subtractb2(b_new[2], b[2], subtract);
  xor subtractb3(b_new[3], b[3], subtract);
  xor subtractb4(b_new[4], b[4], subtract);
  xor subtractb5(b_new[5], b[5], subtract);
  xor subtractb6(b_new[6], b[6], subtract);
  xor subtractb7(b_new[7], b[7], subtract);
  xor subtractb8(b_new[8], b[8], subtract);
  xor subtractb9(b_new[9], b[9], subtract);
  xor subtractb10(b_new[10], b[10], subtract);
  xor subtractb11(b_new[11], b[11], subtract);
  xor subtractb12(b_new[12], b[12], subtract);
  xor subtractb13(b_new[13], b[13], subtract);
  xor subtractb14(b_new[14], b[14], subtract);
  xor subtractb15(b_new[15], b[15], subtract);

  or subtractCarry(Cin0_new, Cin0, subtract);

  behavioralFullAdder adder0(.sum(sum[0]), .carryout(C[0]), .a(a[0]), .b(b_new[0]), .carryin(Cin0_new));
  behavioralFullAdder adder1(.sum(sum[1]), .carryout(C[1]), .a(a[1]), .b(b_new[1]), .carryin(C[0]));
  behavioralFullAdder adder2(.sum(sum[2]), .carryout(C[2]), .a(a[2]), .b(b_new[2]), .carryin(C[1]));
  behavioralFullAdder adder3(.sum(sum[3]), .carryout(C[3]), .a(a[3]), .b(b_new[3]), .carryin(C[2]));
  behavioralFullAdder adder4(.sum(sum[4]), .carryout(C[4]), .a(a[4]), .b(b_new[4]), .carryin(C[3]));
  behavioralFullAdder adder5(.sum(sum[5]), .carryout(C[5]), .a(a[5]), .b(b_new[5]), .carryin(C[4]));
  behavioralFullAdder adder6(.sum(sum[6]), .carryout(C[6]), .a(a[6]), .b(b_new[6]), .carryin(C[5]));
  behavioralFullAdder adder7(.sum(sum[7]), .carryout(C[7]), .a(a[7]), .b(b_new[7]), .carryin(C[6]));
  behavioralFullAdder adder8(.sum(sum[8]), .carryout(C[8]), .a(a[8]), .b(b_new[8]), .carryin(C[7]));
  behavioralFullAdder adder9(.sum(sum[9]), .carryout(C[9]), .a(a[9]), .b(b_new[9]), .carryin(C[8]));
  behavioralFullAdder adder10(.sum(sum[10]), .carryout(C[10]), .a(a[10]), .b(b_new[10]), .carryin(C[9]));
  behavioralFullAdder adder11(.sum(sum[11]), .carryout(C[11]), .a(a[11]), .b(b_new[11]), .carryin(C[10]));
  behavioralFullAdder adder12(.sum(sum[12]), .carryout(C[12]), .a(a[12]), .b(b_new[12]), .carryin(C[11]));
  behavioralFullAdder adder13(.sum(sum[13]), .carryout(C[13]), .a(a[13]), .b(b_new[13]), .carryin(C[12]));
  behavioralFullAdder adder14(.sum(sum[14]), .carryout(C[14]), .a(a[14]), .b(b_new[14]), .carryin(C[13]));
  behavioralFullAdder adder15(.sum(sum[15]), .carryout(C15), .a(a[15]), .b(b_new[15]), .carryin(C[14]));

  // endmodule

endmodule
