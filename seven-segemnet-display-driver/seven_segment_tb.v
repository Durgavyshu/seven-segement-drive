`timescale 1ns/1ps

module seven_segment_tb;

    reg  [3:0] bin;
    wire [6:0] seg;

    seven_segment uut (
        .bin(bin),
        .seg(seg)
    );

    initial begin

        $dumpfile("seven_segment.vcd");
        $dumpvars(0, seven_segment_tb);

        $monitor("Time = %0t | Input = %h | Segment = %b",
                 $time, bin, seg);

        bin = 4'h0; #10;
        bin = 4'h1; #10;
        bin = 4'h2; #10;
        bin = 4'h3; #10;
        bin = 4'h4; #10;
        bin = 4'h5; #10;
        bin = 4'h6; #10;
        bin = 4'h7; #10;
        bin = 4'h8; #10;
        bin = 4'h9; #10;
        bin = 4'hA; #10;
        bin = 4'hB; #10;
        bin = 4'hC; #10;
        bin = 4'hD; #10;
        bin = 4'hE; #10;
        bin = 4'hF; #10;

        $finish;
    end

endmodule