
// Linear test bench of 2:1 mux
// Name : Sidhartha Saha
`include"mux2to1.sv"
module tb_top;

  reg a;
  reg b;
  reg sel;
  wire Y;

 mux2to1 DUT( .A(a),
			  .B(b),
    		  .S(sel),
              .Y(Y)
              );
  initial begin
      $monitor($time,"ns || a=%0b || b=%0b || S=%0b || Y = %0b",a,b,sel,Y);
        a = 0; b = 0; sel = 0; #10; 
        a = 0; b = 1; sel = 0; #10; 
        a = 1; b = 0; sel = 0; #10; 
        a = 1; b = 1; sel = 0; #10; 

        a = 0; b = 0; sel = 1; #10; 
        a = 0; b = 1; sel = 1; #10; 
        a = 1; b = 0; sel = 1; #10; 
        a = 1; b = 1; sel = 1; #10; 
  $finish;
  end
endmodule 
