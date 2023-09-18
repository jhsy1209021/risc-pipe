`ifndef DECODER
`define DECODER
    `include "opcode.svh"
    `include "internal_op.svh"

    //wb_src bitmap
    `define WB_WEN  wb_src[2]
    `define WB_SRC  wb_src[1:0]

    //mem_op bitmap
    `define MEM_OP      mem_op[4:3]
    `define MEM_SIGN    mem_op[2]
    `define MEM_DLENGTH mem_op[1:0]

    //csr_op bitmap
    `define CSR_WEN         csr_op[13]
    `define CSR_WRITE_SRC   csr_op[12]
    `define CSR_REG_ADDR    csr_op[11:0]
`endif