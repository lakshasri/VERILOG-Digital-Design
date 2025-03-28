module mux_4x1(
    input I0, I1, I2, I3, 
    input S1, S0, 
    output Y
);
    wire MUX1_out, MUX2_out;

    mux_2x1 MUX1 (I0, I1, S0, MUX1_out);
    mux_2x1 MUX2 (I2, I3, S0, MUX2_out);
    mux_2x1 MUX3 (MUX1_out, MUX2_out, S1, Y);
endmodule
