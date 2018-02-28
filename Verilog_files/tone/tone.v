`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:05:02 02/27/2018 
// Design Name: 
// Module Name:    tone 
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
module tone(
	input CLK,
	input clk_period,
	output tone
    );

parameter CLK_F = 50; //CLK Frequency in MHz
reg [5:0] prescaler = 0;
reg [20:0] counter = 0;

always @(posedge CLK) begin
	prescaler <= prescaler + 1;
	if (prescaler == CLK_F / 2 - 1) begin
		prescaler <= 0;
		counter <= counter + 1;
		if (counter == clk_period - 1) begin
			counter <= 0;
			tone <= ~ tone;
		end
	end
end
endmodule
