`ifndef ALU_INST
`define ALU_INST
    `define ALU_ADD     4'b0000
    `define ALU_SUB     4'b0001
    `define ALU_SLL     4'b0010
    `define ALU_SLT     4'b0011
    `define ALU_SLTU    4'b0100
    `define ALU_XOR     4'b0101
    `define ALU_SRL     4'b0110
    `define ALU_SRA     4'b0111
    `define ALU_OR      4'b1000
    `define ALU_AND     4'b1001
    `define ALU_MUL     4'b1010
    `define ALU_MULH    4'b1011
    `define ALU_MULHSU  4'b1100
    `define ALU_MULHU   4'b1101
`endif

`ifndef WB_INST
`define WB_INST
    `define WB_DATAMEM      2'd0
    `define WB_RESULT       2'd1
    `define WB_CSR_DATAOUT  2'd2
`endif

`ifndef MEM_INST
`define MEM_INST
    `define MEM_NO_OP   2'b00
    //`define MEM_NO_OP 2'b01
    `define MEM_READ    2'b10
    `define MEM_WRITE   2'b11

    `define MEM_UNSIGNED    1'b0
    `define MEM_SIGNED      1'b1

    `define MEM_BYTE    2'b00
    `define MEM_HALF    2'b01
    `define MEM_WORD    2'b10
    `define MEM_DWORD   2'b11
`endif

`ifndef CSR_INST
`define CSR_INST
    `define CSR_REG     1'b0
    `define CSR_IMM     1'b1
    
    `define CSR_NO_OP   2'b00
    `define CSR_SET     2'b01
    `define CSR_CLR     2'b10

    `define CSR_INSTRETH    12'b1100_1000_0010
    `define CSR_INSTRET     12'b1100_0000_0010
    `define CSR_CYCLEH      12'b1100_1000_0000
    `define CSR_CYCLE       12'b1100_0000_0000
`endif