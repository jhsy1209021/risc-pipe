module regfile(
    input clk,
    input nrst,
    
    input [4:0] raddr1,
    input [4:0] raddr2,
    output [31:0] rdata1,
    output [31:0] rdata2,
    
    input wen,
    input [4:0] waddr,
    input [31:0] wdata
);

reg [31:0] register_bank [0:31];

//Register
always@(posedge clk) begin
    if(~nrst) begin
        for(int i = 1; i < 32; i++) begin
            register_bank[i] <= 32'd0;
        end
    end

    else begin
        if(wen) begin
            register_bank[waddr] <= wdata;
        end
    end
end

//Read decoder --> rdata1
assign rdata1 = register_bank[raddr1];

//read decoder --> rdata2
assign rdata2 = register_bank[raddr2];

endmodule