// Adder testbench
`timescale 1 ns / 1 ps
`include "adder_1.v"

module testFullAdder();
    reg a, b, carryin;
    wire sum, carryout;

    behavioralFullAdder adder (sum, carryout, a, b, carryin);

    initial begin
        // Your test code here
        $dumpfile("adder_1.vsd");
        $dumpvars(0, adder);
        #100
        $display("a  b  Cin  |  S  Cout");
        a=0; b=0; carryin=0; #200
        $display("%d  %d  %d    |  %d  %d", a, b, carryin, sum, carryout);
        a=1; b=0; carryin=0; #200
        $display("%d  %d  %d    |  %d  %d", a, b, carryin, sum, carryout);
        a=0; b=1; carryin=0; #200
        $display("%d  %d  %d    |  %d  %d", a, b, carryin, sum, carryout);
        a=0; b=0; carryin=1; #200
        $display("%d  %d  %d    |  %d  %d", a, b, carryin, sum, carryout);
        a=1; b=1; carryin=0; #200
        $display("%d  %d  %d    |  %d  %d", a, b, carryin, sum, carryout);
        a=0; b=1; carryin=1; #200
        $display("%d  %d  %d    |  %d  %d", a, b, carryin, sum, carryout);
        a=1; b=0; carryin=1; #200
        $display("%d  %d  %d    |  %d  %d", a, b, carryin, sum, carryout);
        a=1; b=1; carryin=1; #200
        $display("%d  %d  %d    |  %d  %d", a, b, carryin, sum, carryout);
    end
endmodule
