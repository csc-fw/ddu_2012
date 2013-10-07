`timescale 1ns / 1ps
module bit_counter(CLK, IN, CNT);
    input CLK;
    input [14:0] IN;
    output [3:0] CNT;

reg [3:0] CNT;
wire [3:0] R1,R2,R3,R4,R5,R6,R7,R8,R9,R10,R11,R12,R13,R14,R15;

always @(posedge CLK)
begin
   CNT <= R15;
end

assign R1 = {3'b000,IN[0]};
assign R2 = R1+IN[1];
assign R3 = R2+IN[2];
assign R4 = R3+IN[3];
assign R5 = R4+IN[4];
assign R6 = R5+IN[5];
assign R7 = R6+IN[6];
assign R8 = R7+IN[7];
assign R9 = R8+IN[8];
assign R10 = R9+IN[9];
assign R11 = R10+IN[10];
assign R12 = R11+IN[11];
assign R13 = R12+IN[12];
assign R14 = R13+IN[13];
assign R15 = R14+IN[14];

endmodule
