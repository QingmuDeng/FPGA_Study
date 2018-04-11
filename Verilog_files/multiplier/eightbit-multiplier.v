`include "fourbit-adder.v"

module eightbit_multiplier(
    input [3:0] A,
    input [3:0] B,
    output [7:0] P
  );

wire [3:0] out_B0A;
wire [3:0] out_B1A;
wire [3:0] out_B2A;
wire [3:0] out_B3A;
wire [3:0] sum0;
wire [3:0] sum1;
wire [3:0] sum2;
wire [2:0] Cout;

and andB0A0(out_B0A[0], A[0], B[0]);
and andB0A1(out_B0A[1], A[1], B[0]);
and andB0A2(out_B0A[2], A[2], B[0]);
and andB0A3(out_B0A[3], A[3], B[0]);

and andB1A0(out_B1A[0], A[0], B[1]);
and andB1A1(out_B1A[1], A[1], B[1]);
and andB1A2(out_B1A[2], A[2], B[1]);
and andB1A3(out_B1A[3], A[3], B[1]);

and andB2A0(out_B2A[0], A[0], B[2]);
and andB2A1(out_B2A[1], A[1], B[2]);
and andB2A2(out_B2A[2], A[2], B[2]);
and andB2A3(out_B2A[3], A[3], B[2]);

and andB3A0(out_B3A[0], A[0], B[3]);
and andB3A1(out_B3A[1], A[1], B[3]);
and andB3A2(out_B3A[2], A[2], B[3]);
and andB3A3(out_B3A[3], A[3], B[3]);


fourBitAdder adder0({1'b0, A[3:1]}, out_B1A, 1'b0, 1'b0, Cout[0], sum0);
fourBitAdder adder1({Cout[0],sum0[3:1]}, out_B2A, 1'b0, 1'b0, Cout[1], sum1);
fourBitAdder adder2({Cout[1],sum1[3:1]}, out_B3A, 1'b0, 1'b0, Cout[2], sum2);

assign P = {Cout[2], sum2, sum1[0], sum0[0], out_B0A[0]};

endmodule
