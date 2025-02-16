module Adder(input A,B,cin,output S,cout);

assign S = A^B^cin;
assign cout =(A&B)|(cin&(A^B));

endmodule
module test(A,B,cout,S);
input [7:0]A;
input [7:0]B;
output [7:0]cout;
output [7:0]S;

Adder test0(A[0],B[0],cout[0],S[0],cout[0]);
Adder test1(A[1],B[1],cout[0],S[1],cout[1]);
Adder test2(A[2],B[2],cout[1],S[2],cout[2]);
Adder test3(A[3],B[3],cout[2],S[3],cout[3]);
Adder test4(A[4],B[4],cout[3],S[4],cout[4]);
Adder test5(A[5],B[5],cout[4],S[5],cout[5]);
Adder test6(A[6],B[6],cout[5],S[6],cout[6]);
Adder test7(A[7],B[7],cout[6],S[7],cout[7]);
endmodule

module tb;
reg [7:0]A,B;
wire [7:0]cout,S;
test adder(A,B,S,cout);

initial begin 
	A=8'b1011;
	B=8'b0100;
end
endmodule