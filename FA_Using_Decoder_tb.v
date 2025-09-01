module tb;
reg a,b,cin;
wire sum,cout;
FA f1 (a,b,cin,sum,cout);
initial 
begin 
$monitor("a=%b b=%b Cin=%b  Sum= %b out=%b",a,b,cin, sum,cout);
a=1'b0;b=1'b0;cin=1'b0;
#5a=1'b0;b=1'b0;cin=1'b1;
#5 a=1'b0;b=1'b1;cin=1'b0;
#5 a=1'b0;b=1'b1;cin=1'b0;
#5 a=1'b0;b=1'b1;cin=1'b1;
#5 a=1'b1;b=1'b0;cin=1'b0;
#5 a=1'b1;b=1'b0;cin=1'b1;
#5 a=1'b1;b=1'b1;cin=1'b0;
#5 a=1'b1;b=1'b1;cin=1'b1;
end 
endmodule