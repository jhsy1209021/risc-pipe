module decoder(
    input f2_d_ppreg_is_a_inst,
    input [31:0] inst,
    output is_auipc,
    output is_jump,
    output is_branch,
    output reg is_csr_op,
    output reg is_a_inst,
    output [4:0] rd,
    output [4:0] rs1,
    output [4:0] rs2,
    output reg [31:0] imm,
    output reg [1:0] operand1_sel,
    output reg [1:0] operand2_sel,
    output reg addr_gen_sel,
    output reg [2:0] wb_src,
    output reg [3:0] alu_op,
    output reg [4:0] mem_op,
    output reg [15:0] csr_op
);

assign is_auipc = (`OPCODE == `AUIPC);
assign is_jump = (`OPCODE == `JAL) | (`OPCODE == `JALR);
assign is_branch = (`OPCODE == `BRANCH);
assign rd = `RD;
assign rs1 = `RS1;
assign rs2 = `RS2;

//Combinational --> indicate this stage contains a instuction
always@(*) begin
    if(f2_d_ppreg_is_a_inst == 1'b1) begin
        case(`OPCODE)
            `LUI,
            `AUIPC,
            `JAL,
            `JALR,
            `BRANCH,
            `LOAD,
            `STORE,
            `OP_IMM,
            `OP,
            `SYSTEM:
                is_a_inst = 1'b1;

            default:
                is_a_inst = 1'b0;
        endcase
    end

    else begin
        is_a_inst = 1'b0;
    end
end

