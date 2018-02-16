`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:53:55 02/16/2018 
// Design Name: 
// Module Name:    debuonce_test 
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
`include "debounce.v"

module debounce_test(
		input CLK,
		input switch_a,
		input switch_b,
		input switch_c,
		output reg led_a,
		output reg led_b,
		output reg led_c,
		output reg led_d
    );

wire s_a_dn, s_b_up, s_a_state;
debouncer d1(.CLK (CLK), .switch_input (switch_a), .trans_dn (s_a_dn));
debouncer d2(.CLK (CLK), .switch_input (switch_b), .trans_up (s_b_up));
debouncer d3(.CLK (CLK), .switch_input (switch_a), .state (s_a_state));

always @(posedge CLK) begin
	if (s_a_dn) begin
		led_a <= ~ led_a;
	end
	if (s_b_up) begin
		led_b <= ~ led_b;
	end
	led_c <= s_a_state;
	if (switch_c) begin
		led_d <= ~ led_d;
	end
end
endmodule
