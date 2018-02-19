`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:29:34 02/16/2018 
// Design Name: 
// Module Name:    debbed_muxed_sevseg 
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


module debbed_muxed_sevseg(
	
    );
debouncer d1(.CLK(CLK));
debouncer d2(.CLK(CLK));
display_7_seg display(.CLK(CLK));
endmodule
