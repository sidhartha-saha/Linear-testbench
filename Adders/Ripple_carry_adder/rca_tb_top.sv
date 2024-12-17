// Linear test bench of Ripple_Carry_Adder
// Name : Sidhartha Saha


`include"ripple_carry_adder.sv"
module rca_tb_top;
  wire [3:0] S;
  wire [3:0]Cout;
  reg [3:0] A; 
  reg [3:0] B;
  reg Cin;
  wire[4:0] addition;
  
  ripple_carry_adder rca(A, B, Cin, S, Cout);
  assign addition = {Cout[3], S};
  
  initial begin
    $monitor("A = %b: B = %b, Cin = %b --> S = %b, Cout[3] = %b, Addition = %0d", A, B, Cin, S, Cout[3], addition);
    A = 1; B = 0; Cin = 0; #5;
    A = 4; B = 4; Cin = 1; #5;
    A = 4'ha; B = 4'h7; Cin = 0; #5;
    A = 4'b1010; B = 4'b1100; Cin = 1; #5;
    $finish;
  end
  
endmodule