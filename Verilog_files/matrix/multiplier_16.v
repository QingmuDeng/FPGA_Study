`include "adder_8.v"

module sixtnbit_multiplier(
    input [7:0] A,
    input [7:0] B,
    output [15:0] P
  );


wire [7:0] out_B0A;
wire [7:0] out_B1A;
wire [7:0] out_B2A;
wire [7:0] out_B3A;
wire [7:0] out_B4A;
wire [7:0] out_B5A;
wire [7:0] out_B6A;
wire [7:0] out_B7A;
wire [7:0] sum0;
wire [7:0] sum1;
wire [7:0] sum2;
wire [7:0] sum3;
wire [7:0] sum4;
wire [7:0] sum5;
wire [7:0] sum6;
wire [6:0] Cout;


and andB0A0(out_B0A[0], A[0], B[0]);
and andB0A1(out_B0A[1], A[1], B[0]);
and andB0A2(out_B0A[2], A[2], B[0]);
and andB0A3(out_B0A[3], A[3], B[0]);
and andB0A4(out_B0A[4], A[4], B[0]);
and andB0A5(out_B0A[5], A[5], B[0]);
and andB0A6(out_B0A[6], A[6], B[0]);
and andB0A7(out_B0A[7], A[7], B[0]);


and andB1A0(out_B1A[0], A[0], B[1]);
and andB1A1(out_B1A[1], A[1], B[1]);
and andB1A2(out_B1A[2], A[2], B[1]);
and andB1A3(out_B1A[3], A[3], B[1]);
and andB1A4(out_B1A[4], A[4], B[1]);
and andB1A5(out_B1A[5], A[5], B[1]);
and andB1A6(out_B1A[6], A[6], B[1]);
and andB1A7(out_B1A[7], A[7], B[1]);


and andB2A0(out_B2A[0], A[0], B[2]);
and andB2A1(out_B2A[1], A[1], B[2]);
and andB2A2(out_B2A[2], A[2], B[2]);
and andB2A3(out_B2A[3], A[3], B[2]);
and andB2A0(out_B2A[4], A[4], B[2]);
and andB2A1(out_B2A[5], A[5], B[2]);
and andB2A2(out_B2A[6], A[6], B[2]);
and andB2A3(out_B2A[7], A[7], B[2]);


and andB3A0(out_B3A[0], A[0], B[3]);
and andB3A1(out_B3A[1], A[1], B[3]);
and andB3A2(out_B3A[2], A[2], B[3]);
and andB3A3(out_B3A[3], A[3], B[3]);
and andB3A4(out_B3A[4], A[4], B[3]);
and andB3A5(out_B3A[5], A[5], B[3]);
and andB3A6(out_B3A[6], A[6], B[3]);
and andB3A7(out_B3A[7], A[7], B[3]);


and andB4A0(out_B4A[0], A[0], B[4]);
and andB4A1(out_B4A[1], A[1], B[4]);
and andB4A2(out_B4A[2], A[2], B[4]);
and andB4A3(out_B4A[3], A[3], B[4]);
and andB4A4(out_B4A[4], A[4], B[4]);
and andB4A5(out_B4A[5], A[5], B[4]);
and andB4A6(out_B4A[6], A[6], B[4]);
and andB4A7(out_B4A[7], A[7], B[4]);


and andB5A0(out_B5A[0], A[0], B[5]);
and andB5A1(out_B5A[1], A[1], B[5]);
and andB5A2(out_B5A[2], A[2], B[5]);
and andB5A3(out_B5A[3], A[3], B[5]);
and andB5A4(out_B5A[4], A[4], B[5]);
and andB5A5(out_B5A[5], A[5], B[5]);
and andB5A6(out_B5A[6], A[6], B[5]);
and andB5A7(out_B5A[7], A[7], B[5]);


and andB6A0(out_B6A[0], A[0], B[6]);
and andB6A1(out_B6A[1], A[1], B[6]);
and andB6A2(out_B6A[2], A[2], B[6]);
and andB6A3(out_B6A[3], A[3], B[6]);
and andB6A4(out_B6A[4], A[4], B[6]);
and andB6A5(out_B6A[5], A[5], B[6]);
and andB6A6(out_B6A[6], A[6], B[6]);
and andB6A7(out_B6A[7], A[7], B[6]);


and andB7A0(out_B7A[0], A[0], B[7]);
and andB7A1(out_B7A[1], A[1], B[7]);
and andB7A2(out_B7A[2], A[2], B[7]);
and andB7A3(out_B7A[3], A[3], B[7]);
and andB7A4(out_B7A[4], A[4], B[7]);
and andB7A5(out_B7A[5], A[5], B[7]);
and andB7A6(out_B7A[6], A[6], B[7]);
and andB7A7(out_B7A[7], A[7], B[7]);


eightBitAdder adder0({1'b0, out_B0A[7:1]}, out_B1A, 1'b0, 1'b0, Cout[0], sum0);
eightBitAdder adder1({Cout[0],sum0[7:1]}, out_B2A, 1'b0, 1'b0, Cout[1], sum1);
eightBitAdder adder2({Cout[1],sum1[7:1]}, out_B3A, 1'b0, 1'b0, Cout[2], sum2);
eightBitAdder adder3({Cout[2],sum2[7:1]}, out_B4A, 1'b0, 1'b0, Cout[3], sum3);
eightBitAdder adder4({Cout[3],sum3[7:1]}, out_B5A, 1'b0, 1'b0, Cout[4], sum4);
eightBitAdder adder5({Cout[4],sum4[7:1]}, out_B6A, 1'b0, 1'b0, Cout[5], sum5);
eightBitAdder adder6({Cout[5],sum5[7:1]}, out_B7A, 1'b0, 1'b0, Cout[6], sum6);



assign P = {Cout[6], sum6, sum5[0], sum4[0], sum3[0], sum2[0], sum1[0], sum0[0], out_B0A[0]};

endmodule
