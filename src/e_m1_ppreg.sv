module e_m1_ppreg(
    input clk,
    input nrst,
    input flush,
    input is_a_inst,
    input [31:0] pc,
    input [4:0] rs1,
    input [4:0] rs2,
    input [4:0] rd,
    input [4:0] mem_op,
    input [31:0] result,
    input [2:0] wb_src,
    input [15:0] csr_op,
    input [31:0] csr_dataout,
    input [31:0] csr_result,
    input [31:0] operand2,

    output reg is_a_inst_out,
    output reg [31:0] pc_out,
    output reg [4:0] rs1_out,
    output reg [4:0] rs2_out,
    output reg [4:0] rd_out,
    output reg [4:0] mem_op_out,
    output reg [31:0] result_out,
    output reg [2:0] wb_src_out,
    output reg [15:0] csr_op_out,
    output reg [31:0] csr_dataout_out,
    output reg [31:0] csr_result_out,
    output reg [31:0] operand2_out
);

always@(posedge clk) begin
    if(~nrst) begin
        is_a_inst_out <= 1'd0;
        pc_out <= 32'd0;
        rs1_out <= 5'd0;
        rs2_out <= 5'd0;
        rd_out <= 5'd0;
        mem_op_out <= 5'd0;
        result_out <= 32'd0;
        wb_src_out <= 3'd0;
        csr_op_out <= 16'd0;
        csr_dataout_out <= 32'd0;
        csr_result_out <= 32'd0;
        operand2_out <= 32'd0;
    end

    else begin
        priority if(flush) begin
            is_a_inst_out <= 1'd0;
            pc_out <= 32'd0;
            rs1_out <= 5'd0;
            rs2_out <= 5'd0;
            rd_out <= 5'd0;
            mem_op_out <= 5'd0;
            result_out <= 32'd0;
            wb_src_out <= 3'd0;
            csr_op_out <= 16'd0;
            csr_dataout_out <= 32'd0;
            csr_result_out <= 32'd0;
            operand2_out <= 32'd0;
        end

        else begin
            is_a_inst_out <= is_a_inst;
            pc_out <= pc;
            rs1_out <= rs1;
            rs2_out <= rs2;
            rd_out <= rd;
            mem_op_out <= mem_op;
            result_out <= result;
            wb_src_out <= wb_src;
            csr_op_out <= csr_op;
            csr_dataout_out <= csr_dataout;
            csr_result_out <= csr_result;
            operand2_out <= operand2;
        end
    end
end

endmodule