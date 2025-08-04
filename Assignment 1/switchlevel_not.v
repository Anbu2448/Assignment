`timescale 1ns / 1ps

module switchlevel_not(input a,output b);
    supply1 vdd;
    supply0 gnd;

  pmos(b,vdd,a);
  nmos(b,gnd,a);

endmodule

 
