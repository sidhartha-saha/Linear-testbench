// linear testbench of JK_Flip_Flop with active low reset.
// Name : Sidhartha Saha

`include"jk_ff.sv"
module jkff_tb_top;
  reg j;
  reg k;
  reg clk = 0;
  reg rst;
  wire q;
  
  jk_ff jkff(j,k,clk, rst, q);
  
  always #5 clk = ~clk;
  initial begin
    rst = 0;
    $monitor($time,"ns ||Reset=%b || J = %b || K = %b || --> q=%b",rst, j, k, q);
    #6 rst = 1;
    #7 
     j = 1;
     k = 0;
    #10 
     j = 0;
     k = 0; 
    #10 
     j = 0;
     k = 1;
     #10 
     j = 1;
     k = 1;
    #10
     $finish;

  end
endmodule