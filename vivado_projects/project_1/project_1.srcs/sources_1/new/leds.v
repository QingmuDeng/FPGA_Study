`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/21/2018 05:17:12 PM
// Design Name: 
// Module Name: leds
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module ddf4(
    input trigger,
    input [3:0] d,
    output reg [3:0] q
    );
    always @(posedge trigger) begin
        q <= d;
    end
endmodule

module leds(
    input clk,
    input [3:0] sw,
    output [3:0] led
    );
    
    ddf4 device(clk, sw, led);
endmodule
