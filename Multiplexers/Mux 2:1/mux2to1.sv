// 2:1 mux
// Name : Sidhartha Saha
module mux2to1(input A,B,S,
       output Y);

assign Y = (A&(~S)) | (B&S);
endmodule