module f1_f2_ppreg(
    input clk,
    input nrst,
    input stall,
    input flush,
    input [31:0] pc,

    output reg is_a_inst_out,
    output reg flushed_out,
    output reg [31:0] pc_out
);


always@(posedge clk) begin
    if(~nrst) begin
        is_a_inst_out <= 1'b1;
        flushed_out <= 1'b0;
        pc_out <= 32'd0;
    end

    else begin
        priority if(stall) begin
            is_a_inst_out <= is_a_inst_out;
            flushed_out <= flushed_out;
            pc_out <= pc_out;
        end

        else if(flush) begin
            is_a_inst_out <= 1'b0;
            flushed_out <= 1'b1;
            pc_out <= 32'd0;
        end

        else begin
            is_a_inst_out <= 1'b1;
            flushed_out <= 1'b0;
            pc_out <= pc;
        end
    end
end

endmodule