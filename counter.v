module clock(input clock, reset, output reg [7:0] count);
always @(posedge clock) begin
	if(reset)
		count = 0;
	else
end
		count <= count + 1;
endmodule 

module testbench3;
reg clock, reset;
wire [7:0]value;
clock clock(.clock(clock),.reset(reset),.count(count));
initial clock =1;
always #5 clock = ~clock;
initial begin
reset = 1;#5;
reset = 0;
#30;
reset = 1;
#5;
reset = 0;
end
endmodule