module index_generator (
	input wire triggered,
	input wire slow_clk, // Slower clock for index increment
	output reg [2:0] index
);
	
	initial begin
		index = 3'b000;
	end
	
	always @(posedge slow_clk) begin
		if(index < 3'b100 && triggered)
			index <= index + 1'b1;
		else begin
			index <= 3'b000;
		end
	end
endmodule
