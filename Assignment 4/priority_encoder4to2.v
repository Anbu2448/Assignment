`timescale 1ns / 1ps

module priority_encoder4to2(
  input [3:0] in,
  output [3:0] out,
  output valid
);
  assign out = (in[3]) ? 2'b11:
   			   (in[2]) ? 2'b10:
    		   (in[1]) ? 2'b01:
    		             2'b00;
  assign valid = in;
endmodule

