// Full_adder
// Name : Sidhartha Saha


module full_adder(input [1:0]a, [1:0]b, [1:0]Cin,
                  output [2:0]sum, carry);
assign sum = a^b^Cin;
assign carry = ((a^b)&Cin)|(a&b);

endmodule
