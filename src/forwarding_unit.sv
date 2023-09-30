module forwarding_unit(
    input [4:0] decoded_rs1,
    input [4:0] decoded_rs2,

    input [4:0] ex_rd,
    input [31:0] ex_result,
    input [31:0] ex_csr_dataout,
    input [2:0] ex_wb_src,
    input [4:0] ex_mem_op,

    input [4:0] m1_rd,
    input [31:0] m1_result,
    input [31:0] m1_csr_dataout,
    input [4:0] m1_mem_op,
    input [2:0] m1_wb_src,

    input [4:0] m2_rd,
    input [31:0] m2_result,
    input [31:0] m2_csr_dataout,
    input [31:0] m2_dmem_dataout,
    input [2:0] m2_wb_src,

    input [4:0] wb_rd,
    input [31:0] wb_result,
    input [31:0] wb_dmem_dataout,
    input [31:0] wb_csr_dataout,
    input [2:0] wb_wb_src,

    output reg de_operand1_sel,
    output reg de_operand2_sel,
    output reg [31:0] to_de_operand1,
    output reg [31:0] to_de_operand2
);

//RAW >>> rs1 read
    //Check decoded_rs1 needs forwarding or not
always@(*) begin
    //Execute
    priority if((ex_wb_src[2] == 1'b1) && (decoded_rs1 == ex_rd) && (decoded_rs1 != 5'd0)) begin
        if(ex_mem_op[4:3] == `MEM_READ) begin
            de_operand1_sel = 1'b0;
            to_de_operand1 = 32'd0;
        end

        else begin
            de_operand1_sel = 1'b1;
            case(ex_wb_src[1:0])
                `WB_DATAMEM:
                    to_de_operand1 = 32'd0;
                `WB_RESULT:
                    to_de_operand1 = ex_result;
                `WB_CSR_DATAOUT:
                    to_de_operand1 = ex_csr_dataout;
                default:
                    to_de_operand1 = 32'd0;
            endcase
        end
    end

    //Mem1
    else if((m1_wb_src[2] == 1'b1) && (decoded_rs1 == m1_rd) && (decoded_rs1 != 5'd0)) begin
        if(m1_mem_op[4:3] == `MEM_READ) begin
            de_operand1_sel = 1'b0;
            to_de_operand1 = 32'd0;
        end

        else begin
            de_operand1_sel = 1'b1;
            case(m1_wb_src[1:0])
                `WB_DATAMEM:
                    to_de_operand1 = 32'd0;
                `WB_RESULT:
                    to_de_operand1 = m1_result;
                `WB_CSR_DATAOUT:
                    to_de_operand1 = m1_csr_dataout;
                default:
                    to_de_operand1 = 32'd0;
            endcase
        end
    end

    //Mem2
    else if((m2_wb_src[2] == 1'b1) && (decoded_rs1 == m2_rd) && (decoded_rs1 != 5'd0)) begin
        de_operand1_sel = 1'b1;
        case(m2_wb_src[1:0])
            `WB_DATAMEM:
                to_de_operand1 = m2_dmem_dataout;
            `WB_RESULT:
                to_de_operand1 = m2_result;
            `WB_CSR_DATAOUT:
                to_de_operand1 = m2_csr_dataout;
            default:
                to_de_operand1 = 32'd0;
        endcase
    end

    //WB
    else if((wb_wb_src[2] == 1'b1) && (decoded_rs1 == wb_rd) && (decoded_rs1 != 5'd0)) begin
        de_operand1_sel = 1'b1;
        case(wb_wb_src[1:0])
            `WB_DATAMEM:
                to_de_operand1 = wb_dmem_dataout;
            `WB_RESULT:
                to_de_operand1 = wb_result;
            `WB_CSR_DATAOUT:
                to_de_operand1 = wb_csr_dataout;
            default:
                to_de_operand1 = 32'd0;
        endcase
    end

    else begin
        de_operand1_sel = 1'b0;
        to_de_operand1 = 32'd0;
    end
end

//RAW >>> rs2 read
    //Check de_reg2 needs forwarding or not
always@(*) begin
    //Execute
    priority if((ex_wb_src[2] == 1'b1) && (decoded_rs2 == ex_rd) && (decoded_rs2 != 5'd0)) begin
        if(ex_mem_op[4:3] == `MEM_READ) begin
            de_operand2_sel = 1'b0;
            to_de_operand2 = 32'd0;
        end

        else begin
            de_operand2_sel = 1'b1;
            case(ex_wb_src[1:0])
                `WB_DATAMEM:
                    to_de_operand2 = 32'd0;
                `WB_RESULT:
                    to_de_operand2 = ex_result;
                `WB_CSR_DATAOUT:
                    to_de_operand2 = ex_csr_dataout;
                default:
                    to_de_operand2 = 32'd0;
            endcase
        end
    end

    //Mem1
    else if((m1_wb_src[2] == 1'b1) && (decoded_rs2 == m1_rd) && (decoded_rs2 != 5'd0)) begin
        if(m1_mem_op[4:3] == `MEM_READ) begin
            de_operand2_sel = 1'b0;
            to_de_operand2 = 32'd0;
        end

        else begin
            de_operand2_sel = 1'b1;
            case(m1_wb_src[1:0])
                `WB_DATAMEM:
                    to_de_operand2 = 32'd0;
                `WB_RESULT:
                    to_de_operand2 = m1_result;
                `WB_CSR_DATAOUT:
                    to_de_operand2 = m1_csr_dataout;
                default:
                    to_de_operand2 = 32'd0;
            endcase
        end
    end

    //Mem2
    else if((m2_wb_src[2] == 1'b1) && (decoded_rs2 == m2_rd) && (decoded_rs2 != 5'd0)) begin
        de_operand2_sel = 1'b1;
        case(m2_wb_src[1:0])
            `WB_DATAMEM:
                to_de_operand2 = m2_dmem_dataout;
            `WB_RESULT:
                to_de_operand2 = m2_result;
            `WB_CSR_DATAOUT:
                to_de_operand2 = m2_csr_dataout;
            default:
                to_de_operand2 = 32'd0;
        endcase
    end

    //WB
    else if((wb_wb_src[2] == 1'b1) && (decoded_rs2 == wb_rd) && (decoded_rs2 != 5'd0)) begin
        de_operand2_sel = 1'b1;
        case(wb_wb_src[1:0])
            `WB_DATAMEM:
                to_de_operand2 = wb_dmem_dataout;
            `WB_RESULT:
                to_de_operand2 = wb_result;
            `WB_CSR_DATAOUT:
                to_de_operand2 = wb_csr_dataout;
            default:
                to_de_operand2 = 32'd0;
        endcase
    end

    else begin
        de_operand2_sel = 1'b0;
        to_de_operand2 = 32'd0;
    end
end


endmodule