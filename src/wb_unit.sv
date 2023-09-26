module wb_unit(
    input [2:0] wb_src,
    input [4:0] rd,
    input [31:0] dmem_dataout,
    input [31:0] result,
    input [31:0] csr_dataout,
    
    output reg wen,
    output [4:0] waddr,
    output reg [31:0] wdata
);

assign waddr = rd;
assign wen = wb_src[2];

always@(*) begin
    case(wb_src[1:0])
        `WB_DATAMEM: begin
            wdata = dmem_dataout;
        end

        `WB_RESULT: begin
            wdata = result;
        end

        `WB_CSR_DATAOUT: begin
            wdata = csr_dataout;
        end

        default: begin
            wdata = result;
        end
    endcase
end

endmodule