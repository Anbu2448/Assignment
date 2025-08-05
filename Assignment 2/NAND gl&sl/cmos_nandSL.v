`timescale 1ns / 1ps

module cmos_nandSL(a, b, y);
input a,b;
output y;
wire w0,w1;

    supply1 vdd;
    supply0 gnd;
    
    pmos (y,vdd,a);
    pmos (y,vdd,b);
    nmos (y,w1,a);
    nmos (w,gnd,b);
endmodule
