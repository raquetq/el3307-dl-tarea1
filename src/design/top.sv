module TopModule (
    input logic [3:0] codigo_gray_pi,
    input logic rst_pi,
    output logic [3:0] codigo_bin_led_po,
    output logic [1:0] anodo_po,
    output logic [6:0] catodo_po
);

    moduleLED LEDs(
        .codigo_gray_pi(codigo_gray_pi),
        .codigo_bin_led_po(codigo_bin_led_po)
    );

    module7SEG seg7(
        .codigo_gray_pi(codigo_gray_pi),
        .rst_pi(rst_pi),
        .anodo_po(anodo_po),
        .catodo_po(catodo_po)
    );

endmodule