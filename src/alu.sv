module alu(
    input [3:0] alu_op,
    input [31:0] operand1,
    input [31:0] operand2,
    
    output reg [31:0] result
);

wire [63:0] mult_output;
reg [63:0] mult_operand1;
reg [63:0] mult_operand2;
reg [31:0] selected_mult_output;

always@(*) begin
    case(alu_op)
        `ALU_ADD:
            result = (operand1 + operand2);
        `ALU_SUB:
            result = (operand1 - operand2);
        `ALU_SLL:
            result = operand1 << (operand2[4:0]);
        `ALU_SLT:
            result = (($signed(operand1)) < ($signed(operand2)));
        `ALU_SLTU:
            result = (operand1 < operand2);
        `ALU_XOR:
            result = (operand1 ^ operand2);
        
        `ALU_SRL:
            result = operand1 >> (operand2[4:0]);
        `ALU_SRA:
            result = $signed(operand1) >>> (operand2[4:0]);
        `ALU_OR:
            result = (operand1 | operand2);
        `ALU_AND:
            result = (operand1 & operand2);

        `ALU_MUL,
        `ALU_MULH,
        `ALU_MULHSU,
        `ALU_MULHU:
            result = selected_mult_output;

        default:
            result = 32'd0;
    endcase
end

//Multiplier part --> select input
always@(*) begin
    mult_operand1[31:0] = operand1;
    mult_operand2[31:0] = operand2;
    case(alu_op)
        `ALU_MUL,
        `ALU_MULH: begin
            mult_operand1[63:32] = {32{operand1[31]}};
            mult_operand2[63:32] = {32{operand2[31]}};
        end

        `ALU_MULHSU: begin
            mult_operand1[63:32] = {32{operand1[31]}};
            mult_operand2[63:32] = {32'd0};
        end

        `ALU_MULHU: begin
            mult_operand1[63:32] = {32'd0};
            mult_operand2[63:32] = {32'd0};
        end

        default: begin
            mult_operand1[63:32] = {32{operand1[31]}};
            mult_operand2[63:32] = {32{operand2[31]}};
        end
    endcase
end

//Multiplier part --> arithmetic(Really Really slow)
assign mult_output = mult_operand1 * mult_operand2;

//Multiplier part --> select the lower or upper part
always@(*) begin
    case(alu_op)
        `ALU_MUL:
            selected_mult_output = mult_output[31:0];

        `ALU_MULH,
        `ALU_MULHSU,
        `ALU_MULHU:
            selected_mult_output = mult_output[63:32];

        default:
            selected_mult_output = mult_output[31:0];
    endcase
end

endmodule