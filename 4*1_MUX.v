module mux ( input [7:0]a,b,c,d, 
input s0, s1,
output [7:0]dout); 
assign dout = s1 ? (s0 ? d : c) : (s0 ? b : a); 
endmodule
