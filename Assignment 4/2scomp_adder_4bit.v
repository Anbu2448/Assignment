`timescale 1ns / 1ps

module twoscomp_adder_4bit(
  input wire [3:0] x,
  input wire [3:0] y,
  input wire  c_in,
  output wire [3:0] sum,
  output wire  c_out
);
  wire[3:0] t;
  
  assign t = y ^ {4{c_in}};
  assign {c_out, sum} = x + t + c_in;
  
endmodule
