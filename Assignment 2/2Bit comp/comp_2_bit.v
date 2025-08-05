`timescale 1ns / 1ps

module comp_2_bit(a1, a0, b1, b0, na1, na0, nb1, nb0, a_gt_b, a_eq_b, a_lt_b);
input a1,a0,b1,b0;
output na1,na0,nb1,nb0,a_gt_b,a_eq_b,a_lt_b;
wire w1,w2,w3,w4,w5,w6,w7,w8;
    not (na1,a1);
    not (na0,a0);
    not (nb1,b1);
    not (nb0,b0);
    and (w1,a1,na0);
    and (w2,b1,na0,nb0);
    and (w3,a1,b1,nb0);
    or (a_gt_b,w1,w2,w3);
    nor (w4,a1,a0);
    nor (w5,b1,b0);
    and (a_eq_b,w4,w5);
    and (w6,na1,a0);
    and (w7,na1,b0,na0);
    and (w8,nb1,a0,b0);
    or (a_lt_b,w6,w7,w8);
endmodule

