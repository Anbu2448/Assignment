`timescale 1ns / 1ps

module conca_oper(
  input [2:0] a,
  input [1:0] b,
  input [3:0] c,
  output [4:0] y
);
  assign y = {a, b[0], c[1]};
  
endmodule


