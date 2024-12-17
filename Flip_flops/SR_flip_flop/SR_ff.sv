// SR_Flip_Flop with active low reset.
// Name : Sidhartha Saha
module SR_ff(input s,r,clk, rst,
 			 output reg q );
  
  always@(posedge clk) 
  begin 
    if(!rst)
      q <= 0;
    else begin
      case({s,r})
        2'b00: q <= q;    // No change
        2'b01: q <= 1'b0; // reset
        2'b10: q <= 1'b1; // set
        2'b11: q <= 1'bx; // invalid 
      endcase
    end
  end
endmodule
