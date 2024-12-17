// Half_subtractor
// Name : Sidhartha Saha

module half_subtractor(input [1:0]a, [1:0]b,
                       output [1:0]difference, borrow);
assign difference = a ^ b;
assign borrow = (~a) & b;

endmodule
