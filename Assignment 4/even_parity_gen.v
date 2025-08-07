`timescale 1ns / 1ps

module even_parity_gen(
  input [7:0] x,
  output [8:0] y
);
  wire ep;
  wire op;
  
  assign ep = ^x;
  assign op = ~ep;
  assign y = {op, x};
  
endmodule


