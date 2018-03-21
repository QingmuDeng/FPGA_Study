`timescale 1 ns / 1 ps
`include "mux4_1.v"

module testMultiplexer ();
  // Your test code here
  reg address0, address1, in0, in1, in2, in3;
  wire out;

  structuralMultiplexer dut
  (
      .out(out),
      .address0(address0), .address1(address1),
      .in0(in0), .in1(in1), .in2(in2), .in3(in3)
  );

  initial begin
    $dumpfile("mux4_1.vcd");
    $dumpvars(0, dut);

    $display("Q A0 A1  | I0 I1 I2 I3");
    address0=0; address1=0; in0=0; in1=1; in2=1; in3=1;#200
    $display("%d  %d  %d  |  %d  %d  %d  %d", out, address0, address1, in0, in1, in2, in3);
    address0=0; address1=0; in0=1; in1=1; in2=1; in3=1;#200
    $display("%d  %d  %d  |  %d  %d  %d  %d", out, address0, address1, in0, in1, in2, in3);
    address0=1; address1=0; in0=1; in1=0; in2=1; in3=1;#200
    $display("%d  %d  %d  |  %d  %d  %d  %d", out, address0, address1, in0, in1, in2, in3);
    address0=1; address1=0; in0=1; in1=1; in2=1; in3=1;#200
    $display("%d  %d  %d  |  %d  %d  %d  %d", out, address0, address1, in0, in1, in2, in3);
    address0=0; address1=1; in0=1; in1=1; in2=0; in3=1;#200
    $display("%d  %d  %d  |  %d  %d  %d  %d", out, address0, address1, in0, in1, in2, in3);
    address0=0; address1=1; in0=1; in1=1; in2=1; in3=1;#200
    $display("%d  %d  %d  |  %d  %d  %d  %d", out, address0, address1, in0, in1, in2, in3);
    address0=1; address1=1; in0=1; in1=1; in2=1; in3=0;#200
    $display("%d  %d  %d  |  %d  %d  %d  %d", out, address0, address1, in0, in1, in2, in3);
    address0=1; address1=1; in0=1; in1=1; in2=1; in3=1;#200
    $display("%d  %d  %d  |  %d  %d  %d  %d", out, address0, address1, in0, in1, in2, in3);
  end


endmodule
