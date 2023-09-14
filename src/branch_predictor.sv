module branch_predictor(
    input clk,
    input nrst,
    input inst_is_branch,
    input branch_comp_result,
    input [6:0] fetched_inst,
    output branch_take,
    output flush_f1_f2_ppreg,
    output flush_f2_d_ppreg
);

reg state_predict_result;
reg [1:0] cs, ns;

//Sequential >> current state
always@(posedge clk) begin
    if(~nrst)
        cs <= 2'd0;
    
    else
        cs <= ns;
end

//Combinational >> next_state
always@(*) begin
    unique case(cs)
        2'd0: begin
            if(inst_is_branch)
                ns = (branch_comp_result) ? 2'd1 : 2'd0;
            else
                ns = cs;
        end

        2'd1: begin
            if(inst_is_branch)
                ns = (branch_comp_result) ? 2'd2 : 2'd0;
            else
                ns = cs;
        end

        2'd2: begin
            if(inst_is_branch)
                ns = (branch_comp_result) ? 2'd3 : 2'd1;
            else
                ns = cs;
        end

        2'd3: begin
            if(inst_is_branch)
                ns = (branch_comp_result) ? 2'd3 : 2'd2;
            else
                ns = cs;
        end
    endcase
end

//Combinational >> output
always@(*) begin
    unique case(cs)
        2'd0:
            state_predict_result = 1'b0;
        2'd1:
            state_predict_result = 1'b0;
        2'd2:
            state_predict_result = 1'b1;
        2'd3:
            state_predict_result = 1'b1;
    endcase
end

//How to determine the output signal "branch_take"??



endmodule