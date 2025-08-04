`timescale 1ns / 1ps


module vector_manipulate;
  reg [3:0]bus;
  reg [3:0]busa;
  initial begin
    bus=4'b1010;
    busa[1]=bus[1];
    busa=bus[3:0];
    $display("%0b",busa);
  end
endmodule

