`timescale 1ns / 1ps

module d_flip_flop_tb;
    reg D, clk, reset;
    wire Q;

    d_flip_flop uut (D, clk, reset, Q);

    always #5 clk = ~clk;  // Toggle clock every 5 time units

    initial begin
        $monitor("Time=%0t | D=%b clk=%b reset=%b | Q=%b", $time, D, clk, reset, Q);

        clk = 0; D = 0; reset = 1; #10;
        reset = 0; D = 1; #10;
        D = 0; #10;
        D = 1; #10;

        $stop;
    end
endmodule
