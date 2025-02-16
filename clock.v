module clock(
    input clk,
    input reset,
    output reg [3:0] count
);

always @(posedge clk or negedge reset) begin
    if (!reset) begin
        count <= 4'b0000;
    end
    else begin
        count <= count + 1;
    end
end

endmodule

module Testbench;

reg clk;
reg reset;
wire [3:0] count;

clock test(.clk(clk), .reset(reset), .count(count));

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin
    reset = 1;
    #100; reset = 0;
    #200; reset = 1;
    #100; reset = 0;
    #200;

end
endmodule 