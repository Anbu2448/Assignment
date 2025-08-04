`timescale 1ns / 1ps

module bit_select9;
    reg [7:0]data;
    initial begin
    data=8'b10101100;
    $display("%b",data[3]);
    end
endmodule

