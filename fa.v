module Full_Adder(x,y,z,sum,carry);

	input x,y,z;
	output sum,carry;
	
	Half_Adder ha1(x,y,is,ic);
	Half_Adder ha2(is,z,sum,ic2);
	assign carry=ic2|ic;
endmodule
