module encoder(Y,A);
input [0:7]Y;
output[0:2]A;
assign A[0] = Y[1] | Y[3] | Y[5] | Y[7], 
       A[1] = Y[2] | Y[4] | Y[6] | Y[7],
		 A[2] = Y[4] | Y[5] | Y[6] | Y[7];		 
endmodule	


module testb;
reg[0:7] Y;
wire[0:2] A;

encoder test(Y,A);

initial begin
Y = 8'h01; #100	 
Y = 8'h02; #100 
Y = 8'h04; #100 
Y = 8'h08; #100
Y = 8'h10; #100
Y = 8'h20; #100 
Y = 8'h40; #100
Y = 8'h80; #100;
end
endmodule
