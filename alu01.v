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
    4'b1011: if (a>=b) begin
        alu_out = b;
    end else begin alu_out = a; end 
    default: alu_out = 0;
    endcase
end
endmodule


