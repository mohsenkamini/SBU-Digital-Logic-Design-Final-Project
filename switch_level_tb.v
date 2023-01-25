`include "switch_level.v"

module switch_level_tb ();

	reg a,b,c,d;
	wire out;
	switch_level switch_levl(out,a,b,c,d);

	initial begin
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
