`timescale 1 ns / 1 ps
`include "decoder.v"

module decoder_test();

  reg address0, address1, enable;
  wire out0, out1, out2, out3;

  structuralDecoder dut(.out0(out0), .out1(out1), .out2(out2), .out3(out3),
                        .address0(address0), .address1(address1), .enable(enable));

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

    $dumpfile("decoder.vcd");
    // $dumpfile("test.vcd");
    $dumpvars;
  end
endmodule
