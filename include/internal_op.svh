`ifndef ALU_OP
`define ALU_OP
    `define ADD     4'b0000
    `define SUB     4'b0001
    `define SLL     4'b0010
    `define SLT     4'b0011
    `define SLTU    4'b0100
    `define XOR     4'b0101
    `define SRL     4'b0110
    `define SRA     4'b0111
    `define OR      4'b1000
    `define AND     4'b1001
    `define MUL     4'b1010
    `define MULH    4'b1011
    `define MULHSU  4'b1100
    `define MULHU   4'b1101
    `define SET     4'b1110
    `define CLR     4'b1111
`endif

`ifndef WB_SRC
`define WB_SRC
    `define WB_SRC_WEN wb_src[2]
    `define WB_SRC_SRC wb_src[1:0]
    `define DATAMEM 2'd0
    `define RESULT 2'd1
    `define CSR_DATAOUT 2'd2
`endif