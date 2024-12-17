// Full_subtractor
// Name : Sidhartha Saha

module full_subtractor(input [1:0]a, [1:0]b, [1:0]bin,
                       output [1:0]difference, 
                       output borrow);

assign difference = a ^ b ^ bin;
assign borrow = ((~(a ^ b)) & bin) |( (~a) & b);

endmodule