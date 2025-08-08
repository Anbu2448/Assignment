`timescale 1ns / 1ps

module gates_using_mux(
    input wire a,
    input wire b,
    output wire AND_out,
    output wire OR_out,
    output wire NAND_out,
    output wire NOR_out,
    output wire XOR_out,
    output wire XNOR_out
    );
    
    assign AND_out = (a)?b:1'b0;
    assign OR_out = (a)?1'b1:b;
    assign NAND_out = (a)?~b:1'b0;
    assign NOR_out = (a)?1'b0:~b;
    assign XOR_out = (a)?~b:b;
    assign XNOR_out = (a)?b:~b;
endmodule
