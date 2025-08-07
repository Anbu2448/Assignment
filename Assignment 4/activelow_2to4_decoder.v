`timescale 1ns / 1ps

module activelow_2to4_decoder(
    input  wire [1:0] sel,    
    output wire [3:0] y        
);
	assign y[0] = (sel == 2'b00) ? 1'b0 : 1'b1;
	assign y[1] = (sel == 2'b01) ? 1'b0 : 1'b1;
	assign y[2] = (sel == 2'b10) ? 1'b0 : 1'b1;
	assign y[3] = (sel == 2'b11) ? 1'b0 : 1'b1;
endmodule


