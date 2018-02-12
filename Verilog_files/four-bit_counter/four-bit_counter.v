`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:52:58 02/09/2018 
// Design Name: 
// Module Name:    four-bit_counter 
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
module fourbit_counter(
    input clock,
    output reg [7:0] Q
    );

always @(posedge clock)

begin
	Q <= Q+1;
end

endmodule
