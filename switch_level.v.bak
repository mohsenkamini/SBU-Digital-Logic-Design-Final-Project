module f(out,a,b,c,d);
	output out;
	input a,b,c,d;
	
	wire w_1,w_2,w_3,w_4,w_5,w_6,w_7;
	
	supply1 pwr;
	supply0 gnd;

	pmos(w_1,pwr,~a);
	pmos(w_2,pwr,d);
	pmos(w_3,w_2,a);
	pmos(w_4,w_1,b);
	pmos(out,w_4,c);
	pmos(out,w_1,~d);
	pmos(out,w_2,~b);
	pmos(out,w_3,c);

	nmos(w_6,gnd,a);
	nmos(w_6,gnd,c);
	nmos(w_5,gnd,d);
	nmos(w_5,w_6,~b);
	nmos(w_7,w_5,b);
	nmos(w_7,w_5,c);
	nmos(out,w_5,a);
	nmos(out,w_7,~d);

endmodule
