`include "adder_1.v"

module twoBitAdder(
    input [1:0] a,
    input [1:0] b,
    input Cin0, subtract,
    output sum0, sum1, C1
  );

wire C0;
wire b_new_0, b_new_1, Cin0_new;

xor subtractb0(b_new_0, b[0], subtract);
xor subtractb1(b_new_1, b[1], subtract);
or subtractCarry(Cin0_new, Cin0, subtract);

behavioralFullAdder adder0(.sum(sum0), .carryout(C0), .a(a[0]), .b(b_new_0), .carryin(Cin0_new));
behavioralFullAdder adder1(.sum(sum1), .carryout(C1), .a(a[1]), .b(b_new_1), .carryin(C0));

endmodule
