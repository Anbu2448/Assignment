`timescale 1ns / 1ps

module not_gate_delay(
  input wire a,
  output wire y
);
  not#(3,5) (y ,a);
endmodule

