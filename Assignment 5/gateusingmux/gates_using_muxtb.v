`timescale 1ns / 1ps

module gates_using_muxtb;
reg a,b;
wire AND_out,OR_out,NAND_out,NOR_out,XOR_out,XNOR_out;
gates_using_mux uut(.a(a), .b(b), .AND_out(AND_out), .OR_out(OR_out), .NAND_out(NAND_out),
                       .NOR_out(NOR_out), .XOR_out(XOR_out), .XNOR_out(XNOR_out));
initial begin
        $monitor("Time=%0t | a=%b b=%b | AND=%b OR=%b NAND=%b NOR=%b XOR=%b XNOR=%b",
                 $time, a, b, AND_out, OR_out, NAND_out, NOR_out, XOR_out, XNOR_out);
        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;

        $finish;
    end
endmodule