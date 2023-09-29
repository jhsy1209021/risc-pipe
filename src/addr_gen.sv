module addr_gen(
    input addr_gen_sel,
    input [31:0] pc,
    input [31:0] reg1,
    input [31:0] imm,

    output [31:0] next_pc
);

assign next_pc = (addr_gen_sel) ? (reg1 + imm) : (pc + imm);

endmodule