// D_Flip_Flop
// Name : Sidhartha Saha


module d_flip_flop(input d,clk,
                   output reg q);
always@(posedge clk)
	begin
     q <= d;
	end
endmodule
