// Adder circuit

// `define AND and #30
// `define OR or #30
// `define NOT not #10
// `define NAND nand #20
// `define XOR xor #30
// `define NOR nor #20


module behavioralFullAdder
(
    output sum,
    output carryout,
    input a,
    input b,
    input carryin
);
    // Uses concatenation operator and built-in '+'
    assign {carryout, sum}=a+b+carryin;
endmodule

// module structuralFullAdder
// (
//     output sum,
//     output carryout,
//     input a,
//     input b,
//     input carryin
// );
//     // Your adder code here
//     wire diffab, _diffab, andab, orab, _carryin;
//     wire carryinANDndiffab, ncarryinANDdiffab;
//     wire carryinANDorab;
//
//     `NOT not_xorab(_diffab, diffab);
//     `NOT not_carryin(_carryin, carryin);
//     `AND andAB(andab, a, b);
//     `OR orAB(orab, a, b);
//
//     `XOR xorab(diffab, a, b);
//     `AND andndiffABcin(carryinANDndiffab, carryin, _diffab);
//     `AND anddiffABncin(ncarryinANDdiffab, _carryin, diffab);
//     `OR orForsum(sum, ncarryinANDdiffab, carryinANDndiffab);
//
//     `AND andcinOrab(carryinANDorab, orab, carryin);
//     `OR orOrabAndcinOrab(carryout, carryinANDorab, andab);
// endmodule
