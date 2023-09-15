`include "opcode.svh"
`include "internal_op.svh"

`define OPCODE  inst[6:0]
`define RD      inst[11:7]
`define FUNCT3  inst[14:12]
`define RS1     inst[19:15]
`define RS2     inst[24:20]
`define FUNCT7  inst[31:25]

module decoder(
    input [31:0] inst,
    output is_auipc,
    output is_jump,
    output is_branch,
    output [31:0] imm,
    output [1:0] wb_src,
    output [4:0] rd,
    output [4:0] rs1,
    output [4:0] rs2,
    output [3:0] alu_op,
    output [4:0] mem_op,
    output [12:0] csr_op,
    output [1:0] data_dependency_check
);

assign is_auipc = (`OPCODE == `AUIPC);
assign is_jump = (`OPCODE == `JAL) | (`OPCODE == `JALR);
assign is_branch = (`OPCODE == `BRANCH);

//Combinational --> imm generation
always@(*) begin

end

endmodule