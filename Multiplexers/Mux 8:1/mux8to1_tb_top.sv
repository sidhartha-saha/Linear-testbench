

`include"mux8to1.sv"

module mux8to1_tb_top;
    reg [7:0]A;
    reg [2:0]S;
    wire Y;

mux8to1 dut( .A(A),
             .S(S),
             .Y(Y)
                  );


	initial begin
	    $monitor($time,"ns || a=%b || s=%b || y=%0d",A,S,Y);
        A = 8'b00000001;  S = 3'b000; #5; 
        A = 8'b00000010;  S = 3'b001; #5; 
        A = 8'b00000100;  S = 3'b010; #5; 
        A = 8'b00001000;  S = 3'b011; #5; 
		A = 8'b00010000;  S = 3'b100; #5; 
        A = 8'b00100000;  S = 3'b101; #5; 
        A = 8'b01000000;  S = 3'b110; #5; 
        A = 8'b10000000;  S = 3'b111; #5; 

        $finish;
	end


endmodule

