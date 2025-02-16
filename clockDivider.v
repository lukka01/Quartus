module clockDivider (
input clk,
output reg out = 0
);

reg [1:0] counter = 2'b10;
	always @(clk) begin
	
		if (counter == 2'b10) begin 
		out <= ~out;
		counter <= 0;
		end
		
		else begin
		counter <= counter + 1;
		end
		
	end
endmodule


module testbench;
  reg clk;
  wire out;
clockDivider tb(.clk(clk), .out(out));

initial  
  clk = 1'b0;
always #5 clk = ~clk;

endmodule 