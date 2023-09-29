module hazard_eliminator(
    input de_is_csr_op,
    input [4:0] decoded_rs1,
    input [4:0] decoded_rs2,

    input ex_is_a_inst,
    input [4:0] ex_rd,
    input [4:0] ex_mem_op,

    input m1_is_a_inst,
    input [4:0] m1_rd,
    input [4:0] m1_mem_op,

    input m2_is_a_inst,
    input wb_is_a_inst,

    output reg stall_pc,
    output reg stall_f2,
    output reg stall_de,
    output reg stall_ex,
    output reg flush_ex,
    output reg flush_m1
);

reg load_use_in_de;
reg load_use_in_ex;
//wire csr_stall;

//Load use Hazard --> Detect if there is a hazard
    //use in de --> stall F1/F2/D/E 1 cycle
always@(*) begin
    if((decoded_rs1 == ex_rd) && (ex_mem_op[4:3] == `MEM_READ))
        load_use_in_de = 1'b1;
    else if((decoded_rs2 == ex_rd) && (ex_mem_op[4:3] == `MEM_READ))
        load_use_in_de = 1'b1;
    else if((decoded_rs1 == m1_rd) && (m1_mem_op[4:3] == `MEM_READ))
        load_use_in_de = 1'b1;
    else if((decoded_rs2 == m1_rd) && (m1_mem_op[4:3] == `MEM_READ))
        load_use_in_de = 1'b1;
    else
        load_use_in_de = 1'b0;
end

//CSR Hazard --> stall F1/F2/D until there is no instruction at the rear.
//assign csr_stall = de_is_csr_op


//Output Stall/Flush signal to eleminate hazard
always@(*) begin
    //Load use: use in de
    priority if((load_use_in_de == 1'b1) && ((ex_is_a_inst == 1'b1) || (m1_is_a_inst == 1'b1))) begin
        stall_pc = 1'b1;
        stall_f2 = 1'b1;
        stall_de = 1'b1;
        stall_ex = 1'b0;
        flush_ex = 1'b1;
        flush_m1 = 1'b0;
    end

    else if((de_is_csr_op == 1'b1) && ((ex_is_a_inst == 1'b1) || (m1_is_a_inst == 1'b1) || (m2_is_a_inst == 1'b1) || (wb_is_a_inst == 1'b1))) begin
        stall_pc = 1'b1;
        stall_f2 = 1'b1;
        stall_de = 1'b1;
        stall_ex = 1'b0;
        flush_ex = 1'b1;
        flush_m1 = 1'b0;
    end

    else begin
        stall_pc = 1'b0;
        stall_f2 = 1'b0;
        stall_de = 1'b0;
        stall_ex = 1'b0;
        flush_ex = 1'b0;
        flush_m1 = 1'b0;
    end
end

endmodule