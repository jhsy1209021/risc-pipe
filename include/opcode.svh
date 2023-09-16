`ifndef OPCODE_LIST
`define OPCODE_LIST
    `define LUI     7'b0110111
    `define AUIPC   7'b0010111
    `define JAL     7'b1101111
    `define JALR    7'b1100111
    `define BRANCH  7'b1100011
    `define LOAD    7'b0000011
    `define STORE   7'b0100011
    `define OP_IMM  7'b0010011
    `define OP      7'b0110011
    `define SYSTEM  7'b1110011
`endif