`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:12:09 03/10/2018
// Design Name:   two_bit_decoder
// Module Name:   /home/josh/ComArch/FPGA_Study/Verilog_files/two_bit_decoder/stimulus.v
// Project Name:  two_bit_decoder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: two_bit_decoder
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
	reg EN;
	reg I0;
	reg I1;

	// Outputs
	wire Q0;
	wire Q1;
	wire Q2;
	wire Q3;

	// Instantiate the Unit Under Test (UUT)
	two_bit_decoder uut (
		.Q0(Q0), 
		.Q1(Q1), 
		.Q2(Q2), 
		.Q3(Q3), 
		.EN(EN), 
		.I0(I0), 
		.I1(I1)
	);
	
	initial begin
		// Initialize Inputs
		EN = 0;
		I0 = 0;
		I1 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
	end
   
	initial begin
	EN = 1;
	I0 = 1; I1 = 1; #100
	$monitor("Q3: %d Q2: %d Q1: %d Q0: %d I1: %d I0: %d", Q3, Q2, Q1, Q0, I1, I0);
	I0 = 0; I1 = 0; #100
	$monitor("Q3: %d Q2: %d Q1: %d Q0: %d I1: %d I0: %d", Q3, Q2, Q1, Q0, I1, I0);
	I0 = 1; I1 = 0; #100
	$monitor("Q3: %d Q2: %d Q1: %d Q0: %d I1: %d I0: %d", Q3, Q2, Q1, Q0, I1, I0);
	I0 = 0; I1 = 0; #100
	$monitor("Q3: %d Q2: %d Q1: %d Q0: %d I1: %d I0: %d", Q3, Q2, Q1, Q0, I1, I0);
	end
endmodule

