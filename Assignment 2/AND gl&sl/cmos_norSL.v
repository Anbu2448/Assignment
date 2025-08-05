`timescale 1ns / 1ps

module cmos_andSL(a, b, y);
input a,b;
output y;
wire w1,w2;
    supply1 vdd;
    supply0 gnd;
wire pmos_c;
    pmos(y,vdd,a);
    pmos(y,w,b);

    nmos(y,gnd,a);
    nmos(y,gnd,b);
endmodule
