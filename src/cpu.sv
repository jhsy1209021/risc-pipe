module cpu(
    input clk,
    input nrst,
    
    input [31:0] isram_dataout,
    output isram_cs,
    output [15:0] isram_addr,

    input [31:0] dsram_dataout,
    output [3:0] dsram_wen,
    output [15:0] dsram_addr,
    output [31:0] dsram_datain
);
//////////////////////
//Interconnect Wires//
//////////////////////
//From PC
wire [31:0] _from_pc_pc_out;

//From f1_f2_ppreg
wire _from_f1_f2_ppreg_is_a_inst_out;
wire _from_f1_f2_ppreg_flushed_out;
wire [31:0] _from_f1_f2_ppreg_pc_out;
wire branch_take_or_is_jump;

//From f2_d_ppreg
wire _from_f2_d_ppreg_is_a_inst_out;
wire [31:0] _from_f2_d_ppreg_inst_out;
wire [31:0] _from_f2_d_ppreg_pc_out;
wire [31:0] isram_dataout_or_nop;

//From decoder
wire _from_decoder_is_auipc;
wire _from_decoder_is_jump;
wire _from_decoder_is_branch;
wire _from_decoder_is_csr_op;
wire _from_decoder_is_a_inst;
wire [4:0] _from_decoder_rd;
wire [4:0] _from_decoder_rs1;
wire [4:0] _from_decoder_rs2;
wire [31:0] _from_decoder_imm;
wire [1:0] _from_decoder_operand1_sel;
wire [1:0] _from_decoder_operand2_sel;
wire _from_decoder_addr_gen_sel;
wire [2:0] _from_decoder_wb_src;
wire [3:0] _from_decoder_alu_op;
wire [4:0] _from_decoder_mem_op;
wire [15:0] _from_decoder_csr_op;
wire [1:0] _from_decoder_data_dependency_check;

//From addr_gen
wire [31:0] _from_addr_gen_next_pc;

//From regfile
wire [31:0] _from_regfile_rdata1;
wire [31:0] _from_regfile_rdata2;

//From branch_comparator
wire _from_branch_comparator_branch_take;
wire [31:0] de_operand1;
wire [31:0] de_operand2;

//From d_e_ppreg
wire _from_d_e_ppreg_is_a_inst_out;
wire [4:0] _from_d_e_ppreg_rs1_out;
wire [4:0] _from_d_e_ppreg_rs2_out;
wire [4:0] _from_d_e_ppreg_rd_out;
wire [31:0] _from_d_e_ppreg_pc_out;
wire [31:0] _from_d_e_ppreg_operand1_out;
wire [31:0] _from_d_e_ppreg_operand2_out;
wire [4:0] _from_d_e_ppreg_mem_op_out;
wire [3:0] _from_d_e_ppreg_alu_op_out;
wire [2:0] _from_d_e_ppreg_wb_src_out;
wire [15:0] _from_d_e_ppreg_csr_op_out;
wire [31:0] _from_d_e_ppreg_reg2_out;
reg [31:0] d_e_ppreg_operand1;
reg [31:0] d_e_ppreg_operand2;

//From alu
wire [31:0] _from_alu_result;

//From csr_alu
wire [31:0] _from_csr_alu_csr_result;

//From e_m1_ppreg
wire _from_e_m1_ppreg_is_a_inst_out;
wire [31:0] _from_e_m1_ppreg_pc_out;
wire [4:0] _from_e_m1_ppreg_rs1_out;
wire [4:0] _from_e_m1_ppreg_rs2_out;
wire [4:0] _from_e_m1_ppreg_rd_out;
wire [4:0] _from_e_m1_ppreg_mem_op_out;
wire [31:0] _from_e_m1_ppreg_result_out;
wire [2:0] _from_e_m1_ppreg_wb_src_out;
wire [15:0] _from_e_m1_ppreg_csr_op_out;
wire [31:0] _from_e_m1_ppreg_csr_dataout_out;
wire [31:0] _from_e_m1_ppreg_csr_result_out;
wire [31:0] _from_e_m1_ppreg_operand2_out;

