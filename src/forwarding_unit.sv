module forwarding_unit(
    input clk,
    input nrst,
    input stalled,
    input de_is_branch,
    input [4:0] decoded_rs1,
    input [4:0] decoded_rs2,

    input [4:0] ex_rs1,
    input [4:0] ex_rs2,
    input [4:0] ex_rd,
    input [31:0] ex_result,
    input [31:0] ex_csr_dataout,
    input [2:0] ex_wb_src,
    input [4:0] ex_mem_op,
    input [1:0] ex_data_dependency_check,

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
    input [31:0] wb_csr_dataout
    input [2:0] wb_wb_src,

    output reg branch_comparator_reg1_sel,
    output reg branch_comparator_reg2_sel,
    output reg [31:0] to_de_reg1,
    output reg [31:0] to_de_reg2,

    output reg alu_reg1_sel,
    output reg alu_reg2_sel,
    output reg [31:0] to_ex_reg1,
    output reg [31:0] to_ex_reg2
);

reg has_stalled;
reg [4:0] after_wb_rd;
reg [31:0] after_wb_reg_wdata;
reg [2:0] after_wb_wb_src;
//Store previous wb stage data
//This data will be forwarded to corresponding stage when previous cycle is stalled by data hazard unit.
always@(posedge clk) begin
    if(~nrst) begin
        has_stalled <= 1'd0;
        after_wb_rd <= 5'd0;
        after_wb_reg_wdata <= 32'd0;
        after_wb_wb_src <= 3'd0;
    end

    else begin
        has_stalled <= stalled;
        after_wb_rd <= wb_rd;
        after_wb_wb_src <= wb_wb_src;
        case(wb_wb_src)
            `WB_DATAMEM:
                after_wb_reg_wdata <= wb_dmem_dataout;
            `WB_RESULT:
                after_wb_reg_wdata <= wb_result;
            `WB_CSR_DATAOUT:
                after_wb_reg_wdata <= wb_csr_dataout;
            default:
                after_wb_reg_wdata <= 32'd0;
        endcase
    end
end

//RAW >>> branch_comparator read
    //Check decoded_rs1 needs forwarding or not
always@(*) begin
    //Execute
    priority if((ex_wb_src[2] == 1'b1) && (decoded_rs1 == ex_rd)) begin
        if(ex_mem_op[4:3] == `MEM_READ) begin
            branch_comparator_reg1_sel = 1'b0;
            to_de_reg1 = 32'd0;
        end

        else begin
            branch_comparator_reg1_sel = 1'b1;
            case(ex_wb_src[1:0])
                `WB_DATAMEM:
                    to_de_reg1 = 32'd0;
                `WB_RESULT:
                    to_de_reg1 = ex_result;
                `WB_CSR_DATAOUT:
                    to_de_reg1 = ex_csr_dataout;
                default:
                    to_de_reg1 = 32'd0;
            endcase
        end
    end

    //Mem1
    else if((m1_wb_src[2] == 1'b1) && (decoded_rs1 == m1_rd)) begin
        if(m1_mem_op[4:3] == `MEM_READ) begin
            branch_comparator_reg1_sel = 1'b0;
            to_de_reg1 = 32'd0;
        end

        else begin
            branch_comparator_reg1_sel = 1'b1;
            case(m1_wb_src[1:0])
                `WB_DATAMEM:
                    to_de_reg1 = 32'd0;
                `WB_RESULT:
                    to_de_reg1 = m1_result;
                `WB_CSR_DATAOUT:
                    to_de_reg1 = m1_csr_dataout;
                default:
                    to_de_reg1 = 32'd0;
            endcase
        end
    end

    //Mem2
    else if((m2_wb_src[2] == 1'b1) && (decoded_rs1 == m2_rd)) begin
        branch_comparator_reg1_sel = 1'b1;
        case(m2_wb_src[1:0])
            `WB_DATAMEM:
                to_de_reg1 = m2_dmem_dataout;
            `WB_RESULT:
                to_de_reg1 = m2_result;
            `WB_CSR_DATAOUT:
                to_de_reg1 = m2_csr_dataout;
            default:
                to_de_reg1 = 32'd0;
        endcase
    end

    //WB
    else if((wb_wb_src[2] == 1'b1) && (decoded_rs1 == wb_rd)) begin
        branch_comparator_reg1_sel = 1'b1;
        case(wb_wb_src[1:0])
            `WB_DATAMEM:
                to_de_reg1 = wb_dmem_dataout;
            `WB_RESULT:
                to_de_reg1 = wb_result;
            `WB_CSR_DATAOUT:
                to_de_reg1 = wb_csr_dataout;
            default:
                to_de_reg1 = 32'd0;
        endcase
    end

    else begin
        branch_comparator_reg1_sel = 1'b0;
        to_de_reg1 = 32'd0;
    end
end

//RAW >>> branch_comparator read
    //Check de_reg2 needs forwarding or not
always@(*) begin
    //Execute
    priority if((ex_wb_src[2] == 1'b1) && (decoded_rs2 == ex_rd)) begin
        if(ex_mem_op[4:3] == `MEM_READ) begin
            branch_comparator_reg2_sel = 1'b0;
            to_de_reg2 = 32'd0;
        end

        else begin
            branch_comparator_reg2_sel = 1'b1;
            case(ex_wb_src[1:0])
                `WB_DATAMEM:
                    to_de_reg2 = 32'd0;
                `WB_RESULT:
                    to_de_reg2 = ex_result;
                `WB_CSR_DATAOUT:
                    to_de_reg2 = ex_csr_dataout;
                default:
                    to_de_reg2 = 32'd0;
            endcase
        end
    end

    //Mem1
    else if((m1_wb_src[2] == 1'b1) && (decoded_rs2 == m1_rd)) begin
        if(m1_mem_op[4:3] == `MEM_READ) begin
            branch_comparator_reg2_sel = 1'b0;
            to_de_reg2 = 32'd0;
        end

        else begin
            branch_comparator_reg2_sel = 1'b1;
            case(m1_wb_src[1:0])
                `WB_DATAMEM:
                    to_de_reg2 = 32'd0;
                `WB_RESULT:
                    to_de_reg2 = m1_result;
                `WB_CSR_DATAOUT:
                    to_de_reg2 = m1_csr_dataout;
                default:
                    to_de_reg2 = 32'd0;
            endcase
        end
    end

    //Mem2
    else if((m2_wb_src[2] == 1'b1) && (decoded_rs2 == m2_rd)) begin
        branch_comparator_reg2_sel = 1'b1;
        case(m2_wb_src[1:0])
            `WB_DATAMEM:
                to_de_reg2 = m2_dmem_dataout;
            `WB_RESULT:
                to_de_reg2 = m2_result;
            `WB_CSR_DATAOUT:
                to_de_reg2 = m2_csr_dataout;
            default:
                to_de_reg2 = 32'd0;
        endcase
    end

    //WB
    else if((wb_wb_src[2] == 1'b1) && (decoded_rs2 == wb_rd)) begin
        branch_comparator_reg2_sel = 1'b1;
        case(wb_wb_src[1:0])
            `WB_DATAMEM:
                to_de_reg2 = wb_dmem_dataout;
            `WB_RESULT:
                to_de_reg2 = wb_result;
            `WB_CSR_DATAOUT:
                to_de_reg2 = wb_csr_dataout;
            default:
                to_de_reg2 = 32'd0;
        endcase
    end

    else begin
        branch_comparator_reg2_sel = 1'b0;
        to_de_reg2 = 32'd0;
    end
end

//RAW >>> ALU read
    //Check ex_rs1 needs forwarding or not
always@(*) begin
    //Mem1
    priority if((m1_wb_src[2] == 1'b1) && (ex_rs1 == m1_rd) && (ex_data_dependency_check[0] == 1'b1)) begin
        if(m1_mem_op[4:3] == `MEM_READ) begin
            alu_reg1_sel = 1'b0;
            to_ex_reg1 = 32'd0;
        end

        else begin
            alu_reg1_sel = 1'b1;
            case(m1_wb_src[1:0])
                `WB_DATAMEM:
                    to_ex_reg1 = 32'd0;
                `WB_RESULT:
                    to_ex_reg1 = m1_result;
                `WB_CSR_DATAOUT:
                    to_ex_reg1 = m1_csr_dataout;
                default:
                    to_ex_reg1 = 32'd0;
            endcase
        end
    end

    //Mem2
    else if((m2_wb_src[2] == 1'b1) && (ex_rs1 == m2_rd) && (ex_data_dependency_check[0] == 1'b1)) begin
        alu_reg1_sel = 1'b1;
        case(m2_wb_src[1:0])
            `WB_DATAMEM:
                to_ex_reg1 = m2_dmem_dataout;
            `WB_RESULT:
                to_ex_reg1 = m2_result;
            `WB_CSR_DATAOUT:
                to_ex_reg1 = m2_csr_dataout;
            default:
                to_ex_reg1 = 32'd0;
        endcase
    end

    //WB
    else if((wb_wb_src[2] == 1'b1) && (ex_rs1 == wb_rd) && (ex_data_dependency_check[0] == 1'b1)) begin
        alu_reg1_sel = 1'b1;
        case(wb_wb_src[1:0])
            `WB_DATAMEM:
                to_ex_reg1 = wb_dmem_dataout;
            `WB_RESULT:
                to_ex_reg1 = wb_result;
            `WB_CSR_DATAOUT:
                to_ex_reg1 = wb_csr_dataout;
            default:
                to_ex_reg1 = 32'd0;
        endcase
    end

    //Previous WB
    else if((after_wb_wb_src[2] == 1'b1) && (ex_rs1 == after_wb_rd) && (ex_data_dependency_check[0] == 1'b1) && (has_stalled == 1'b1)) begin
        alu_reg1_sel = 1'b1;
        to_ex_reg1 = after_wb_reg_wdata;
    end

    else begin
        alu_reg1_sel = 1'b0;
        to_ex_reg1 = 32'd0;
    end
end

//RAW >>> ALU read
    //Check ex_rs2 needs forwarding or not
always@(*) begin
    //Mem1
    priority if((m1_wb_src[2] == 1'b1) && (ex_rs2 == m1_rd) && (ex_data_dependency_check[1] == 1'b1)) begin
        if(m1_mem_op[4:3] == `MEM_READ) begin
            alu_reg2_sel = 1'b0;
            to_ex_reg2 = 32'd0;
        end

        else begin
            alu_reg2_sel = 1'b1;
            case(m1_wb_src[1:0])
                `WB_DATAMEM:
                    to_ex_reg2 = 32'd0;
                `WB_RESULT:
                    to_ex_reg2 = m1_result;
                `WB_CSR_DATAOUT:
                    to_ex_reg2 = m1_csr_dataout;
                default:
                    to_ex_reg2 = 32'd0;
            endcase
        end
    end

    //Mem2
    else if((m2_wb_src[2] == 1'b1) && (ex_rs2 == m2_rd) && (ex_data_dependency_check[1] == 1'b1)) begin
        alu_reg2_sel = 1'b1;
        case(m2_wb_src[1:0])
            `WB_DATAMEM:
                to_ex_reg2 = m2_dmem_dataout;
            `WB_RESULT:
                to_ex_reg2 = m2_result;
            `WB_CSR_DATAOUT:
                to_ex_reg2 = m2_csr_dataout;
            default:
                to_ex_reg2 = 32'd0;
        endcase
    end

    //WB
    else if((wb_wb_src[2] == 1'b1) && (ex_rs2 == wb_rd) && (ex_data_dependency_check[1] == 1'b1)) begin
        alu_reg2_sel = 1'b1;
        case(wb_wb_src[1:0])
            `WB_DATAMEM:
                to_ex_reg2 = wb_dmem_dataout;
            `WB_RESULT:
                to_ex_reg2 = wb_result;
            `WB_CSR_DATAOUT:
                to_ex_reg2 = wb_csr_dataout;
            default:
                to_ex_reg2 = 32'd0;
        endcase
    end

    //Previous WB
    else if((after_wb_wb_src[2] == 1'b1) && (ex_rs2 == after_wb_rd) && (ex_data_dependency_check[1] == 1'b1) && (has_stalled == 1'b1)) begin
        alu_reg2_sel = 1'b1;
        to_ex_reg2 = after_wb_reg_wdata;
    end

    else begin
        alu_reg2_sel = 1'b0;
        to_ex_reg2 = 32'd0;
    end
end


endmodule