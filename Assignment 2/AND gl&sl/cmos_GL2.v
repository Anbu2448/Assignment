`timescale 1ns / 1ps

module cmos_andGL2(a, b, y);
input a,b;
output y;
    wire out;
    and a1(out,a,b);
    not a2(y,out); 
endmodule
