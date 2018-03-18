`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:58:30 03/10/2018 
// Design Name: 
// Module Name:    two_bit_decoder 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
`define And and #10
`define Not not #10
 
module two_bit_decoder(EN, I0, I1, Q0, Q1, Q2, Q3);
input EN, I0, I1;
output Q0, Q1, Q2, Q3;

wire nI0;
wire nI1;
wire A;
wire B;


`Not notI0(nI0, I0);
`Not notI1(nI1, I1);

`And and0(A, EN, invI1);
`And and1(B, EN, I1);

`And ANDq0(Q0, A, nI0);
`And ANDq1(Q1, A, I0);
`And ANDq2(Q2, B, nI1);
`And ANDq3(Q3, B, I1);

endmodule
