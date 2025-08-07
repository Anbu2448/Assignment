`timescale 1ns / 1ps

module OR_gate(
  input a,
  input b,
  output out);
  assign out = a | b;
endmodule