module FA(a,b,cin,sum,cout);
input a,b,cin;
output sum,cout;
wire [2:0]vec;
reg[7:0] out;
assign vec={a,b,cin};
always @(vec)
case(vec)
0:out=8'b00000001;
1:out=8'b00000010;
2:out=8'b00000100;
3:out=8'b00001000;
4:out=8'b00010000;
5:out=8'b00100000;
6:out=8'b01000000;
7:out=8'b10000000;
default: out=8'b0;
endcase
assign sum= out[1]|out[2]|out[4]|out[7];
assign cout= out[3]|out[5]|out[6]|out[7];
endmodule 