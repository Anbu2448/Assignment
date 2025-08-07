`timescale 1ns / 1ps

module detect_zero(
  input x,
  output zero,
  output one
);
  assign zero = ~(|x);
  assign one = &x;
  endmodule

