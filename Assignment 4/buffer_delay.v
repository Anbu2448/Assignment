`timescale 1ns / 1ps

module buffer_delay(
    input wire a,
    output wire y
);
    buf#(3:4:5) (y, a);
endmodule
