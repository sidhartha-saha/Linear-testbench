// 4:1 mux using 2:1 mux
// Name : Sidhartha Saha

module mux2to1(input a,b,s,
				output reg y);

	always@*
	begin
          if(!s)
            y <= a;
          else
            y <= b; 
	end
endmodule

module mux4by2(input A,B,C,D,
				input [1:0]S,
				output Y);
wire y1;
wire y2;

mux2to1 m1(A,B,S[0],y1);
mux2to1 m2(C,D,S[0],y2);
mux2to1 m3(y1,y2,S[1],Y);
endmodule 