module alphabet_to_segment(
    input [4:0] alphabet,
    output reg a, b, c, d, e, f, g
);

    always @(*) begin
        case (alphabet)
            5'b00000: begin a = 0; b = 0; c = 0; d = 0; e = 0; f = 0; g = 1; end // hypen
            5'b00001: begin a = 1; b = 1; c = 1; d = 0; e = 1; f = 1; g = 1; end // a
            5'b00010: begin a = 0; b = 0; c = 1; d = 1; e = 1; f = 1; g = 1; end // b
            5'b00011: begin a = 0; b = 0; c = 0; d = 1; e = 1; f = 0; g = 1; end // c
            5'b00100: begin a = 0; b = 1; c = 1; d = 1; e = 1; f = 0; g = 1; end // d
            5'b00101: begin a = 1; b = 0; c = 0; d = 1; e = 1; f = 1; g = 1; end // e
            5'b00110: begin a = 1; b = 0; c = 0; d = 0; e = 1; f = 1; g = 1; end // f
            5'b00111: begin a = 1; b = 0; c = 1; d = 1; e = 1; f = 1; g = 0; end // g
            5'b01000: begin a = 0; b = 1; c = 1; d = 0; e = 1; f = 1; g = 1; end // h
            5'b01001: begin a = 0; b = 0; c = 0; d = 0; e = 1; f = 1; g = 0; end // i
            5'b01010: begin a = 0; b = 1; c = 1; d = 1; e = 1; f = 0; g = 0; end // j
            5'b01011: begin a = 0; b = 1; c = 0; d = 1; e = 1; f = 1; g = 1; end // k
            5'b01100: begin a = 0; b = 0; c = 0; d = 1; e = 1; f = 1; g = 0; end // l
            5'b01101: begin a = 1; b = 0; c = 1; d = 0; e = 1; f = 0; g = 1; end // m
            5'b01110: begin a = 0; b = 0; c = 1; d = 0; e = 1; f = 0; g = 1; end // n
            5'b01111: begin a = 0; b = 0; c = 1; d = 1; e = 1; f = 0; g = 1; end // o
            5'b10000: begin a = 1; b = 1; c = 0; d = 0; e = 1; f = 1; g = 1; end // p
            5'b10001: begin a = 1; b = 1; c = 1; d = 0; e = 0; f = 1; g = 1; end // q
            5'b10010: begin a = 0; b = 0; c = 0; d = 0; e = 1; f = 0; g = 1; end // r
            5'b10011: begin a = 1; b = 0; c = 1; d = 1; e = 0; f = 1; g = 1; end // s
            5'b10100: begin a = 0; b = 0; c = 0; d = 1; e = 1; f = 1; g = 1; end // t
            5'b10101: begin a = 0; b = 0; c = 1; d = 1; e = 1; f = 0; g = 0; end // u
            5'b10110: begin a = 0; b = 1; c = 1; d = 1; e = 1; f = 1; g = 1; end // v
            5'b10111: begin a = 0; b = 1; c = 0; d = 1; e = 0; f = 1; g = 1; end // w
            5'b11000: begin a = 0; b = 1; c = 1; d = 0; e = 1; f = 1; g = 0; end // x
            5'b11001: begin a = 0; b = 1; c = 1; d = 1; e = 0; f = 1; g = 1; end // y
            5'b11010: begin a = 1; b = 0; c = 0; d = 1; e = 0; f = 0; g = 1; end // z
            5'b11011: begin a = 0; b = 0; c = 0; d = 1; e = 0; f = 0; g = 0; end // underbar
            default: begin a = 0; b = 0; c = 0; d = 0; e = 0; f = 0; g = 0; end
        endcase
    end
endmodule
