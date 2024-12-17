// 8:1 mux using 2:1 mux
// Name : Sidhartha Saha

module mux2to1(input a,b,s,
				output reg y);

assign y = (s)? b:a;
endmodule

module mux8by2(input [7:0]A,
				input [2:0]S,
				output Y);
wire [5:0]y;

mux2to1 m1(A[0],A[1],S[0],y[0]);
mux2to1 m2(A[2],A[3],S[0],y[1]);
mux2to1 m3(A[4],A[5],S[0],y[2]);
mux2to1 m4(A[6],A[7],S[0],y[3]);

mux2to1 m5(y[0],y[1],S[1],y[4]);
mux2to1 m6(y[2],y[3],S[1],y[5]);

mux2to1 m7(y[4],y[5],S[2],Y);

endmodule 