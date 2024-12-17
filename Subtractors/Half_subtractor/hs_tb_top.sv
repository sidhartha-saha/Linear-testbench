// Linear testbench of Half_subtractor
// Name : Sidhartha Saha

`include"half_subtractor.sv"

module hs_tb_top();
	reg [1:0]a;
	reg [1:0]b;
	wire [1:0]difference;
    wire borrow;

 half_subtractor dut( .a(a),
				 .b(b),
        	     .difference(difference),
                 .borrow(borrow)
					);

	initial begin
   $monitor($time,"ns || A = %b || B = %b || Difference = %b || Borrow = %b",a,b,difference,borrow);

	a = 2'b00 ; b = 2'b00 ; #5;
	a = 2'b11 ; b = 2'b01 ; #5;
	a = 2'b01 ; b = 2'b11 ; #5;
    a = 2'b00 ; b = 2'b01 ; #5;
	$finish;

	end
endmodule
