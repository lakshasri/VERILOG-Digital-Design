`timescale 1ns / 1ps

module ripple_adder_8bit_tb;
    reg [7:0] A, B;
    reg Cin;
    wire [7:0] Sum;
    wire Cout;

    ripple_adder_8bit uut (A, B, Cin, Sum, Cout);

    initial begin
        $monitor("A=%b B=%b Cin=%b | Sum=%b Cout=%b", A, B, Cin, Sum, Cout);

        A = 8'b00001111; B = 8'b00000001; Cin = 0; #10;
        A = 8'b11001100; B = 8'b00110011; Cin = 0; #10;
        A = 8'b11111111; B = 8'b00000001; Cin = 0; #10;

        $stop;
    end
endmodule
