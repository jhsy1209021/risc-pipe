`include "cpu.svh"
`include "SRAM_wrapper.svh"

module top(
    input clk,
    input rst
);
reg rst_reg;
always@(posedge clk) begin
    rst_reg <= rst;
end

wire nrst;
assign nrst = ~(rst_reg | rst);
//////////////////////
//Interconnect Wires//
//////////////////////
//cpu
wire _from_cpu_isram_cs;
wire [15:0] _from_cpu_isram_addr;
wire [3:0] _from_cpu_dsram_wen;
wire [15:0] _from_cpu_dsram_addr;
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
    .isram_cs(_from_cpu_isram_cs),
    .isram_addr(_from_cpu_isram_addr),

    .dsram_dataout(_from_DM1_DO),
    .dsram_wen(_from_cpu_dsram_wen),
    .dsram_addr(_from_cpu_dsram_addr),
    .dsram_datain(_from_cpu_dsram_datain)
);

SRAM_wrapper IM1(
    .CK(clk),
    .CS(_from_cpu_isram_cs),
    .OE(1'b1),
    .WEB(4'b1111),
    .A(_from_cpu_isram_addr[15:2]),
    .DI(32'd0),
    
    .DO(_from_IM1_DO)
);

SRAM_wrapper DM1(
    .CK(clk),
    .CS(1'b1),
    .OE(1'b1),
    .WEB(_from_cpu_dsram_wen),
    .A(_from_cpu_dsram_addr[15:2]),
    .DI(_from_cpu_dsram_datain),
    
    .DO(_from_DM1_DO)
);

endmodule