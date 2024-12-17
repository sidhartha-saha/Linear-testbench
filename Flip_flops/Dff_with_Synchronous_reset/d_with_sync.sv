// D_Flip_Flop with Synchronous and reset.
// Name : Sidhartha Saha

module d_with_sync(input d, clk, rst,
  				   output reg q);
 
 always@(posedge clk)  
	begin
    	if(!rst) 
			q <= 0;
    	else    
		    q <= d;
  	end

endmodule
