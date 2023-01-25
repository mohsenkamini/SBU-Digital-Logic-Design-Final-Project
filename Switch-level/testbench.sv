// Code your testbench here
// or browse Examples
//`include "switch_level.v"

module f_tb ();

	reg a,b,c,d;
	wire out;
	f f(out,a,b,c,d);

	initial begin
      
    	$dumpfile("dump.vcd");
   	 	$dumpvars(1);
    
		a=0;
		b=0;
		c=0;
		d=0;
		#20;

		a=0;
		b=0;
		c=0;
		d=1;
		#20;

		a=0;
		b=0;
		c=1;
		d=0;
		#20;

		a=0;
		b=0;
		c=1;
		d=1;
		#20;

		a=0;
		b=1;
		c=0;
		d=0;
		#20;


		a=0;
		b=1;
		c=0;
		d=1;
		#20;

		a=0;
		b=1;
		c=1;
		d=0;
		#20;

		a=0;
		b=1;
		c=1;
		d=1;
		#20;

		a=1;
		b=0;
		c=0;
		d=0;
		#20;

		a=1;
		b=0;
		c=0;
		d=1;
		#20;


		a=1;
		b=0;
		c=1;
		d=0;
		#20;

		a=1;
		b=0;
		c=1;
		d=1;
		#20;

		a=1;
		b=1;
		c=0;
		d=0;
		#20;

		a=1;
		b=1;
		c=0;
		d=1;
		#20;


		a=1;
		b=1;
		c=1;
		d=0;
		#20;

		a=1;
		b=1;
		c=1;
		d=1;
		#20;

		a=0;
		b=0;
		c=0;
		d=0;
		#20;
	end
endmodule
