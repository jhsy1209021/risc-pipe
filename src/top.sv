`include "cpu.svh"
`include "SRAM_wrapper.svh"

module top(
    input clk,
    input rst
);

wire nrst;
assign nrst = ~rst;
//////////////////////
//Interconnect Wires//
//////////////////////
//cpu
wire [13:0] _from_cpu_isram_addr;
wire [3:0] _from_cpu_dsram_wen;
wire [13:0] _from_cpu_dsram_addr;
wire [31:0] _from_cpu_dsram_datain;

//IM1
wire [31:0] _from_IM1_DO;

//DM1
wire [31:0] _from_DM1_DO;

//////////////////////
//Module Instantiate//
//////////////////////
cpu _cpu(
    .clk(clk),
    .nrst(nrst),
    
    .isram_dataout(_from_IM1_DO),
    .isram_addr(_from_cpu_isram_addr),

    .dsram_dataout(_from_DM1_DO),
    .dsram_wen(_from_cpu_dsram_wen),
    .dsram_addr(_from_cpu_dsram_addr),
    .dsram_datain(_from_cpu_dsram_datain)
);

SRAM_wrapper IM1(
    .CK(clk),
    .CS(1'b1),
    .OE(1'b1),
    .WEB(4'b1111),
    .A(_from_cpu_isram_addr),
    .DI(32'd0),
    
    .DO(_from_IM1_DO)
);

SRAM_wrapper DM1(
    .CK(clk),
    .CS(1'b1),
    .OE(1'b1),
    .WEB(_from_cpu_dsram_wen),
    .A(_from_cpu_dsram_addr),
    .DI(_from_cpu_dsram_datain),
    
    .DO(_from_DM1_DO)
);

endmodule