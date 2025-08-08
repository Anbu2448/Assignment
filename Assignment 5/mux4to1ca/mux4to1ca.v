`timescale 1ns / 1ps

module mux4to1ca (
    input wire i0, i1, i2, i3,
    input wire S0, S1,
    output wire Y
);
    assign Y = S1 ? (S0 ? i3 : i2) : (S0 ? i1 : i0);
endmodule

