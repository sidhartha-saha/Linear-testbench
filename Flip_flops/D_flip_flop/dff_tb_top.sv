// linear testbench of D_Flip_Flop
// Name : Sidhartha Saha

`include"d_flip_flop.sv"
module dff_tb_top;
	reg d;
	reg clk=0;
	wire q;

d_flip_flop dut( .d(d),
				 .clk(clk),
				 .q(q)
                  );

  always #5 clk = ~clk;

 initial begin
 d = 0;
 #4;
 d = 1;
 #4;
 d = 0;
 #9;
 d = 1;
 #7;
 d = 0;
 #50;
 $finish;
 end
endmodule
