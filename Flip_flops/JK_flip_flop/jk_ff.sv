// JK_Flip_Flop with active low reset.
// Name : Sidhartha Saha

module jk_ff(input j,k,clk, rst,
 			 output reg q );
  
  always@(posedge clk) 
  begin 
    if(!rst)
      q <= 0;
    else begin
      case({j,k})
        2'b00: q <= q;    // No change
        2'b01: q <= 1'b0; // reset
        2'b10: q <= 1'b1; // set
        2'b11: q <= ~q;   // toggle 
      endcase
    end
  end
endmodule