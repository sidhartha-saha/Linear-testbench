// linear testbench of D_Flip_Flop with Synchronous reset.
// Name : Sidhartha Saha

`include"d_with_sync.sv"

module sync_tb_top;
  reg d;
  reg clk = 0;
  reg rst;
  wire q;
  
  d_with_sync dut(d, clk, rst, q);
  
  always #5 clk = ~clk;

   initial begin 
    rst = 0;
    d = 0;
    
    #7 rst = 1;
    #7
    d = 1;
    #5
    d = 0;
    #3
    rst = 0;
    #4
    rst = 1;
    #4
    d = 1;
    #50;
    $finish;
  end 
endmodule