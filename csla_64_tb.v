module csla_64_tb;
reg [63:0] a,b;
reg cin;
wire [63:0] sum;
wire cout;
 
  csla_64 uut(.a(a), .b(b),.cin(cin),.sum(sum),.cout(cout));
 
initial begin
  a=0; b=0; cin=0;
  #10 a=63'd2; b=63'd2; cin=1'd1;
  #10 a=63'd2; b=63'd4; cin=1'd1;
  #10 a=63'd100; b=63'd0; cin=1'd0;
  #10 a=63'd1234567890; b=63'd11111111111111; cin=1'd1;
  #10 a=63'd1234567890; b=63'd111123452; cin=1'd1;
  $finish();
end
 
initial
  $monitor( "A=%d, B=%d, Cin= %d, Sum=%d, Cout=%d", a,b,cin,sum,cout);
endmodule
