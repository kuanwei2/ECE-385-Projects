module mux2_1 #(parameter bits = 16) 
					(input logic [bits-1:0] in1, in2,
					 input logic select,
					 output logic [bits-1:0] out);
	always_comb begin
		if(select)
			out = in1;
		else
			out = in2;
	end
	
endmodule 
//2-1 16 bit
//2-1 3 bit





module mux4_1 #(parameter bits = 16) 
					(input logic [bits-1:0] in1, in2, in3, in4,
					 input logic [1:0]select,
					 output logic [bits-1:0] out);
	always_comb begin
		if(select == 2'b00)
			out = in1;
		else if(select == 2'b01)
			out = in2;
		else if(select == 2'b10)
			out = in3;
		else
			out = in4;
	end
	
endmodule

//4-1 16 bit

module mux16_1 #(parameter bits = 16) 
					(input logic [bits-1:0] in1, in2, in3, in4,
					 input logic [3:0]select,
					 output logic [bits-1:0] out);
	always_comb begin
		if(select == 4'b0001)
			out = in4;
		else if(select == 4'b0010)
			out = in3;
		else if(select == 4'b0100)
			out = in2;
		else if(select == 4'b1000)
			out = in1;
		else
			out = 16'bXXXXXXXXXXXXXXXX;
	end
	
endmodule