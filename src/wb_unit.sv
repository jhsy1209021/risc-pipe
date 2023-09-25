module wb_unit(
    input [2:0] wb_src,
    input [4:0] rd,
    input [31:0] dmem_dataout,
    input [31:0] result,
    input [31:0] csr_dataout,
    
    output reg wen,
    output [4:0] reg_addr,
    output reg [31:0] rdata
);

assign reg_addr = rd;
assign wen = wb_src[2];

always@(*) begin
    case(wb_src[1:0])
        `WB_DATAMEM: begin
            rdata = dmem_dataout;
        end

        `WB_RESULT: begin
            rdata = result;
        end

        `WB_CSR_DATAOUT: begin
            rdata = csr_dataout;
        end

        default: begin
            rdata = result;
        end
    endcase
end

endmodule