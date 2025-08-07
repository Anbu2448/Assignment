`timescale 1ns / 1ps

module replic_oper(
  input [1:0] a,
  input [3:0] b,
  input [2:0] c,
  output [7:0] y
);
  
  assign y = {a, {4{b[0]}}, c[1]};
  
endmodule 

