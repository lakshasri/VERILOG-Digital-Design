module binary_counter(
    input clk, reset,
    output reg [3:0] count
);
    always @(posedge clk or posedge reset) begin
        if (reset)
            count <= 4'b0000;  // Reset to 0
        else
            count <= count + 1;  
    end
endmodule
