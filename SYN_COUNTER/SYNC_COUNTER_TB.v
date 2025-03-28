`timescale 1ns / 1ps

module counter_4bit_tb;
    reg clk, rst;
    wire [3:0] count;

    counter_4bit uut (clk, rst, count);
    always #5 clk = ~clk; // toggle clock every 5 time units

    initial begin
        $monitor("Time=%0t | rst=%b | count=%b", $time, rst, count);
        
        clk = 0; rst = 1; #10; // Reset active
        rst = 0; #50;
        
        rst = 1; #10; // Reset again
        rst = 0; #50;
        $stop;
    end
endmodule
