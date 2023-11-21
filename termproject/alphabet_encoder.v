module alphabet_encoder(
    input [3:0] register,
    input [1:0] counter,
    output reg [4:0] alphabet
);

    always @(*) begin
        case ({register, counter})
            6'b001000: alphabet = 5'b00001; // a
            6'b001001: alphabet = 5'b00010; // b
            6'b001010, 
            6'b001011: alphabet = 5'b00011; // c
            6'b001100: alphabet = 5'b00100; // d
            6'b001101: alphabet = 5'b00101; // e
            6'b001110, 
            6'b001111: alphabet = 5'b00110; // f
            6'b010000: alphabet = 5'b00111; // g
            6'b010001: alphabet = 5'b01000; // h
            6'b010010, 
            6'b010011: alphabet = 5'b01001; // i
            6'b010100: alphabet = 5'b01010; // j
            6'b010101: alphabet = 5'b01011; // k
            6'b010110, 
            6'b010111: alphabet = 5'b01100; // l
            6'b011000: alphabet = 5'b01101; // m
            6'b011001: alphabet = 5'b01110; // n
            6'b011010, 
            6'b011011: alphabet = 5'b01111; // o
            6'b011100: alphabet = 5'b10000; // p
            6'b011101: alphabet = 5'b10001; // q
            6'b011110: alphabet = 5'b10010; // r
            6'b011111: alphabet = 5'b10011; // s
            6'b100000: alphabet = 5'b10100; // t
            6'b100001: alphabet = 5'b10101; // u
            6'b100010, 
            6'b100011: alphabet = 5'b10110; // v
            6'b100100: alphabet = 5'b10111; // w
            6'b100101: alphabet = 5'b11000; // x
            6'b100110: alphabet = 5'b11001; // y
            6'b100111: alphabet = 5'b11010; // z
            default: alphabet = 5'b00000; // -
        endcase
    end
endmodule
