// T_Flip_Flop with active low reset.
// Name : Sidhartha Saha

module t_flip_flop(input t,clk,rst,
            output reg q);

always@(posedge clk)
  begin	
   if(rst)
	begin
 	  if(!t) 
       q <= q;
       else
       q <= (~q);
    end
   else
    q <= 0;
  end 

endmodule


