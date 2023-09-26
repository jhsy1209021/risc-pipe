module branch_comparator(
    input is_branch,
    input [2:0] branch_type,
    input [31:0] operand1,
    input [31:0] operand2,
    
    output branch_take
);

reg compare_result;

//Comparator
always@(*) begin
    case(branch_type)
        3'b000:
            compare_result = (operand1 == operand2);
        3'b001:
            compare_result = (operand1 != operand2);
        3'b100:
            compare_result = (($signed(operand1)) < ($signed(operand2)));
        3'b101:
            compare_result = (($signed(operand1)) >= ($signed(operand2)));
        3'b110:
            compare_result = (operand1 < operand2);
        3'b111:
            compare_result = (operand1 >= operand2);

        default:
            compare_result = 1'b0;
    endcase
end

assign branch_take = is_branch & compare_result;

endmodule