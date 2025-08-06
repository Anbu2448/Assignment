`timescale 1ns / 1ps

module mux_8to1_forloop(
input [7:0]a0,
input [2:0]s0,
output reg y
);
integer i;
always@(*)begin
    y=0;
    for(i=0; i<8; i=i+1) begin
       if(s0 == i[2:0])
       y = a0[i];
   end
  end
endmodule
