`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:33:25 03/09/2018 
// Design Name: 
// Module Name:    DFF 
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
module DFF(CLK, D, Q, invQ);
input CLK, D;
output Q, invQ;

wire invD, EN_R, EN_S;

not NOT_D (invD, D);
and AND_NOT_D (EN_R, invD, CLK);
and AND_D (EN_S, D, CLK);
nor NOR_invQ(invQ, EN_S, Q);
nor NOR_Q(Q, EN_R, invQ);

//initial begin
	//CLK = 0;
	//D = 0;
//end
endmodule