//From mmu
////Direct connect to output port;

//From m1_m2_ppreg
wire _from_m1_m2_ppreg_is_a_inst_out;
wire [31:0] _from_m1_m2_ppreg_result_out;
wire [4:0] _from_m1_m2_ppreg_rd_out;
wire [2:0] _from_m1_m2_ppreg_wb_src_out;
wire [31:0] _from_m1_m2_ppreg_pc_out;
wire [4:0] _from_m1_m2_ppreg_mem_op_out;
wire [15:0] _from_m1_m2_ppreg_csr_op_out;
wire [31:0] _from_m1_m2_ppreg_csr_dataout_out;
wire [31:0] _from_m1_m2_ppreg_csr_result_out;

//From read_aligner
wire [31:0] _from_read_aligner_aligned_dataout;

//From m2_wb_ppreg
wire _from_m2_wb_ppreg_is_a_inst_out;
wire [31:0] _from_m2_wb_ppreg_dmem_dataout_out;
wire [31:0] _from_m2_wb_ppreg_result_out;
wire [4:0] _from_m2_wb_ppreg_rd_out;
wire [2:0] _from_m2_wb_ppreg_wb_src_out;
wire [31:0] _from_m2_wb_ppreg_pc_out;
wire [15:0] _from_m2_wb_ppreg_csr_op_out;
wire [31:0] _from_m2_wb_ppreg_csr_dataout_out;
wire [31:0] _from_m2_wb_ppreg_csr_result_out;

//From wb_unit
wire _from_wb_unit_wen;
wire [4:0] _from_wb_unit_waddr;
wire [31:0] _from_wb_unit_wdata;

//From forwarding_unit
wire _from_forwarding_unit_de_operand1_sel;
wire _from_forwarding_unit_de_operand2_sel;
wire [31:0] _from_forwarding_unit_to_de_operand1;
wire [31:0] _from_forwarding_unit_to_de_operand2;

//From hazard_eliminator
wire _from_hazard_eliminator_stall_pc;
wire _from_hazard_eliminator_stall_f2;
wire _from_hazard_eliminator_stall_de;
wire _from_hazard_eliminator_stall_ex;
wire _from_hazard_eliminator_flush_ex;
wire _from_hazard_eliminator_flush_m1;

//From csr_reg_bank
wire [31:0] _from_csr_reg_bank_rdata;

////////////////
//Sub-mosdules//
////////////////
assign isram_cs = ~_from_hazard_eliminator_stall_pc;
pc _pc(
    .clk(clk),
    .nrst(nrst),
    .stall(_from_hazard_eliminator_stall_pc),
    .is_branch(_from_branch_comparator_branch_take),
    .is_jump(_from_decoder_is_jump),
    .new_pc(_from_addr_gen_next_pc),

    .pc_out(_from_pc_pc_out)
);
assign isram_addr = _from_pc_pc_out[15:0];

assign branch_take_or_is_jump = _from_branch_comparator_branch_take | _from_decoder_is_jump;
f1_f2_ppreg f1_f2_ppreg(
    .clk(clk),
    .nrst(nrst),
    .stall(_from_hazard_eliminator_stall_f2),
    .flush(branch_take_or_is_jump),
    .pc(_from_pc_pc_out),

    .is_a_inst_out(_from_f1_f2_ppreg_is_a_inst_out),
    .flushed_out(_from_f1_f2_ppreg_flushed_out),
    .pc_out(_from_f1_f2_ppreg_pc_out)
);

