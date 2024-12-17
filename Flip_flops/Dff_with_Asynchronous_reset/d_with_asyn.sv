// D_Flip_Flop with Asynchronous and (active low/ active high) reset.
// Name : Sidhartha Saha


module d_with_asyn(input d, clk, rst,
  				   output reg q);
/* or  
 always@(posedge clk or negedge rst) // for active low reset
	begin
    	if(!rst) 
			q <= 0;
    	else    
		    q <= d;
  	end

*/ 
always@(posedge clk or posedge rst) // for active high reset
	begin
    	if(rst) 
			q <= 0;
    	else    
		    q <= d;
  	end

 
endmodule
