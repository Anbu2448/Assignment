`timescale 1ns / 1ps

primitive udp_custom (d, a,b,c);
    input a,b,c;
    output d;
    table
     0 0 0  : 0;
     0 0 1  : 0;
     0 1 0  : 1;
     0 1 1  : 0;
     1 0 0  : 1;
     1 0 1  : 1;
     1 1 0  : 1;
     1 1 1  : 1;
     endtable
endprimitive

 