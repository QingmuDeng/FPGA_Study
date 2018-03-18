`define AND and #5
`define OR or #5
`define NOT not #5
`define NAND nand #5
`define XOR xor #5
`define NOR nor #5

// module behavioralMultiplexer
// (
//     output out,
//     input address0, address1,
//     input in0, in1, in2, in3
// );
//     // Join single-bit inputs into a bus, use address as index
//     wire[3:0] inputs = {in3, in2, in1, in0};
//     wire[1:0] address = {address1, address0};
//     assign out = inputs[address];
// endmodule


module structuralMultiplexer
(
    output out,
    input address0, address1,
    input in0, in1, in2, in3
);
    // Your multiplexer code here
    wire _address0, _address1, addr0010, addr0110, addr0011, addr0111;
    wire orIn0, orIn1, orIn2, orIn3;
    wire or01, or012;

    `NOT address0inv(_address0, address0);
    `NOT address0inv(_address1, address1);

    `AND addr0low1low(addr0010, _address0, _address1);
    `AND in0and(orIn0, addr0010, in0);

    `AND addr0low1low(addr0110, _address0, _address1);
    `AND in0and(orIn1, addr0110, in1);

    `AND addr0low1low(addr0011, _address0, _address1);
    `AND in0and(orIn2, addr0011, in2);

    `AND addr0low1low(addr0111, _address0, _address1);
    `AND in0and(orIn3, addr0111, in3);


    `OR output0(or01, orIn0, orIn1);
    `OR output1(or012, orIn2, or01);
    `OR output1(out, or012, orIn3);
endmodule
