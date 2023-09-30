module d_e_ppreg(
    input clk,
    input nrst,
    input stall,
    input flush,
    input is_a_inst,
    input [31:0] pc,
    input [4:0] mem_op,
    input [3:0] alu_op,
    input [31:0] operand1,
    input [31:0] operand2,
    input [4:0] rd,
    input [2:0] wb_src,
    input [15:0] csr_op,
    input [31:0] reg2,

    output reg is_a_inst_out,
    output reg [4:0] rd_out,
    output reg [31:0] pc_out,
    output reg [31:0] operand1_out,
    output reg [31:0] operand2_out,
    output reg [4:0] mem_op_out,
    output reg [3:0] alu_op_out,
    output reg [2:0] wb_src_out,
    output reg [15:0] csr_op_out,
    output reg [31:0] reg2_out
);

always@(posedge clk) begin
    if(~nrst) begin
        is_a_inst_out <= 1'd0;
        rd_out <= 5'd0;
        pc_out <= 32'd0;
        operand1_out <= 32'd0;
        operand2_out <= 32'd0;
        mem_op_out <= 5'd0;
        alu_op_out <= 4'd0;
        wb_src_out <= 3'd0;
        csr_op_out <= 16'd0;
        reg2_out <= 32'd0;
    end

    else begin
        priority if(stall) begin
            is_a_inst_out <= is_a_inst_out;
            rd_out <= rd_out;
            pc_out <= pc_out;
            operand1_out <= operand1_out;
            operand2_out <= operand2_out;
            mem_op_out <= mem_op_out;
            alu_op_out <= alu_op_out;
            wb_src_out <= wb_src_out;
            csr_op_out <= csr_op_out;
            reg2_out <= reg2_out;
        end

        else if(flush) begin
            is_a_inst_out <= 1'd0;
            rd_out <= 5'd0;
            pc_out <= 32'd0;
            operand1_out <= 32'd0;
            operand2_out <= 32'd0;
            mem_op_out <= 5'd0;
            alu_op_out <= 4'd0;
            wb_src_out <= 3'd0;
            csr_op_out <= 16'd0;
            reg2_out <= 32'd0;
        end

        else begin
            is_a_inst_out <= is_a_inst;
            rd_out <= rd;
            pc_out <= pc;
            operand1_out <= operand1;
            operand2_out <= operand2;
            mem_op_out <= mem_op;
            alu_op_out <= alu_op;
            wb_src_out <= wb_src;
            csr_op_out <= csr_op;
            reg2_out <= reg2;
        end
    end
end

endmodule