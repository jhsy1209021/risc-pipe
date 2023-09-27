module csr_reg_bank(
    input clk,
    input nrst,
    
    input [11:0] raddr,
    output [31:0] rdata,

    input wen,
    input [11:0] waddr,
    input [31:0] wdata,

    input wb_is_a_inst
);

reg [31:0] registers[0:3];
reg [1:0] decoded_waddr;
reg [1:0] decoded_raddr;

//Write addr decoder
always@(*) begin
    case(waddr)
        `CSR_CYCLE:
            decoded_waddr = 2'd0;
        `CSR_CYCLEH:
            decoded_waddr = 2'd1;
        `CSR_INSTRET:
            decoded_waddr = 2'd2;
        `CSR_INSTRETH:
            decoded_waddr = 2'd3;

        default:
            decoded_waddr = 2'd0;
    endcase
end

//CSR Register
always@(posedge clk) begin
    if(~nrst) begin
        for(int i = 0; i < 4; i++)
            registers[i] <= 32'd0;
    end

    else begin
        if(wen)
            registers[decoded_waddr] <= wdata;
        
        //Define every CSR behavior
        else begin
            //CYCLE
            registers[0] <= registers[0] + 32'd1;

            //CYCLEH
            if(registers[0] == 32'hFFFFFFFF)
                registers[1] <= registers[1] + 32'h1;

            //INSTRET
            if(wb_is_a_inst == 1'b1) begin
                registers[2] <= registers[2] + 32'h1;
            end

            //INSTRETH
            if(wb_is_a_inst == 1'b1) begin
                if(registers[2] == 32'hFFFFFFFF)
                    registers[3] <= registers[3] + 32'h1;
            end
        end
    end
end

//Read addr decoder
always@(*) begin
    case(raddr)
        `CSR_CYCLE:
            decoded_raddr = 2'd0;
        `CSR_CYCLEH:
            decoded_raddr = 2'd1;
        `CSR_INSTRET:
            decoded_raddr = 2'd2;
        `CSR_INSTRETH:
            decoded_raddr = 2'd3;

        default:
            decoded_raddr = 2'd0;
    endcase
end

assign rdata = registers[decoded_raddr];

endmodule