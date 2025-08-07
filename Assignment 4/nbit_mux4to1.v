`timescale 1ns / 1ps

module nbit_mux4to1(
  input in0,
  input in1,
  input in2,
  input in3,
  input sel,
  output y
);
  assign y = (sel == 2'b00) ? in0:
   	   	     (sel == 2'b01) ? in1:
 		     (sel == 2'b10) ? in2:
  							  in3;
endmodule


