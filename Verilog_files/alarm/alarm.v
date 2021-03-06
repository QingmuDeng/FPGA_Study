`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:11:25 02/27/2018 
// Design Name: 
// Module Name:    alarm 
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
module alarm(
	input CLK,
	input enable,
	output reg BUZZER
    );
	 
reg [25:0] counter;

always @(posedge CLK) begin
	counter <= counter + 1;
	if ((counter == 26'd10000000) & enable) begin
		BUZZER <= ~(BUZZER);
		counter <= 0;
	end

end
endmodule
