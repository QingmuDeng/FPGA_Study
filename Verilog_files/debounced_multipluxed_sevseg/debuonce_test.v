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
`include "debouncer.v"

module debuonce_test(
		input CLK,
		input switch_a,
		input switch_b,
		output reg led_a,
		output reg led_b,
		output reg led_c
    );


wire s_a_dn, s_b_up, s_a_state;
debouncer d1(.CLK(CLK), .switch_input(switch_a),
				 .trans_dn(s_a_dn));
debouncer d2(.CLK(CLK), .switch_input(switch_b),
				 .trans_up(s_b_up));
debouncer d3(.CLK(CLK), .switch_input(switch_a),
				 .state(s_a_state));

always @(posedge CLK) begin
	if (s_a_dn) begin
		led_a <= s_a_dn;
	end
	if (s_b_up) begin
		led_b <= s_b_up;
	end
	if (s_a_state) begin
		led_c <= s_a_state;
	end
end
endmodule
