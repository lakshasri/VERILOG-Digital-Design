module d_flip_flop(
    input D, clk, reset,
    output reg Q
);
    always @(posedge clk or posedge reset) begin
        if (reset)
            Q <= 0;  // reset output to 0
        else
            Q <= D;  // store value
    end
endmodule
