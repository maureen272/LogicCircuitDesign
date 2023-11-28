module decoder_3to8 (
    input wire [2:0] counter,
    output reg COM1, COM2, COM3, COM4, COM5, COM6, COM7, COM8
);

    always @(*) begin
        case (counter)
            3'b000: begin COM1 = 1; COM2 = 0; COM3 = 0; COM4 = 0; COM5 = 0; COM6 = 0; COM7 = 0; COM8 = 0; end
            3'b001: begin COM1 = 0; COM2 = 1; COM3 = 0; COM4 = 0; COM5 = 0; COM6 = 0; COM7 = 0; COM8 = 0; end
            3'b010: begin COM1 = 0; COM2 = 0; COM3 = 1; COM4 = 0; COM5 = 0; COM6 = 0; COM7 = 0; COM8 = 0; end
            3'b011: begin COM1 = 0; COM2 = 0; COM3 = 0; COM4 = 1; COM5 = 0; COM6 = 0; COM7 = 0; COM8 = 0; end
            3'b100: begin COM1 = 0; COM2 = 0; COM3 = 0; COM4 = 0; COM5 = 1; COM6 = 0; COM7 = 0; COM8 = 0; end
            3'b101: begin COM1 = 0; COM2 = 0; COM3 = 0; COM4 = 0; COM5 = 0; COM6 = 1; COM7 = 0; COM8 = 0; end
            3'b110: begin COM1 = 0; COM2 = 0; COM3 = 0; COM4 = 0; COM5 = 0; COM6 = 0; COM7 = 1; COM8 = 0; end
            3'b111: begin COM1 = 0; COM2 = 0; COM3 = 0; COM4 = 0; COM5 = 0; COM6 = 0; COM7 = 0; COM8 = 1; end
            default: begin COM1 = 0; COM2 = 0; COM3 = 0; COM4 = 0; COM5 = 0; COM6 = 0; COM7 = 0; COM8 = 0; end
        endcase
    end
endmodule
