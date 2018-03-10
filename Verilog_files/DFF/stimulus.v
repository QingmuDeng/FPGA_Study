`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:45:11 03/09/2018
// Design Name:   DFF
// Module Name:   /home/josh/ComArch/FPGA_Study/Verilog_files/DFF/stimulus.v
// Project Name:  DFF
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: DFF
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
	reg D;
	reg i;

	// Outputs
	wire Q;
	wire invQ;

	// Instantiate the Unit Under Test (UUT)
	DFF uut (
		.CLK(CLK), 
		.D(D), 
		.Q(Q), 
		.invQ(invQ)
	);

	always #5 CLK <= ~CLK;
	initial begin
		// Initialize Inputs
		CLK = 0;
		D = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		for(i=0; i<10; i=i+1) begin
			D <= 0;
			//D = 0;
			#15;
			D <= 1;
			//D = 1;
			#15;
		end
	end
   
	initial begin
		$monitor("Q = %d, invQ = %d, D = %d", Q, invQ, D);
	end
endmodule

