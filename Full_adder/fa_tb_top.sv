// Linear test bench of falf_adder
// Name : Sidhartha Saha


`include"full_adder.sv"

module fa_tb_top();
	reg [1:0]a;
	reg [1:0]b;
    reg [1:0]Cin;
	wire [2:0]sum;
    wire carry;


 full_adder dut( .a(a),
				 .b(b),
				 .Cin(Cin),
        	     .sum(sum),
                 .carry(carry)
					);

	initial begin
   $monitor($time,"ns || A = %b || B = %b || Cin = %b || Sum = %b || Carry = %b",a,b,Cin,sum,carry);

	a = 2'b00 ; b = 2'b11 ; Cin = 2'b10; #5;
	a = 2'b01 ; b = 2'b11 ; Cin = 2'b10;  #5;
	a = 2'b01 ; b = 2'b10 ; Cin = 2'b10; #5;
	$finish;

	end
endmodule
