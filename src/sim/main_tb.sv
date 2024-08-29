`timescale 1ns/1ps

module moduleMainTB;
    logic [3:0] gray;
    logic [3:0] bin;
    logic [3:0] led;
    logic [6:0] seg7;
    logic [1:0] disp;
    logic [0:0] button;

    moduleGray Conv(
        .codigo_gray_pi(gray),
        .cod_bin(bin)
    );

    moduleLED Verif(
        .cod_bin(bin),
        .codigo_bin_led_po(led)  
    );

    module7SEG Decod(
        .rst_pi(button),
        .cod_bin(bin),
        .anodo_po(disp),
        .catodo_po(seg7)
    );
    
    initial begin
        $monitor("Dec(%d), Bin(%b), Seg7(%b), displays(%b), LED(%b)", bin, bin, seg7, disp, led);
        gray = 4'b0000; #1; //valor inicial
        button = 0; #1;
        button = 1; #1;
        gray = 4'b0000; #1;
        
        button = 0; #2;
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
        gray = 4'b1000; #16;
        
        button = 1; #17; //simula que se presiono el boton
        gray = 4'b1101; #18;
        gray = 4'b1111; #19;
        gray = 4'b1110; #20;
        gray = 4'b1010; #21;
        gray = 4'b1011; #22;
        gray = 4'b1001; #23;
        gray = 4'b1000; #24;
    end

    initial begin
        $dumpfile("moduleMainTB.vcd");
        $dumpvars(0, moduleMainTB);
    end

endmodule