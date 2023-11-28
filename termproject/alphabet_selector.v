module alphabet_selector (
    input wire [4:0] alphabet_0, alphabet_1, alphabet_2, alphabet_3, alphabet_4, alphabet_5, alphabet_6, alphabet_7,
    input wire is_correct_0, is_correct_1, is_correct_2, is_correct_3, is_correct_4, is_correct_5, is_correct_6, is_correct_7,
    input wire mode,
    input wire [2:0] counter,
    output reg [4:0] output_alphabet
);

    wire [4:0] alphabet [7:0];
    assign alphabet[0] = alphabet_0;
    assign alphabet[1] = alphabet_1;
    assign alphabet[2] = alphabet_2;
    assign alphabet[3] = alphabet_3;
    assign alphabet[4] = alphabet_4;
    assign alphabet[5] = alphabet_5;
    assign alphabet[6] = alphabet_6;
    assign alphabet[7] = alphabet_7;

    wire is_correct [7:0];
    assign is_correct[0] = is_correct_0;
    assign is_correct[1] = is_correct_1;
    assign is_correct[2] = is_correct_2;
    assign is_correct[3] = is_correct_3;
    assign is_correct[4] = is_correct_4;
    assign is_correct[5] = is_correct_5;
    assign is_correct[6] = is_correct_6;
    assign is_correct[7] = is_correct_7;

    always @(*) begin
        if(mode == 0) 
            output_alphabet = alphabet[counter];
        else if(mode == 1) begin
            if(is_correct[counter] == 0)
                output_alphabet = 5'b11011;
            else
                output_alphabet = alphabet[counter];
        end
    end
endmodule
