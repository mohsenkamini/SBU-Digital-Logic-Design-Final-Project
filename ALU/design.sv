// Code your design here
module six_bit_signed_ALU(s[5:0],a[5:0],b[5:0],op[1:0]);
  output	[5:0]s;
  
  input		[5:0]a;
  input		[5:0]b;
  input		[1:0]op;
  
  wire [5:0]temp=(a+a-b);
  assign s = op[1] ? ( op[0] ? ( (temp[5]==0)?(temp):(-temp) ) : (-b) ) : ( op[0] ? (a+b+b+b) : ((a<<<2) + (b>>>1)) );
  
endmodule

