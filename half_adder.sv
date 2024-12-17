// Half_Adder
// Name : Sidhartha Saha

module half_adder(input [1:0]a, [1:0]b,
                  output [2:0]sum, carry);
assign sum = a^b;
assign carry = a&b;

endmodule

module ha_tb_top();
	reg [1:0]a;
	reg [1:0]b;
	wire [2:0]sum;
  wire carry;

 half_adder dut( .a(a),
				 .b(b),
        	     .sum(sum),
                 .carry(carry)
					);

	initial begin
   $monitor($time,"ns || A = %b || B = %b || Sum = %b || Carry = %b",a,b,sum,carry);

	a = 2'b00 ; b = 2'b11 ; #5;
	a = 2'b01 ; b = 2'b11 ; #5;
	a = 2'b01 ; b = 2'b10 ; #5;
	$finish;

	end
endmodule
