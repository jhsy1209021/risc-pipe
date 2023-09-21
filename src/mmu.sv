`include "mmu.svh"

module mmu(
    input [4:0] mem_op,
    input [31:0] store_data,
    input [31:0] addr,

    output [31:0] addrin,
    output [31:0] datain,
    output [3:0] wen
);

assign addrin = addr;
assign datain = store_data;

always@(*) begin
    if(mem_op[4:3] == `MEM_WRITE) begin
        unique case(mem_op[1:0])
            `MEM_BYTE:
                wen = 4'b0001;
            `MEM_HALF:
                wen = 4'b0011;
            `MEM_WORD:
                wen = 4'b1111;
            default:
                wen = 4'b0000;
        endcase
    end

    else
        wen = 4'b0000;
end
endmodule