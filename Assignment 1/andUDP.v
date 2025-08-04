`timescale 1ns / 1ps

primitive test(c,a,b);
        input a,b;
        output c;
        table 
      0 ? : 0;
      1 0 : 0;
      1 1 : 1;
        endtable
endprimitive

