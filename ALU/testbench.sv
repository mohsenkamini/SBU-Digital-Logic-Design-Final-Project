module six_bit_signed_ALU_tb ();
  
  
  reg [5:0]a;
  reg [5:0]b;
  reg [1:0]op;

  wire [5:0]s;
  
  six_bit_signed_ALU six_bit_signed_ALU(s[5:0],a[5:0],b[5:0],op[1:0]);
  
  initial begin
  $dumpfile("dump.vcd");
  $dumpvars;
  end
  
  initial begin
    
    $dumpfile("dump.vcd");
   	$dumpvars;
    
    // s[5] & a[5] & b[5] & op[1] are the MSBs
	    
    op=0;
    a=6'b101010;
    b=6'b010101;
    //output should be 110010
    #20;
        
    op=1;
    a=5;
    b=6;
    
    #20;
    op=2;
    a=5;
    b=6;
    
    #20;
    op=3;
    a=5;
    b=4;
    //output=6
    #20;
    op=3;
    a=4;
    b=15;
    //output=6
    #20;
    
  end
endmodule
  