//Combinational --> tell the hazard_eleminator there is a csr operation
always@(*) begin
    if(`OPCODE == `SYSTEM) begin
        case(`FUNCT3)
            3'b001,
            3'b010,
            3'b011,
            3'b101,
            3'b110,
            3'b111:
                is_csr_op = 1'b1;

            default:
                is_csr_op = 1'b0;
        endcase
    end

    else
        is_csr_op = 1'b0;
end

//Combinational --> imm generation
always@(*) begin
    case(`OPCODE)
        //I-Type instruction
        `OP_IMM: begin
            if((`FUNCT3 == 3'b001) | (`FUNCT3 == 3'b101)) //imm is shamt(unsigned)
                imm = { 27'd0 ,inst[24:20] };
            else
                imm = { {20{inst[31]}}, inst[31:20] };
        end

        //I-Type Load instruction
        `LOAD,
        `JALR: begin
            imm = { {20{inst[31]}}, inst[31:20]};
        end

        //S-Type instruction
        `STORE: begin
            imm = { {20{inst[31]}}, inst[31:25], inst[11:7] };
        end

        //B-Type instruction
        `BRANCH: begin
            imm = { {20{inst[31]}}, inst[7], inst[30:25], inst[11:8], 1'b0 };
        end

        //U-Type instruction
        `LUI,
        `AUIPC: begin
            imm = { inst[31:12], 12'd0 };
        end

        //J-Type instruction
        `JAL: begin
            imm = { {12{inst[31]}}, inst[19:12], inst[20], inst[30:25], inst[24:21], 1'b0 };
        end

        `SYSTEM: begin
            imm = { 27'd0, inst[19:15] };
        end

        default: begin
            imm = 32'd0;
        end
    endcase
end

//operand1
////0. register
////1. PC
////2. "0"
always@(*) begin
    case(`OPCODE)
        `LOAD,
        `STORE,
        `OP_IMM,
        `OP,
        `SYSTEM:
            operand1_sel = 2'd0;

        `AUIPC,
        `JAL,
        `JALR:
            operand1_sel = 2'd1;

        `LUI:
            operand1_sel = 2'd2;

        default:
            //`BRANCH
            operand1_sel = 2'd0;
    endcase
end

//operand2
////0. register
////1. immediate
////2. "4"
always@(*) begin
    case(`OPCODE)
        `OP:
            operand2_sel = 2'd0;

       `LUI,
       `AUIPC,
       `LOAD,
       `STORE,
       `OP_IMM,
       `SYSTEM:
            operand2_sel = 2'd1;

        `JAL,
        `JALR:
            operand2_sel = 2'd2;

        default:
            //`BRANCH
            operand2_sel = 2'd0;
    endcase
end

//addr_gen_sel: Determine what kind of addr be generated.
////JAL, BRANCH --> PC + imm
////JALR --> rs1 + imm
//1'b0: PC + imm
//1'b1: rs1 + imm
always@(*) begin
    case(`OPCODE)
        `JAL,
        `BRANCH: begin
            addr_gen_sel = 1'b0;
        end
        
        `JALR: begin
            addr_gen_sel = 1'b1;
        end

        default: begin
            addr_gen_sel = 1'b0;
        end
    endcase
end

//Combinational --> WriteBack Source decode
always@(*) begin
    case(`OPCODE)
        `LUI,
        `AUIPC,
        `JAL,
        `JALR,
        `OP_IMM,
        `OP: begin
            `WB_WEN = 1'b1;
            `WB_SRC = `WB_RESULT;
        end

        `LOAD: begin
            `WB_WEN = 1'b1;
            `WB_SRC = `WB_DATAMEM;
        end

        `SYSTEM: begin
            `WB_WEN = 1'b1;
            `WB_SRC = `WB_CSR_DATAOUT;
        end

        default: begin
            //`BRANCH, `STORE
            `WB_WEN = 1'b0;
            `WB_SRC = 1'b0;
        end

    endcase
end

//Combinational --> ALU Operation select
always@(*) begin
    case(`OPCODE)
        `LUI,
        `AUIPC,
        `JAL,
        `JALR,
        `LOAD,
        `STORE:
            alu_op = `ALU_ADD;
        
        `OP_IMM: begin
            unique case(`FUNCT3)
                3'b000:
                    alu_op = `ALU_ADD;
                3'b010:
                    alu_op = `ALU_SLT;
                3'b011:
                    alu_op = `ALU_SLTU;
                3'b100:
                    alu_op = `ALU_XOR;
                3'b110:
                    alu_op = `ALU_OR;
                3'b111:
                    alu_op = `ALU_AND;

                3'b001: begin
                    unique if(`FUNCT7 == 7'b0000000)
                        alu_op = `ALU_SLL;
                    else
                        alu_op = `ALU_ADD;
                end

                3'b101: begin
                    unique if(`FUNCT7 == 7'b0000000)
                        alu_op = `ALU_SRL;
                    else if(`FUNCT7 == 7'b0100000)
                        alu_op = `ALU_SRA;
                    else
                        alu_op = `ALU_ADD;
                end

                default:
                    alu_op = `ALU_ADD;
            endcase
        end

        `OP: begin
            unique case(`FUNCT3)
                3'b000: begin
                    unique if(`FUNCT7 == 7'b0000000)
                        alu_op = `ALU_ADD;
                    else if(`FUNCT7 == 7'b0100000)
                        alu_op = `ALU_SUB;
                    else if(`FUNCT7 == 7'b0000001)
                        alu_op = `ALU_MUL;
                    else
                        alu_op = `ALU_ADD;
                end

                3'b001: begin
                    unique if(`FUNCT7 == 7'b0000000)
                        alu_op = `ALU_SLL;
                    else if(`FUNCT7 == 7'b0000001)
                        alu_op = `ALU_MULH;
                    else
                        alu_op = `ALU_ADD;
                end

                3'b010: begin
                    unique if(`FUNCT7 == 7'b0000000)
                        alu_op = `ALU_SLT;
                    else if(`FUNCT7 == 7'b0000001)
                        alu_op = `ALU_MULHSU;
                    else
                        alu_op = `ALU_ADD;
                end

                3'b011: begin
                    unique if(`FUNCT7 == 7'b0000000)
                        alu_op = `ALU_SLTU;
                    else if(`FUNCT7 == 7'b0000001)
                        alu_op = `ALU_MULHU;
                    else
                        alu_op = `ALU_ADD;
                end

                3'b100:
                    alu_op = `ALU_XOR;
                
                3'b101: begin
                    unique if(`FUNCT7 == 7'b0000000)
                        alu_op = `ALU_SRL;
                    else if(`FUNCT7 == 7'b0100000)
                        alu_op = `ALU_SRA;
                    else
                        alu_op = `ALU_ADD;
                end

                3'b110:
                    alu_op = `ALU_OR;
                3'b111:
                    alu_op = `ALU_AND;

                default:
                    alu_op = `ALU_ADD;
            endcase
        end

        default:
            alu_op = `ALU_ADD;
    endcase
end

//Combinational --> Memory Operation
always@(*) begin
    unique if(`OPCODE == `LOAD) begin
        case(`FUNCT3)
            3'b000: begin
                `MEM_OP = `MEM_READ;
                `MEM_SIGN = `MEM_SIGNED;
                `MEM_DLENGTH = `MEM_BYTE;
            end

            3'b001: begin
                `MEM_OP = `MEM_READ;
                `MEM_SIGN = `MEM_SIGNED;
                `MEM_DLENGTH = `MEM_HALF;
            end

            3'b010: begin
                `MEM_OP = `MEM_READ;
                `MEM_SIGN = `MEM_SIGNED;
                `MEM_DLENGTH = `MEM_WORD;
            end

            3'b100: begin
                `MEM_OP = `MEM_READ;
                `MEM_SIGN = `MEM_UNSIGNED;
                `MEM_DLENGTH = `MEM_BYTE;
            end

            3'b101: begin
                `MEM_OP = `MEM_READ;
                `MEM_SIGN = `MEM_UNSIGNED;
                `MEM_DLENGTH = `MEM_HALF;
            end

            default: begin
                `MEM_OP = `MEM_NO_OP;
                `MEM_SIGN = `MEM_UNSIGNED;
                `MEM_DLENGTH = `MEM_WORD;
            end
        endcase
    end

    else if(`OPCODE == `STORE) begin
        case(`FUNCT3)
            3'b000: begin
                `MEM_OP = `MEM_WRITE;
                `MEM_SIGN = `MEM_UNSIGNED;
                `MEM_DLENGTH = `MEM_BYTE;
            end

            3'b001: begin
                `MEM_OP = `MEM_WRITE;
                `MEM_SIGN = `MEM_UNSIGNED;
                `MEM_DLENGTH = `MEM_HALF;
            end

            3'b010: begin
                `MEM_OP = `MEM_WRITE;
                `MEM_SIGN = `MEM_UNSIGNED;
                `MEM_DLENGTH = `MEM_WORD;
            end

            default: begin
                `MEM_OP = `MEM_NO_OP;
                `MEM_SIGN = `MEM_UNSIGNED;
                `MEM_DLENGTH = `MEM_WORD;
            end
        endcase
    end

    else begin
        `MEM_OP = `MEM_NO_OP;
        `MEM_SIGN = `MEM_UNSIGNED;
        `MEM_DLENGTH = `MEM_WORD;
    end
end

//Combinational --> CSR Operation
always@(*) begin
    `CSR_REG_ADDR = `CSR;

    if(`OPCODE == `SYSTEM) begin
        case(`FUNCT3)
            3'b001: begin
                `CSR_WEN = (`RD == 5'd0) ? 1'b0 : 1'b1;
                `CSR_OPERAND_TYPE = `CSR_REG;
                `CSR_CALC_OP = `CSR_NO_OP;
            end

            3'b101: begin
                `CSR_WEN = (`RD == 5'd0) ? 1'b0 : 1'b1;
                `CSR_OPERAND_TYPE = `CSR_IMM;
                `CSR_CALC_OP = `CSR_NO_OP;
            end

            3'b010: begin
                `CSR_WEN = (`RD == 5'd0) ? 1'b0 : 1'b1;
                `CSR_OPERAND_TYPE = `CSR_REG;
                `CSR_CALC_OP = `CSR_SET;
            end

            3'b110: begin
                `CSR_WEN = (`RD == 5'd0) ? 1'b0 : 1'b1;
                `CSR_OPERAND_TYPE = `CSR_IMM;
                `CSR_CALC_OP = `CSR_SET;
            end

            3'b011: begin
                `CSR_WEN = (`RD == 5'd0) ? 1'b0 : 1'b1;
                `CSR_OPERAND_TYPE = `CSR_REG;
                `CSR_CALC_OP = `CSR_CLR;
            end

            3'b111: begin
                `CSR_WEN = (`RD == 5'd0) ? 1'b0 : 1'b1;
                `CSR_OPERAND_TYPE = `CSR_IMM;
                `CSR_CALC_OP = `CSR_CLR;
            end

            default: begin
                `CSR_WEN = 1'b0;
                `CSR_OPERAND_TYPE = `CSR_REG;
                `CSR_CALC_OP = `CSR_NO_OP;
            end
        endcase
    end

    else begin
        `CSR_WEN = 1'b0;
        `CSR_OPERAND_TYPE = `CSR_REG;
        `CSR_CALC_OP = `CSR_NO_OP;
    end
end

endmodule