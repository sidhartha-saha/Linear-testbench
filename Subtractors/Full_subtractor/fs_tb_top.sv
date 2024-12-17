// Linear testbench of full_subtractor
// Name : Sidhartha Saha

`include"full_subtractor.sv"

module fs_tb_top();
	reg [1:0]a;
	reg [1:0]b;
    reg [1:0]bin;
	wire [1:0]difference;
    wire borrow;

 full_subtractor dut( .a(a),
				      .b(b),
                      .bin(bin),
        	          .difference(difference),
                      .borrow(borrow)
					   );

	initial begin
   $monitor($time,"ns || A = %b || B = %b || Bin = %b || Difference = %b || Borrow = %b",a,b,bin,difference,borrow);

	a = 2'b00 ; b = 2'b00 ; bin =2'b00 ; #5;
	a = 2'b00 ; b = 2'b00 ; bin =2'b01 ; #5;
	a = 2'b00 ; b = 2'b01 ; bin =2'b00 ; #5;
    a = 2'b00 ; b = 2'b01 ; bin =2'b01 ; #5;
    a = 2'b01 ; b = 2'b00 ; bin =2'b00 ; #5;
	a = 2'b01 ; b = 2'b00 ; bin =2'b01 ; #5;
	a = 2'b01 ; b = 2'b01 ; bin =2'b00 ; #5;
    a = 2'b01 ; b = 2'b01 ; bin =2'b01 ; #5;
	$finish;

	end
endmodule
