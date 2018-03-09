`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:11:26 03/06/2018 
// Design Name: 
// Module Name:    upcount 
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
module upcount(
	input CLK,
	output reg [3:0] units
	);
	
	initial begin
	units = 0;
	end
	
	always@(posedge CLK) begin
			units <= units + 1;
			if (units == 4'd9) begin
				units <= 0;
			end
	end
	

endmodule
