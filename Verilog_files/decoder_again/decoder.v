`define AND and #5
`define OR or #5
`define NOT not #5
`define NAND nand #5
`define XOR xor #5
`define NOR nor #5

// module behavioralDecoder
// (
//     output out0, out1, out2, out3,
//     input address0, address1,
//     input enable
// );
//     // Uses concatenation and shift operators
//     assign {out3,out2,out1,out0}=enable<<{address1,address0};
// endmodule


module structuralDecoder
(
    output out0, out1, out2, out3,
    input address0, address1,
    input enable
);
    // Your decoder code here
    wire _address0, _address1, A, B;

    `NOT addr0inv(_address0, address0);
    `NOT addr1inv(_address1, address1);

    `AND addr1low(A, enable, _address1);
    `AND addr1low(B, enable, address1);

    `AND addr0low1low(out0, A, _address0);
    `AND addr0high1low(out1, A, address0);
    `AND addr0low1high(out2, B, _address0);
    `AND addr0high1high(out3, B, address0);
endmodule
