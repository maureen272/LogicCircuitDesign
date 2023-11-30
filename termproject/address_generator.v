module address_generator (
	input wire alphabet_found,
	input wire alphabet_not_found,
	input wire game_win,
	input wire game_over,
	input wire clk,
	input wire slow_clk, // Slower clock for index increment
	
	output reg [2:0] address
);

	reg [2:0] register0 [4:0];
	reg [2:0] register1 [4:0];
	reg [2:0] register2 [4:0];
	reg [2:0] register3 [4:0];
	reg triggered = 0;
	reg triggered0 = 0;
	reg triggered1 = 0;
	reg triggered2 = 0;
	reg triggered3 = 0;
	wire [2:0] index; // Wire for connecting to index_generator output

	// Instantiate index_generator
	index_generator index_gen (
	  .triggered(triggered),
	  .slow_clk(slow_clk),
	  .index(index)
	);

	initial begin
		 register0[0] = 3'b001; register0[1] = 3'b010; register0[2] = 3'b011; register0[3] = 3'b101; register0[4] = 3'b000;
		 register1[0] = 3'b001; register1[1] = 3'b010; register1[2] = 3'b011; register1[3] = 3'b000; register1[4] = 3'b000;
		 register2[0] = 3'b100; register2[1] = 3'b000; register2[2] = 3'b000; register2[3] = 3'b000; register2[4] = 3'b000;
		 register3[0] = 3'b100; register3[1] = 3'b100; register3[2] = 3'b100; register3[3] = 3'b100; register3[4] = 3'b000;
	end

always @(posedge clk) begin
    if (triggered == 0) begin
        if(game_win) begin
            triggered <= 1;
            triggered0 <= 1;
        end
        else if(alphabet_found) begin
            triggered <= 1;
            triggered1 <= 1;
        end
        else if(alphabet_not_found) begin
            triggered <= 1;
            triggered2 <= 1;
        end
        else if(game_over) begin
            triggered <= 1;
            triggered3 <= 1;
        end
    end
	  
		if(triggered0)
			 address <= register0[index];
		else if(triggered1)
			 address <= register1[index];
		else if (triggered2)
			 address <= register2[index];
		else if (triggered3)
			 address <= register3[index];
		else
			 address <= 3'b000;
			 
		if(index == 3'b100) begin
			triggered <= 0;
			triggered0 <= 0;
			triggered1 <= 0;
			triggered2 <= 0;
			triggered3 <= 0;
		end
	end
endmodule
