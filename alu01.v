module alu01(a,b,op,alu_out);
input [7:0] a,b;
input [3:0] op;
output reg [8:0] alu_out;
always @(*)
begin
    case(op) // defining the instructions
    4'b0000: alu_out = 0;
    4'b0001: alu_out = a+b;
    4'b0010: alu_out = a-b;
    4'b0011: alu_out = a&b;
    4'b0100: alu_out = a|b;
    4'b0101: alu_out = ~a;
    4'b0110: alu_out = ~b;
    4'b0111: alu_out = a^b;
    4'b1000: alu_out = a~|b;
    4'b1001: alu_out = a~^b;
    4'b1010: if (a>b) begin
        alu_out = a;
    end else begin alu_out = b; end
    default: alu_out = 0;
    endcase
end
endmodule
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



