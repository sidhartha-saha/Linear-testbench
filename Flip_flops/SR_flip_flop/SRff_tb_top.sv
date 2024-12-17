// linear testbench of SR_Flip_Flop with active low reset.
// Name : Sidhartha Saha
`include"SR_ff.sv"
module SRff_tb_top;
  reg s;
  reg r;
  reg clk = 0;
  reg rst;
  wire q;
  
  SR_ff srff(s,r,clk, rst, q);
  
  always #5 clk = ~clk;
  initial begin
    rst = 0;
    $monitor($time,"ns ||Reset=%b || S = %b || R = %b || --> q=%b",rst, s, r, q);
    #6 rst = 1;
    #6 
     s = 1;
     r = 0;
    #10 
     s = 0;
     r = 0; 
    #10 
     s = 0;
     r = 1;
     #10 
     s = 1;
     r = 1;
    #10
     $finish;

  end
endmodule