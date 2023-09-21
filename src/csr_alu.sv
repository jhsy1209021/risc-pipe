module csr_alu(
    input [31:0] operand1,
    input [31:0] operand2,
    input [31:0] csr_in,
    input [2:0] csr_calc_op,

    output reg [31:0] csr_result
);

reg [31:0] selected_operand;

always@(*) begin
    selected_operand = (csr_calc_op[2] == `CSR_IMM) ? operand2 : operand1;

    case(csr_calc_op[1:0])
        2'b00:
            csr_result = selected_operand;
        2'b01:
            csr_result = csr_in | selected_operand;
        2'b10:
            csr_result = csr_in & (~selected_operand);
        
        default:
            csr_result = selected_operand;
    endcase
end

endmodule