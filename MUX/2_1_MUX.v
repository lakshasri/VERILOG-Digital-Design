module mux_2x1(
    input A, B, S,
    output Y
);
    assign Y = (S) ? B : A;  // If S=0, Y=A; if S=1, Y=B
endmodule
