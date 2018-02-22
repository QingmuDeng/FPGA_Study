`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:42:54 02/19/2018 
// Design Name: 
// Module Name:    display_7_seg 
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
module display_7_seg(
	input CLK,
	input [3:0] units, tens, hundreds, thousands,
	output [7:0] SEG,
	output reg [3:0] DIGIT
    );


reg [2:0] digit_posn;
reg [3:0] digit_data;
reg [23:0] prescaler;

decoder_sevseg decoder(.CLK(CLK), .D(digit_data), .SEG(SEG));

always @(posedge CLK)begin
	prescaler <=prescaler + 23'd1;
	if (prescaler >= 50000)begin
		prescaler <= 0;
		digit_posn <= digit_posn + 3'd1;
		if (digit_posn == 3'd0) begin
			digit_data <= units;
			DIGIT <= 4'b1110;
		end
		if (digit_posn == 3'd1) begin
			digit_data <= tens;
			DIGIT <= 4'b1101;
		end
		if (digit_posn == 3'd2) begin
			digit_data <= hundreds;
			DIGIT <= 4'b1011;
		end
		if (digit_posn == 3'd3) begin
			digit_data <= thousands;
			DIGIT <= 4'b0111;
		end

	end
end
endmodule
