module full(s, cy, a, b, c);
input (a, b, c);
output(s, cy);
wire(w, x, y);
xor (w, a, b);
xor (s,w,c,);
and(x, w, c);
and(y,a, b);
or (cy, x, y);
endmodule;


module Full;
reg (a, b , c);
wire (s, cy);
full Full(s, cy, a,b, c);

initial
begin
$display(" a b c sum carry ");
$monitor(a, " " , b, " " , c , " ", s,  " ", cy);
a = 0 , b = 0 , c = 0;
#10  c = 1;
#10  b = 1;
#10  b = 1; c = 0; 
#10  c = 1;
#10  a= 1; b = 0; c= 0;
#10  c = 1;
#10  b =1; c= 0;
#10  c = 1;
end
endmodule