assign isram_dataout_or_nop = (_from_f1_f2_ppreg_flushed_out == 1'b1) ? 32'h00000013 : isram_dataout;
f2_d_ppreg f2_d_ppreg(
    .clk(clk),
    .nrst(nrst),
    .stall(_from_hazard_eliminator_stall_de),
    .flush(branch_take_or_is_jump),
    .is_a_inst(_from_f1_f2_ppreg_is_a_inst_out),
    .inst(isram_dataout_or_nop),
    .pc(_from_f1_f2_ppreg_pc_out),

    .is_a_inst_out(_from_f2_d_ppreg_is_a_inst_out),
    .inst_out(_from_f2_d_ppreg_inst_out),
    .pc_out(_from_f2_d_ppreg_pc_out)
);

decoder _decoder(
    .inst(_from_f2_d_ppreg_inst_out),
    .f2_d_ppreg_is_a_inst(_from_f2_d_ppreg_is_a_inst_out),

    .is_auipc(_from_decoder_is_auipc),
    .is_jump(_from_decoder_is_jump),
    .is_branch(_from_decoder_is_branch),
    .is_csr_op(_from_decoder_is_csr_op),
    .is_a_inst(_from_decoder_is_a_inst),
    .rd(_from_decoder_rd),
    .rs1(_from_decoder_rs1),
    .rs2(_from_decoder_rs2),
    .imm(_from_decoder_imm),
    .operand1_sel(_from_decoder_operand1_sel),
    .operand2_sel(_from_decoder_operand2_sel),
    .addr_gen_sel(_from_decoder_addr_gen_sel),
    .wb_src(_from_decoder_wb_src),
    .alu_op(_from_decoder_alu_op),
    .mem_op(_from_decoder_mem_op),
    .csr_op(_from_decoder_csr_op)
);

addr_gen _addr_gen(
    .addr_gen_sel(_from_decoder_addr_gen_sel),
    .pc(_from_f2_d_ppreg_pc_out),
    .reg1(de_operand1),
    .imm(_from_decoder_imm),

    .next_pc(_from_addr_gen_next_pc)
);

regfile _regfile(
    .clk(clk),
    .nrst(nrst),
    
    .raddr1(_from_decoder_rs1),
    .raddr2(_from_decoder_rs2),
    .rdata1(_from_regfile_rdata1),
    .rdata2(_from_regfile_rdata2),
    
    .wen(_from_wb_unit_wen),
    .waddr(_from_wb_unit_waddr),
    .wdata(_from_wb_unit_wdata)
);

assign de_operand1 = (_from_forwarding_unit_de_operand1_sel == 1'b1) ? _from_forwarding_unit_to_de_operand1 : _from_regfile_rdata1;
assign de_operand2 = (_from_forwarding_unit_de_operand2_sel == 1'b1) ? _from_forwarding_unit_to_de_operand2 : _from_regfile_rdata2;
branch_comparator _branch_comparator(
    .is_branch(_from_decoder_is_branch),
    .branch_type(_from_f2_d_ppreg_inst_out[14:12]),
    .operand1(de_operand1),
    .operand2(de_operand2),
    
    .branch_take(_from_branch_comparator_branch_take)
);

//Mux --> selecting d_e_ppreg_operand1
always@(*) begin
    case(_from_decoder_operand1_sel)
        2'd0:
            d_e_ppreg_operand1 = de_operand1;
        2'd1:
            d_e_ppreg_operand1 = _from_f2_d_ppreg_pc_out;
        2'd2:
            d_e_ppreg_operand1 = 32'd0;
        default:
            d_e_ppreg_operand1 = 32'd0;
    endcase
end
//Mux --> selecting d_e_ppreg_operand2
always@(*) begin
    case(_from_decoder_operand2_sel)
        2'd0:
            d_e_ppreg_operand2 = de_operand2;
        2'd1:
            d_e_ppreg_operand2 = _from_decoder_imm;
        2'd2:
            d_e_ppreg_operand2 = 32'd4;
        default:
            d_e_ppreg_operand2 = 32'd0;
    endcase
end
d_e_ppreg d_e_ppreg(
    .clk(clk),
    .nrst(nrst),
    .stall(_from_hazard_eliminator_stall_ex),
    .flush(_from_hazard_eliminator_flush_ex),
    .is_a_inst(_from_decoder_is_a_inst),
    .rs1(_from_decoder_rs1),
    .rs2(_from_decoder_rs2),
    .pc(_from_f2_d_ppreg_pc_out),
    .mem_op(_from_decoder_mem_op),
    .alu_op(_from_decoder_alu_op),
    .operand1(d_e_ppreg_operand1),
    .operand2(d_e_ppreg_operand2),
    .rd(_from_decoder_rd),
    .wb_src(_from_decoder_wb_src),
    .csr_op(_from_decoder_csr_op),
    .reg2(de_operand2),

    .is_a_inst_out(_from_d_e_ppreg_is_a_inst_out),
    .rs1_out(_from_d_e_ppreg_rs1_out),
    .rs2_out(_from_d_e_ppreg_rs2_out),
    .rd_out(_from_d_e_ppreg_rd_out),
    .pc_out(_from_d_e_ppreg_pc_out),
    .operand1_out(_from_d_e_ppreg_operand1_out),
    .operand2_out(_from_d_e_ppreg_operand2_out),
    .mem_op_out(_from_d_e_ppreg_mem_op_out),
    .alu_op_out(_from_d_e_ppreg_alu_op_out),
    .wb_src_out(_from_d_e_ppreg_wb_src_out),
    .csr_op_out(_from_d_e_ppreg_csr_op_out),
    .reg2_out(_from_d_e_ppreg_reg2_out)
);


alu _alu(
    .alu_op(_from_d_e_ppreg_alu_op_out),
    .operand1(_from_d_e_ppreg_operand1_out),
    .operand2(_from_d_e_ppreg_operand2_out),
    
    .result(_from_alu_result)
);

csr_alu _csr_alu(
    .operand1(_from_d_e_ppreg_operand1_out),
    .operand2(_from_d_e_ppreg_operand2_out),
    .csr_in(_from_csr_reg_bank_rdata),
    .csr_calc_op(_from_d_e_ppreg_csr_op_out[14:12]),

    .csr_result(_from_csr_alu_csr_result)
);

e_m1_ppreg _e_m1_ppreg(
    .clk(clk),
    .nrst(nrst),
    .flush(_from_hazard_eliminator_flush_m1),
    .is_a_inst(_from_d_e_ppreg_is_a_inst_out),
    .pc(_from_d_e_ppreg_pc_out),
    .rs1(_from_d_e_ppreg_rs1_out),
    .rs2(_from_d_e_ppreg_rs2_out),
    .rd(_from_d_e_ppreg_rd_out),
    .mem_op(_from_d_e_ppreg_mem_op_out),
    .result(_from_alu_result),
    .wb_src(_from_d_e_ppreg_wb_src_out),
    .csr_op(_from_d_e_ppreg_csr_op_out),
    .csr_dataout(_from_csr_reg_bank_rdata),
    .csr_result(_from_csr_alu_csr_result),
    .operand2(_from_d_e_ppreg_reg2_out),

    .is_a_inst_out(_from_e_m1_ppreg_is_a_inst_out),
    .pc_out(_from_e_m1_ppreg_pc_out),
    .rs1_out(_from_e_m1_ppreg_rs1_out),
    .rs2_out(_from_e_m1_ppreg_rs2_out),
    .rd_out(_from_e_m1_ppreg_rd_out),
    .mem_op_out(_from_e_m1_ppreg_mem_op_out),
    .result_out(_from_e_m1_ppreg_result_out),
    .wb_src_out(_from_e_m1_ppreg_wb_src_out),
    .csr_op_out(_from_e_m1_ppreg_csr_op_out),
    .csr_dataout_out(_from_e_m1_ppreg_csr_dataout_out),
    .csr_result_out(_from_e_m1_ppreg_csr_result_out),
    .operand2_out(_from_e_m1_ppreg_operand2_out)
);

mmu _mmu(
    .mem_op(_from_e_m1_ppreg_mem_op_out),
    .store_data(_from_e_m1_ppreg_operand2_out),
    .addr(_from_e_m1_ppreg_result_out),

    .addrin(dsram_addr),
    .datain(dsram_datain),
    .wen(dsram_wen)
);

m1_m2_ppreg _m1_m2_ppreg(
    .clk(clk),
    .nrst(nrst),
    .is_a_inst(_from_e_m1_ppreg_is_a_inst_out),
    .result(_from_e_m1_ppreg_result_out),
    .rd(_from_e_m1_ppreg_rd_out),
    .wb_src(_from_e_m1_ppreg_wb_src_out),
    .pc(_from_e_m1_ppreg_pc_out),
    .mem_op(_from_e_m1_ppreg_mem_op_out),
    .csr_op(_from_e_m1_ppreg_csr_op_out),
    .csr_dataout(_from_e_m1_ppreg_csr_dataout_out),
    .csr_result(_from_e_m1_ppreg_csr_result_out),

    .is_a_inst_out(_from_m1_m2_ppreg_is_a_inst_out),
    .result_out(_from_m1_m2_ppreg_result_out),
    .rd_out(_from_m1_m2_ppreg_rd_out),
    .wb_src_out(_from_m1_m2_ppreg_wb_src_out),
    .pc_out(_from_m1_m2_ppreg_pc_out),
    .mem_op_out(_from_m1_m2_ppreg_mem_op_out),
    .csr_op_out(_from_m1_m2_ppreg_csr_op_out),
    .csr_dataout_out(_from_m1_m2_ppreg_csr_dataout_out),
    .csr_result_out(_from_m1_m2_ppreg_csr_result_out)
);

read_aligner _read_aligner(
    .mem_op(_from_m1_m2_ppreg_mem_op_out),
    .dataout(dsram_dataout),
    .addr(_from_m1_m2_ppreg_result_out),

    .aligned_dataout(_from_read_aligner_aligned_dataout)
);

m2_wb_ppreg _m2_wb_ppreg(
    .clk(clk),
    .nrst(nrst),
    .is_a_inst(_from_m1_m2_ppreg_is_a_inst_out),
    .dmem_dataout(_from_read_aligner_aligned_dataout),
    .result(_from_m1_m2_ppreg_result_out),
    .rd(_from_m1_m2_ppreg_rd_out),
    .wb_src(_from_m1_m2_ppreg_wb_src_out),
    .pc(_from_m1_m2_ppreg_pc_out),
    .csr_op(_from_m1_m2_ppreg_csr_op_out),
    .csr_dataout(_from_m1_m2_ppreg_csr_dataout_out),
    .csr_result(_from_m1_m2_ppreg_csr_result_out),

    .is_a_inst_out(_from_m2_wb_ppreg_is_a_inst_out),
    .dmem_dataout_out(_from_m2_wb_ppreg_dmem_dataout_out),
    .result_out(_from_m2_wb_ppreg_result_out),
    .rd_out(_from_m2_wb_ppreg_rd_out),
    .wb_src_out(_from_m2_wb_ppreg_wb_src_out),
    .pc_out(_from_m2_wb_ppreg_pc_out),
    .csr_op_out(_from_m2_wb_ppreg_csr_op_out),
    .csr_dataout_out(_from_m2_wb_ppreg_csr_dataout_out),
    .csr_result_out(_from_m2_wb_ppreg_csr_result_out)
);

wb_unit _wb_unit(
    .wb_src(_from_m2_wb_ppreg_wb_src_out),
    .rd(_from_m2_wb_ppreg_rd_out),
    .dmem_dataout(_from_m2_wb_ppreg_dmem_dataout_out),
    .result(_from_m2_wb_ppreg_result_out),
    .csr_dataout(_from_m2_wb_ppreg_csr_dataout_out),
    
    .wen(_from_wb_unit_wen),
    .waddr(_from_wb_unit_waddr),
    .wdata(_from_wb_unit_wdata)
);

forwarding_unit _forwarding_unit(
    .clk(clk),
    .nrst(nrst),
    .decoded_rs1(_from_decoder_rs1),
    .decoded_rs2(_from_decoder_rs2),

    .ex_rd(_from_d_e_ppreg_rd_out),
    .ex_result(_from_alu_result),
    .ex_csr_dataout(_from_csr_reg_bank_rdata),
    .ex_wb_src(_from_d_e_ppreg_wb_src_out),
    .ex_mem_op(_from_d_e_ppreg_mem_op_out),

    .m1_rd(_from_e_m1_ppreg_rd_out),
    .m1_result(_from_e_m1_ppreg_result_out),
    .m1_csr_dataout(_from_e_m1_ppreg_csr_dataout_out),
    .m1_mem_op(_from_e_m1_ppreg_mem_op_out),
    .m1_wb_src(_from_e_m1_ppreg_wb_src_out),

    .m2_rd(_from_m1_m2_ppreg_rd_out),
    .m2_result(_from_m1_m2_ppreg_result_out),
    .m2_csr_dataout(_from_m1_m2_ppreg_csr_dataout_out),
    .m2_dmem_dataout(_from_read_aligner_aligned_dataout),
    .m2_wb_src(_from_m1_m2_ppreg_wb_src_out),

    .wb_rd(_from_m2_wb_ppreg_rd_out),
    .wb_result(_from_m2_wb_ppreg_result_out),
    .wb_dmem_dataout(_from_m2_wb_ppreg_dmem_dataout_out),
    .wb_csr_dataout(_from_m2_wb_ppreg_csr_dataout_out),
    .wb_wb_src(_from_m2_wb_ppreg_wb_src_out),

    .de_operand1_sel(_from_forwarding_unit_de_operand1_sel),
    .de_operand2_sel(_from_forwarding_unit_de_operand2_sel),
    .to_de_operand1(_from_forwarding_unit_to_de_operand1),
    .to_de_operand2(_from_forwarding_unit_to_de_operand2)
);

hazard_eliminator _hazard_eliminator(
    .de_is_csr_op(_from_decoder_is_csr_op),
    .decoded_rs1(_from_decoder_rs1),
    .decoded_rs2(_from_decoder_rs2),

    .ex_is_a_inst(_from_d_e_ppreg_is_a_inst_out),
    .ex_rd(_from_d_e_ppreg_rd_out),
    .ex_mem_op(_from_d_e_ppreg_mem_op_out),

    .m1_is_a_inst(_from_e_m1_ppreg_is_a_inst_out),
    .m1_rd(_from_e_m1_ppreg_rd_out),
    .m1_mem_op(_from_e_m1_ppreg_mem_op_out),

    .m2_is_a_inst(_from_m1_m2_ppreg_is_a_inst_out),
    .wb_is_a_inst(_from_m2_wb_ppreg_is_a_inst_out),

    .stall_pc(_from_hazard_eliminator_stall_pc),
    .stall_f2(_from_hazard_eliminator_stall_f2),
    .stall_de(_from_hazard_eliminator_stall_de),
    .stall_ex(_from_hazard_eliminator_stall_ex),
    .flush_ex(_from_hazard_eliminator_flush_ex),
    .flush_m1(_from_hazard_eliminator_flush_m1)
);

csr_reg_bank _csr_reg_bank(
    .clk(clk),
    .nrst(nrst),
    
    .raddr(_from_d_e_ppreg_csr_op_out[11:0]),
    .rdata(_from_csr_reg_bank_rdata),

    .wen(_from_m2_wb_ppreg_csr_op_out[15]),
    .waddr(_from_m2_wb_ppreg_csr_op_out[11:0]),
    .wdata(_from_m2_wb_ppreg_csr_result_out),

    .wb_is_a_inst(_from_m2_wb_ppreg_is_a_inst_out)
);

endmodule