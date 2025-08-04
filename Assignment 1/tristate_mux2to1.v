`timescale 1ns / 1ps

module tristate_mux2to1(input  s,
                        input i0,i1,
                        output y);
                        wire y1,y2;
    bufif0 (y1,i0,s);
    bufif1 (y2,i1,s);
    or (y,y1,y2);
  endmodule


