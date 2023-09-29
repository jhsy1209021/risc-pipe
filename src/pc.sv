module pc(
    input clk,
    input nrst,
    input stall,
    input is_branch,
    input is_jump,
    input [31:0] new_pc,
    output reg [31:0] pc_out
);

always@(posedge clk) begin
    if(~nrst)
        pc_out <= 32'd0;

    else begin
        if(stall)
            pc_out <= pc_out;
        else if(is_branch | is_jump)
            pc_out <= new_pc;
        else
            pc_out <= pc_out + 32'd4;
    end
end

endmodule