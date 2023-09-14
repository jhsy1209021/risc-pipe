`define NOP 0h00000013

module f2_d_ppreg(
    input clk,
    input nrst,
    input stall,
    input flush,
    input [31:0] inst_in,
    input [31:0] pc_in,
    output reg [31:0] inst_out,
    output reg [31:0] pc_out
);

always@(posedge clk) begin
    if(~nrst) begin
        inst_out <= 32'd0;
        pc_out <= 32'd0;
    end

    else begin
        priority if(stall) begin
            inst_out <= inst_out;
            pc_out <= pc_out;
        end

        else if(flush) begin
            inst_out <= `NOP;
            pc_out <= 32'd0;
        end

        else begin
            inst_out <= inst_in;
            pc_out <= pc_in;
        end
    end
end

endmodule