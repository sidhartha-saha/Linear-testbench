// Linear test bench of 4:1 mux using 2:1 mux
// Name : Sidhartha Saha

`include"mux4by2.sv"

module mux4by2_tb_top;
    reg A;
    reg B;
    reg C;
    reg D;
    reg [1:0]S;
    wire Y;

mux4by2 dut( .A(A),
             .B(B),
             .C(C),
             .D(D),
             .S(S),
             .Y(Y)
                  );


	initial begin
	    $monitor($time,"ns || a=%0d || b=%0d || c=%0d || d=%0d || s=%b || y=%0d",A,B,C,D,S,Y);
        A = 1 ; B = 0; C = 0; D = 0;  S = 2'b00; #5; 
        A = 0 ; B = 1; C = 0; D = 0;  S = 2'b01; #5; 
        A = 0 ; B = 0; C = 1; D = 0;  S = 2'b10; #5; 
        A = 0 ; B = 0; C = 0; D = 1;  S = 2'b11; #5; 

        $finish;
	end


endmodule
