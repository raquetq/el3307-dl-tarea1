module moduleLED(
    input logic [3:0] codigo_gray_pi,
    output logic [3:0] codigo_bin_led_po
);
    logic [3:0] cod_bin;

    assign cod_bin[3] = codigo_gray_pi[3];
    assign cod_bin[2] = codigo_gray_pi[2] ^ cod_bin[3];
    assign cod_bin[1] = codigo_gray_pi[1] ^ cod_bin[2];
    assign cod_bin[0] = codigo_gray_pi[0] ^ cod_bin[1];

    assign codigo_bin_led_po[3] = ~cod_bin[3];
    assign codigo_bin_led_po[2] = ~cod_bin[2];
    assign codigo_bin_led_po[1] = ~cod_bin[1];
    assign codigo_bin_led_po[0] = ~cod_bin[0];

endmodule