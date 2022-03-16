`include "alu01.v"
//testbench
module alu01_tb;
reg [7:0] a,b;
reg [3:0] op;
wire [8:0] alu_out;
alu01 instance0 (.a(a),.b(b),.op(op),.alu_out(alu_out));
initial begin
    op=4'b000;a=8'b01101011;b=8'b10101010;
    #10 op=4'b0001;a=8'b01101011;b=8'b10101010;
    #10 op=4'b0010;a=8'b01101011;b=8'b10101010;
    #10 op=4'b0011;a=8'b01101011;b=8'b10101010;
    #10 op=4'b0100;a=8'b01101011;b=8'b10101010;
    #10 op=4'b0101;a=8'b01101011;b=8'b10101010;
    #10 op=4'b0110;a=8'b01101011;b=8'b10101010;
    #10 op=4'b0111;a=8'b01101011;b=8'b10101010;
    #10 op=4'b1000;a=8'b01101011;b=8'b10101010;
    #10 op=4'b1001;a=8'b01101011;b=8'b10101010;
    #10 op=4'b1010;a=8'b01101011;b=8'b10101010;
    #10;
end
initial begin
    $monitor("%t | op=%b | a=%b | b=%b | output=%b",$time,op,a,b,alu_out);
    $dumpfile("alu01_dump.vcd");
    $dumpvars();
end
endmodule
