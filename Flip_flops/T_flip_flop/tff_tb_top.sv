// linear testbench of T_Flip_Flop with active low reset.
// Name : Sidhartha Saha

`include"t_flip_flop.sv"

module tff_tb_top;
  reg t;
  reg clk = 0;
  reg rst;
  wire q;
  
  t_flip_flop tff(t,clk, rst, q);
  
  always #5 clk = ~clk;
  initial begin
 $monitor($time,"ns || Reset= %b || T = %b --> q=%b", rst,t, q);
    rst = 0;
    t = 0;
    #6;
    rst = 1;
    #8;
    t = 1;
    #10;
    t = 1;
    #10;
    t = 1;
    #10;
    t = 0;
    #10;
    t = 0;
   #10;
  $finish;

  end
    
  

endmodule

