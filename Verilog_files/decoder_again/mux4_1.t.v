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
    $display("E A0 A1  | Q0 Q1 Q2 Q3");
    enable=1; address0=0; address1=0; #100
    $display("%d  %d  %d  |  %d  %d  %d  %d", enable, address0, address1, out0, out1, out2, out3);
    enable=1; address0=1; address1=0; #100
    $display("%d  %d  %d  |  %d  %d  %d  %d", enable, address0, address1, out0, out1, out2, out3);
    enable=1; address0=0; address1=1; #100
    $display("%d  %d  %d  |  %d  %d  %d  %d", enable, address0, address1, out0, out1, out2, out3);
    enable=1; address0=1; address1=1; #100
    $display("%d  %d  %d  |  %d  %d  %d  %d", enable, address0, address1, out0, out1, out2, out3);
    enable=0; address0=0; address1=0; #100
    $display("%d  %d  %d  |  %d  %d  %d  %d", enable, address0, address1, out0, out1, out2, out3);
    enable=0; address0=1; address1=0; #100
    $display("%d  %d  %d  |  %d  %d  %d  %d", enable, address0, address1, out0, out1, out2, out3);
    enable=0; address0=0; address1=1; #100
    $display("%d  %d  %d  |  %d  %d  %d  %d", enable, address0, address1, out0, out1, out2, out3);
    enable=0; address0=1; address1=1; #100
    $display("%d  %d  %d  |  %d  %d  %d  %d", enable, address0, address1, out0, out1, out2, out3);
  end


endmodule
