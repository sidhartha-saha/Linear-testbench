// linear testbench of D_Flip_Flop with Asynchronous and (active low/ active high) reset.
// Name : Sidhartha Saha

`include"d_with_asyn.sv"

module asyn_tb_top;
  reg d;
  reg clk = 0;
  reg rst;
  wire q;
  
  d_with_asyn dut(d, clk, rst, q);
  
  always #5 clk = ~clk;

 /* initial begin // for active low reset
    rst = 0;
    d = 0;
    
    #7 rst = 1;
    #7
    d = 1;
    #5
    d = 0;
    rst = 0;
    #4
    rst = 1;
    #4
    d = 1;
    #50;
    $finish;
  end */

 initial begin // for active high reset
    rst = 1;
    d = 0;
    
    #7 rst = 0;
    #7
    d = 1;
    #5
    d = 0;
    rst = 1;
    #4
    rst = 0;
    #4
    d = 1;
    #30
    rst = 1;
    #20;
    $finish;
  end
  
endmodule
