`timescale 1ns / 1ps

module N_bitcomp(
  input wire a,
  input wire b,
  output wire a_lt_b,
  output wire a_eq_b,
  output wire a_gt_b
);
  assign a_lt_b = (a<b);
  assign a_eq_b = (a==b);
  assign a_gt_b = (a>b);
endmodule
