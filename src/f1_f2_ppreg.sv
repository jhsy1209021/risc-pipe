module f1_f2_ppreg(
    input clk,
    input nrst,
    input stall,
    input flush,
    input [31:0] pc,
    output reg [31:0] pc_out
);


always@(posedge clk) begin
    if(~nrst)
        pc_out <= 32'd0;

    else begin
        priority if(stall)
            pc_out <= pc_out;
        else if(flush)
            pc_out <= 32'd0;
        else
            pc_out <= pc;
    end
end

endmodule