`ifndef DECODER
`define DECODER
    `include "decoder.sv"
    `include "opcode.svh"
    `include "internal_op.svh"

    `define OPCODE  inst[6:0]
    `define RD      inst[11:7]
    `define FUNCT3  inst[14:12]
    `define RS1     inst[19:15]
    `define RS2     inst[24:20]
    `define FUNCT7  inst[31:25]
    `define CSR     inst[31:20]

    //wb_src bitmap
    `define WB_WEN  wb_src[2]
    `define WB_SRC  wb_src[1:0]

    //mem_op bitmap
    `define MEM_OP      mem_op[4:3]
    `define MEM_SIGN    mem_op[2]
    `define MEM_DLENGTH mem_op[1:0]

    //csr_op bitmap
    `define CSR_WEN             csr_op[15]
    `define CSR_OPERAND_TYPE    csr_op[14]
    `define CSR_CALC_OP         csr_op[13:12]
    `define CSR_REG_ADDR        csr_op[11:0]
`endif