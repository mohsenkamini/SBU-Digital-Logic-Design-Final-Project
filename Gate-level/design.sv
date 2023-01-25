// Code your design here
module four_bit_signed_adder_with_ov(s[3:0],ov,cout,a[3:0],b[3:0]);
  output	[3:0]s;
  output		 ov;
  output		 cout;

  input		[3:0]a;
  input		[3:0]b;
  
  wire w_1,w_2,w_3,w_4,w_5,w_6,w_7,w_8,w_9,w_10,w_11,w_12,w_13,w_14;
  wire c1,c2,c3;

  

  xor xor_s0(s[0],a[0],b[0]);
  and and_c1(c1,a[0],b[0]);
  
  xor xor_s1(s[1],a[1],b[1],c1);
  and and_w1(w_1,a[1],c1);
  and and_w2(w_2,b[1],c1);
  and and_w3(w_3,a[1],b[1]);
  or or_c2(c2,w_1,w_2,w_3);
  
  
  xor xor_s2(s[2],a[2],b[2],c2);
  and and_w4(w_4,a[2],c2);
  and and_w5(w_5,b[2],c2);
  and and_w6(w_6,a[2],b[2]);
  or or_c3(c3,w_4,w_5,w_6);
  
  
  
  xor xor_s3(s[3],a[3],b[3],c3);
  and and_w7(w_7,a[3],c3);
  and and_w8(w_8,b[3],c3);
  and and_w9(w_9,a[3],b[3]);
  or or_cout(cout,w_7,w_8,w_9);
  
  // overflow detector
  not not_s3(w_10,s[3]);
  not not_b3(w_11,b[3]);
  not not_a3(w_12,a[3]);
  and and_w13(w_13,a[3],b[3],w_10);
  and and_w14(w_14,w_12,w_11,s[3]);
  or or_ov(ov,w_13,w_14);
  

endmodule

