module addr_gen(
    input gen_type,
    input [31:0] pc,
    input [31:0] reg1,
    input [31:0] imm,

    output [31:0] next_pc
);

assign next_pc = (gen_type) ? (reg1 + imm) : (pc + imm);

endmodule