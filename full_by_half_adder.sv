// Full_adder by 2 half_adder
// Name : Sidhartha Saha

module half_adder(input [1:0]a, [1:0]b,
                  output [1:0]s, 
                  output c);
assign s = a^b;
assign c =(a&b);

endmodule


module fullbyhalf(input [1:0]A, [1:0]B, [1:0]Cin,
                  output [1:0]Sum,
                  output Carry);
wire [1:0]sum;
wire carry1;
wire carry2;

half_adder a1(A,B,sum,carry1);
half_adder a2(sum,Cin,Sum,carry2);

assign Carry = carry1 | carry2;

endmodule


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
