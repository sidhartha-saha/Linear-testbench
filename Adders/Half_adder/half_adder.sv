// Half_Adder
// Name : Sidhartha Saha

module half_adder(input [1:0]a, [1:0]b,
                  output [2:0]sum, carry);
assign sum = a^b;
assign carry = a&b;

endmodule
