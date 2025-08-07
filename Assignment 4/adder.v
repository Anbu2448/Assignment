`timescale 1ns / 1ps

module adder(
  input a,
  input b,
  output sum);
  assign #5 sum = a+b; 
endmodule

