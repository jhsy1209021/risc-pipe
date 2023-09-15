`ifndef OPCODE
`define OPCODE
    `define LUI     0b0110111
    `define AUIPC   0b0010111
    `define JAL     0b1101111
    `define JALR    0b1100111
    `define BRANCH  0b1100011
    `define LOAD    0b0000011
    `define STORE   0b0100011
    `define OP_IMM  0b0010011
    `define OP      0b0110011
    `define SYSTEM  0b1110011
`endif