`timescale 1ns/1ps

module moduleGrayTB;
    logic [3:0] gray;
    logic [3:0] bin;

    moduleGray Conv(
        .codigo_gray_pi(gray),
        .cod_bin(bin)
    );

    initial begin
        $monitor("Codigo Binario = %b", bin);
        gray = 4'b0000; #1;
        gray = 4'b0001; #2;
        gray = 4'b0011; #3;
        gray = 4'b0010; #4;
        gray = 4'b0110; #5;
        gray = 4'b0111; #6;
        gray = 4'b0101; #7;
        gray = 4'b0100; #8;
        gray = 4'b1100; #9;
        gray = 4'b1101; #10;
        gray = 4'b1111; #11;
        gray = 4'b1110; #12;
        gray = 4'b1010; #13;
        gray = 4'b1011; #14;
        gray = 4'b1001; #15;
        gray = 4'b1000;
    end

    initial begin
        $dumpfile("moduleGrayTB.vcd");
        $dumpvars(0, moduleGrayTB);
    end

endmodule