// Full_adder by 2 half_adder
// Name : Sidhartha Saha

module half_adder(input [1:0]a, [1:0]b,
                  output [1:0]s, 
                  output c);
assign s = a^b;
assign c =(a&b);

endmodule


module fullbyhalf(input [1:0]A, [1:0]B, [1:0]Cin,
                  output [1:0]Sum,
                  output Carry);
wire [1:0]sum;
wire carry1;
wire carry2;

half_adder a1(A,B,sum,carry1);
half_adder a2(sum,Cin,Sum,carry2);

assign Carry = carry1 | carry2;

endmodule