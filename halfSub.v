module halfSub(A,B,Bin,D,Bout);
input [0:2] A,B,Bin;
output [0:1] D, Bout;
assign D = A ^ (B^Bin);
assign Bout =  A & ~(B^Bin) | ~B & Bin;
endmodule

module testbench; 
reg [0:2] A,B,Bin; 
wire [0:1] D, Bout;

halfSub test(A,B,Bin,D,Bout);

initial begin 
A = 01; B = 10; Bin = 11; #100;
A = 01; B = 01; Bin = 00; #100;
A = 00; B = 11; Bin = 10; #100;
A = 11; B = 01; Bin = 01; #100;
A = 10; B = 11; Bin = 00;
end 
endmodule 