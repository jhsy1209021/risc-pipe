module mmu(
    input [4:0] mem_op,
    input [31:0] store_data,
    input [31:0] addr,

    output [15:0] addrin,
    output [31:0] datain,
    output reg [3:0] wen
);
reg [31:0] store_aligned;

assign addrin = addr[15:0];
assign datain = store_aligned;

always@(*) begin
    if(mem_op[4:3] == `MEM_WRITE) begin
        unique case(mem_op[1:0])
            `MEM_BYTE: begin
                unique case(addr[1:0])
                    2'b00:
                        wen = 4'b1110;
                    2'b01:
                        wen = 4'b1101;
                    2'b10:
                        wen = 4'b1011;
                    2'b11:
                        wen = 4'b0111;
                endcase
            end

            `MEM_HALF: begin
                unique case(addr[1:0])
                    2'b00:
                        wen = 4'b1100;
                    2'b01:
                        wen = 4'b1001;
                    2'b10:
                        wen = 4'b0011;
                    default:
                    //!!!!!The cross word r/w not implement!!!!!//
                        wen = 4'b1111;
                endcase
            end

            `MEM_WORD:
                wen = 4'b0000;
            default:
                wen = 4'b1111;
        endcase
    end

    else
        wen = 4'b1111;
end

always@(*) begin
    unique case(mem_op[1:0])
        `MEM_BYTE: begin
            unique case(addr[1:0])
                2'b00:
                    store_aligned = { 24'd0, store_data[7:0] };
                2'b01:
                    store_aligned = { 16'd0, store_data[7:0], 8'd0 };
                2'b10:
                    store_aligned = { 8'd0, store_data[7:0], 16'd0 };
                2'b11:
                    store_aligned = { store_data[7:0], 24'd0 };
            endcase
        end

        `MEM_HALF: begin
            unique case(addr[1:0])
                2'b00:
                    store_aligned = { 16'd0, store_data[15:0] };
                2'b01:
                    store_aligned = { 8'd0, store_data[15:0], 8'd0 };
                2'b10:
                    store_aligned = { store_data[15:0], 16'd0 };
                default:
                    //!!!!!The cross word r/w not implement!!!!!//
                    store_aligned = 32'd0;
            endcase
        end

        `MEM_WORD: begin
            store_aligned = store_data;
        end

        default:
            store_aligned = 32'd0;
    endcase
end
endmodule