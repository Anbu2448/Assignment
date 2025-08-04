`timescale 1ns / 1ps


module switchlevel_nand(input a,b, output out);
    wire w1;
    supply1 vdd;
    supply0 gnd;
    pmos(out,vdd,a);
    pmos(out,vdd,b);
    nmos(out,w1,a);
    nmos(w1,gnd,b);
endmodule
 
