module read_aligner(
    input [4:0] mem_op,
    input [31:0] dataout,

    output reg [31:0] aligned_dataout
);

always@(*) begin
    case(mem_op[1:0])
        `MEM_BYTE:
            aligned_dataout = (mem_op[2] == `MEM_SIGNED) ? { {24{dataout[7]}}, dataout[7:0] } : { 24'd0, dataout[7:0] };
        `MEM_HALF:
            aligned_dataout = (mem_op[2] == `MEM_SIGNED) ? { {16{dataout[15]}}, dataout[15:0] } : { 16'd0, dataout[15:0] };
        `MEM_WORD:
            aligned_dataout = dataout;
        
        default:
            aligned_dataout = 32'd0;
    endcase
end

endmodule