`timescale 1ns / 1ps

module dlatch_usingmux2to1(
input wire d,
input wire en,
output reg q
);
always@(*)begin
q = en ? d : q;
end
endmodule
