`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:18:29 03/06/2018
// Design Name:   upcount
// Module Name:   /home/josh/ComArch/FPGA_Study/Verilog_files/upcount/stimulus.v
// Project Name:  upcount
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: upcount
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module stimulus;

	// Inputs
	reg CLK;

	// Outputs
	wire [3:0] units;

	// Instantiate the Unit Under Test (UUT)
	upcount uut (
		.CLK(CLK), 
		.units(units)
	);
	always #1 CLK = ~ CLK;
	initial begin
		// Initialize Inputs
		CLK = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
	end
      
endmodule

