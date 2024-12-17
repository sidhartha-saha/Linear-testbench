// Linear test bench of full_adder using 2 half_adder
// Name : Sidhartha Saha

`include"fullbyhalf.sv"

module fbyh_tb_top();
	reg [1:0]A;
	reg [1:0]B;
    reg [1:0]Cin;
	wire [1:0]Sum;
    wire Carry;


 fullbyhalf dut( .A(A),
				 .B(B),
				 .Cin(Cin),
        	     .Sum(Sum),
                 .Carry(Carry)
					);

	initial begin
   $monitor($time,"ns || A = %b || B = %b || Cin = %b || Sum = %b || Carry = %b",A,B,Cin,Sum,Carry);

	A = 2'b00 ; B = 2'b11 ; Cin = 2'b10; #5;
	A = 2'b01 ; B = 2'b11 ; Cin = 2'b10; #5;
	A = 2'b01 ; B = 2'b10 ; Cin = 2'b10; #5;
	$finish;

	end
endmodule