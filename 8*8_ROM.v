module rom(clk,addr,data_out,en);
input clk,en;
input [2:0] addr;
output reg [7:0] data_out;
reg [7:0] rom [0:7];
initial begin 
data_out = 8'b00000000; 
end
always @ (addr)
case (addr)
3'd0 : rom[addr] = 8'b00000001;
3'd1 : rom[addr] = 8'b00000010;
3'd2 : rom[addr] = 8'b00000011;
3'd3 : rom[addr] = 8'b00000100;
3'd4 : rom[addr] = 8'b00000101;
3'd5 : rom[addr] = 8'b00000110;
3'd6 : rom[addr] = 8'b00000111;
3'd7 : rom[addr] = 8'b00001000;
default : rom[addr] = 8'b0000000;
endcase
always@(posedge clk)
begin
if(en)begin
data_out <= rom[addr];
end else
data_out <= data_out;
end
endmodule
