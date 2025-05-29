`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.05.2025 11:12:22
// Design Name: 
// Module Name: tb_decoder_2to4
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_decoder_2to4;
    reg [1:0] in;
    reg en;
    wire [3:0] out;

    decoder_2to4 uut (
        .in(in),
        .en(en),
        .out(out)
    );

    initial begin
        $display("Time\t en in  | out");
        $monitor("%0t\t %b  %b  | %b", $time, en, in, out);
        en = 0; in = 2'b00; #10;
        in = 2'b01; #10;
        in = 2'b10; #10;
        in = 2'b11; #10;

        en = 1; in = 2'b00; #10;
        in = 2'b01; #10;
        in = 2'b10; #10;
        in = 2'b11; #10;

        $finish;
    end
endmodule

