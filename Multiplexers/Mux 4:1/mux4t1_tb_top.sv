// Linear test bench of 4:1 mux 
// Name : Sidhartha Saha


module mux4t1_tb_top;
	reg a;
	reg b;
	reg c;
	reg d;
	reg [1:0]sel;
	wire y;

	mux4to1 dut( .a(a),
                 .b(b),
                 .c(c),
                 .d(d),
                 .s(sel),
                 .y(y)           
                  );
	
	initial begin
	    $monitor($time,"ns || a=%0d || b=%0d || c=%0d || d=%0d || s=%0b || y=%0d",a,b,c,d,sel,y);
        a = 1 ; b = 0; c = 0; d = 0;  sel = 2'b00; #10; 
        a = 0 ; b = 1; c = 0; d = 0;  sel = 2'b01; #10; 
        a = 0 ; b = 0; c = 1; d = 0;  sel = 2'b10; #10; 
        a = 0 ; b = 0; c = 0; d = 1;  sel = 2'b11; #10; 

        $finish;
	end



endmodule 
