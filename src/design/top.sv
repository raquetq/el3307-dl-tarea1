module TopModule (
    input logic [3:0] codigo_gray_pi,
    input logic rst_pi,
    output logic [3:0] cod_bin,
    output logic [3:0] codigo_bin_led_po,
    output logic [1:0] anodo_po,
    output logic [6:0] catodo_po
);

    moduleGray Gray(
        .codigo_gray_pi(codigo_gray_pi),
        .cod_bin(cod_bin)
    );

    moduleLED LEDs(
        .cod_bin(cod_bin),
        .codigo_bin_led_po(codigo_bin_led_po)
    );

    module7SEG seg7(
        .rst_pi(rst_pi),
        .cod_bin(cod_bin),
        .anodo_po(anodo_po),
        .catodo_po(catodo_po)
    );

endmodule