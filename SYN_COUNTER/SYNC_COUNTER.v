module counter_4bit(
    input clk,
    input rst,
    output reg [3:0] count
);
    always @(posedge clk or posedge rst) begin
        if (rst)
            count <= 4'b0000; // Reset counter to 0
        else
            count <= count + 1; // Increment counter
    end
endmodule
