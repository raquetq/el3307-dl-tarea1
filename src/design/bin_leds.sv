module moduleLED(
    input logic [3:0] cod_bin,
    output logic [3:0] codigo_bin_led_po  
);

    assign codigo_bin_led_po[0] = cod_bin[0];
    assign codigo_bin_led_po[1] = cod_bin[1];
    assign codigo_bin_led_po[2] = cod_bin[2];
    assign codigo_bin_led_po[3] = cod_bin[3];

endmodule