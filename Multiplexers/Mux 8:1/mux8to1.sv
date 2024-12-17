// 8:1 mux 
// Name : Sidhartha Saha

module mux8to1(input [7:0]A,
				input [2:0]S,
				output reg Y);
always@*
	begin
		case(S)
	 	 3'b000 : Y <= A[0];
		 3'b001 : Y <= A[1];
		 3'b010 : Y <= A[2];
		 3'b011 : Y <= A[3];
		 3'b100 : Y <= A[4];
		 3'b101 : Y <= A[5];
		 3'b110 : Y <= A[6];
		 3'b111 : Y <= A[7];
		endcase
	end

endmodule 