module read_aligner(
    input [4:0] mem_op,
    input [31:0] dataout,
    input [31:0] addr,

    output reg [31:0] aligned_dataout
);
reg [7:0] read_part_byte;
reg [15:0] read_part_half;

always@(*) begin
    unique case(addr[1:0])
        2'b00:
            read_part_byte = dataout[7:0];
        2'b01:
            read_part_byte = dataout[15:8];
        2'b10:
            read_part_byte = dataout[23:16];
        2'b11:
            read_part_byte = dataout[31:24];
        default:
            read_part_byte = 8'd0;
    endcase
end

always@(*) begin
    unique case(addr[1:0])
        2'b00:
            read_part_half= dataout[15:0];
        2'b01:
            read_part_half = dataout[23:8];
        2'b10:
            read_part_half = dataout[31:16];
        default:
            read_part_half = 16'd0;
    endcase
end

always@(*) begin
    case(mem_op[1:0])
        `MEM_BYTE:
            aligned_dataout = (mem_op[2] == `MEM_SIGNED) ? { {24{read_part_byte[7]}}, read_part_byte[7:0] } : { 24'd0, read_part_byte[7:0] };
        `MEM_HALF:
            aligned_dataout = (mem_op[2] == `MEM_SIGNED) ? { {16{read_part_half[15]}}, read_part_half[15:0] } : { 16'd0, read_part_half[15:0] };
        `MEM_WORD:
            aligned_dataout = dataout;
        
        default:
            aligned_dataout = 32'd0;
    endcase
end

endmodule