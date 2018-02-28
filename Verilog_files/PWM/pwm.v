`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:00:15 02/27/2018 
// Design Name: 
// Module Name:    pwm 
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
module pwm(
	input pwm_clk,
	input [7:0] duty,
	output reg pwm_pin
    );

reg [7:0] counter = 0;

always @(posedge pwm_clk) begin
	counter <= counter + 1;
	pwm_pin <= (counter < duty);
end

endmodule
