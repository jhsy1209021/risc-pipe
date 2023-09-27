module mmu(
    input [4:0] mem_op,
    input [31:0] store_data,
    input [31:0] addr,

    output [13:0] addrin,
    output [31:0] datain,
    output reg [3:0] wen
);

assign addrin = addr[13:0];
assign datain = store_data;

always@(*) begin
    if(mem_op[4:3] == `MEM_WRITE) begin
        unique case(mem_op[1:0])
            `MEM_BYTE:
                wen = 4'b1110;
            `MEM_HALF:
                wen = 4'b1100;
            `MEM_WORD:
                wen = 4'b0000;
            default:
                wen = 4'b1111;
        endcase
    end

    else
        wen = 4'b1111;
end
endmodule