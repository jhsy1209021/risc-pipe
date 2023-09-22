module m2_wb_ppreg(
    input clk,
    input nrst,
    input [31:0] dmem_dataout,
    input [31:0] result,
    input [4:0] rd,
    input [2:0] wb_src,
    input [31:0] pc,
    input [15:0] csr_op,
    input [31:0] csr_dataout,
    input [31:0] csr_result,

    output reg [31:0] dmem_dataout_out,
    output reg [31:0] result_out,
    output reg [4:0] rd_out,
    output reg [2:0] wb_src_out,
    output reg [31:0] pc_out,
    output reg [15:0] csr_op_out,
    output reg [31:0] csr_dataout_out,
    output reg [31:0] csr_result_out
);

always@(posedge clk) begin
    if(~nrst) begin
        dmem_dataout_out <= 32'd0;
        result_out <= 32'd0;
        rd_out <= 5'd0;
        wb_src_out <= 3'd0;
        pc_out <= 32'd0;
        csr_op_out <= 16'd0;
        csr_dataout_out <= 32'd0;
        csr_result_out <= 32'd0;
    end

    else begin
        dmem_dataout_out <= dmem_dataout;
        result_out <= result;
        rd_out <= rd;
        wb_src_out <= wb_src;
        pc_out <= pc;
        csr_op_out <= csr_op;
        csr_dataout_out <= csr_dataout;
        csr_result_out <= csr_result;
    end
end

endmodule