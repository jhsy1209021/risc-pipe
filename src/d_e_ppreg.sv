module d_e_ppreg(
    input clk,
    input nrst,
    input stall,
    input flush,
    input is_a_inst,
    input [4:0] rs1,
    input [4:0] rs2,
    input [31:0] pc,
    input [4:0] mem_op,
    input [3:0] alu_op,
    input [31:0] operand1,
    input [31:0] operand2,
    input [4:0] rd,
    input [2:0] wb_src,
    input [1:0] data_dependency_check,
    input [15:0] csr_op,

    output reg is_a_inst_out,
    output reg [4:0] rs1_out,
    output reg [4:0] rs2_out,
    output reg [4:0] rd_out,
    output reg [31:0] pc_out,
    output reg [31:0] operand1_out,
    output reg [31:0] operand2_out,
    output reg [4:0] mem_op_out,
    output reg [3:0] alu_op_out,
    output reg [2:0] wb_src_out,
    output reg [1:0] data_dependency_check_out,
    output reg [15:0] csr_op_out
);

always@(posedge clk) begin
    if(~nrst) begin
        is_a_inst_out <= 1'd0;
        rs1_out <= 5'd0;
        rs2_out <= 5'd0;
        rd_out <= 5'd0;
        pc_out <= 32'd0;
        operand1_out <= 32'd0;
        operand2_out <= 32'd0;
        mem_op_out <= 5'd0;
        alu_op_out <= 4'd0;
        wb_src_out <= 3'd0;
        data_dependency_check_out <= 2'd0;
        csr_op_out <= 13'd0;
    end

    else begin
        priority if(stall) begin
            is_a_inst_out <= is_a_inst_out;
            rs1_out <= rs1_out;
            rs2_out <= rs2_out;
            rd_out <= rd_out;
            pc_out <= pc_out;
            operand1_out <= operand1_out;
            operand2_out <= operand2_out;
            mem_op_out <= mem_op_out;
            alu_op_out <= alu_op_out;
            wb_src_out <= wb_src_out;
            data_dependency_check_out <= data_dependency_check_out;
            csr_op_out <= csr_op_out;
        end

        else if(flush) begin
            is_a_inst_out <= 1'd0;
            rs1_out <= 5'd0;
            rs2_out <= 5'd0;
            rd_out <= 5'd0;
            pc_out <= 32'd0;
            operand1_out <= 32'd0;
            operand2_out <= 32'd0;
            mem_op_out <= 5'd0;
            alu_op_out <= 4'd0;
            wb_src_out <= 3'd0;
            data_dependency_check_out <= 2'd0;
            csr_op_out <= 13'd0;
        end

        else begin
            is_a_inst_out <= is_a_inst;
            rs1_out <= rs1;
            rs2_out <= rs2;
            rd_out <= rd;
            pc_out <= pc;
            operand1_out <= operand1;
            operand2_out <= operand2;
            mem_op_out <= mem_op;
            alu_op_out <= alu_op;
            wb_src_out <= wb_src;
            data_dependency_check_out <= data_dependency_check;
            csr_op_out <= csr_op;
        end
    end
end

endmodule