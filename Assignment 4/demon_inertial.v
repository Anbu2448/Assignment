`timescale 1ns / 1ps

module demon_inertial(
  input in,
  output out
);
  assign #5 in = out;
endmodule

module demon_transport(
  input in,
  output out
);
  buf #(5) (out,in);
endmodule


