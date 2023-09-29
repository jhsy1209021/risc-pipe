`define NOP 32'h00000013

module f2_d_ppreg(
    input clk,
    input nrst,
    input stall,
    input flush,
    input is_a_inst,
    input [31:0] inst,
    input [31:0] pc,

    output reg is_a_inst_out,
    output reg [31:0] inst_out,
    output reg [31:0] pc_out
);

always@(posedge clk) begin
    if(~nrst) begin
        is_a_inst_out <= 1'b0;
        inst_out <= 32'd0;
        pc_out <= 32'd0;
    end

    else begin
        priority if(stall) begin
            is_a_inst_out <= is_a_inst_out;
            inst_out <= inst_out;
            pc_out <= pc_out;
        end

        else if(flush) begin
            is_a_inst_out <= 1'b0;
            inst_out <= `NOP;
            pc_out <= 32'd0;
        end

        else begin
            is_a_inst_out <= is_a_inst;
            inst_out <= inst;
            pc_out <= pc;
        end
    end
end

endmodule