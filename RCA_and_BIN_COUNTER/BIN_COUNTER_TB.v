`timescale 1ns / 1ps

module binary_counter_tb;
    reg clk, reset;
    wire [3:0] count;

    binary_counter uut (clk, reset, count);

    always #5 clk = ~clk;  // Generate clock pulse every 5 time units

    initial begin
        $monitor("Time=%0t | Reset=%b Count=%b", $time, reset, count);

        clk = 0;
        reset = 1; #10;  // Apply reset
        reset = 0; #100;  // Let it count

        $stop;
    end
endmodule
