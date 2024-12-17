// Ripple_Carry_Adder
// Name : Sidhartha Saha


module fa(input a, b,cin,
          output sum,carry);

assign sum = a^b^cin;
assign carry = ((a^b)&cin) | (a&b);

endmodule

module ripple_carry_adder(input [3:0]A,[3:0]B,
                          input Cin,
                          output [3:0]Sum,
                          output [3:0]carry);

fa f1( A[0], B[0], Cin, Sum[0], carry[0]);
fa f2( A[1], B[1], carry[0],Sum[1], carry[1]);
fa f3( A[2], B[2], carry[1],Sum[2], carry[2]);
fa f4( A[3], B[3], carry[2],Sum[3], carry[3]);

endmodule
