//REMEMBER YOU NEED TO COMPLIE THIS CODE WITH FULL ADDER CODE //REUSE FULLADDER CODE TO EXECUTE 
module ripple_adder_4bit(
    input [3:0] A, B,
    input Cin,
    output [3:0] Sum,
    output Cout
);
    wire [2:0] carry; // Intermediate carry signals

    full_adder FA0 (A[0], B[0], Cin, Sum[0], carry[0]);
    full_adder FA1 (A[1], B[1], carry[0], Sum[1], carry[1]);
    full_adder FA2 (A[2], B[2], carry[1], Sum[2], carry[2]);
    full_adder FA3 (A[3], B[3], carry[2], Sum[3], Cout);
endmodule
