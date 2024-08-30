module module7SEG(
    input logic rst_pi,
    input logic [3:0] cod_bin,
    output logic [1:0] anodo_po,
    output logic [6:0] catodo_po
);

    // boton encendido muestra unidades y apagado las decenas
    assign anodo_po = (~rst_pi) ? 2'b01:2'b10;

    //Codigo biario en Conmutadores
    assign b1 = cod_bin[3];
    assign b2 = cod_bin[2];
    assign b3 = cod_bin[1];
    assign b4 = cod_bin[0];

    //7seg unidades
    assign seg_a = ((!b2) && (!b4)) || (b1 && (!b3)) || ((!b1) && b3) || (b2 && b4);
    assign seg_b = (!b3 && (!b4)) || (b1 && (!b3)) || (b1 && (!b4)) || (!b2) || ((!b1) && b3 && b4);
    assign seg_c = (b1 && (!b2)) || (b2 && b3) || ((!b1) && (!b3)) || (b4);
    assign seg_d = (b1 && (!b3)) || ((!b2) && (!b4)) || (b1 && b2 && b4) || ((!b1) && (!b2) && b3) || (b2 && (!b3) && b4) || ((!b1) && b3 && (!b4));
    assign seg_e = (b1 && (!b3) && (!b4)) || ((!b1) && b3 && (!b4)) || ((!b2) && (!b4));
    assign seg_f = ((!b1) && (!b3) && (!b4)) || ((!b1) && b2 && (!b3)) || (b1 && (!b2) && (!b3)) || (b1 && b3 && (!b4)) || (b1 && b2 && b3) || (b2 && b3 && (!b4));
    assign seg_g = (b2 && (!b3)) || (b1 && b2) || (b1 && (!b3)) || ((!b1) && b3 && (!b4)) || ((!b1) && (!b2) && b3);

    //7SEG DECENAS
    assign sd_X = (~b1) || ((~b2) && (~b3));
    assign sd_Y = 1'b1;
    assign sd_Z = 1'b0;

    //Salida
    assign catodo_po[6] = (anodo_po == 2'b10) ? sd_X : (anodo_po == 2'b01) ? seg_a : sd_Z;
    assign catodo_po[5] = (anodo_po == 2'b10) ? sd_Y : (anodo_po == 2'b01) ? seg_b : sd_Z;
    assign catodo_po[4] = (anodo_po == 2'b10) ? sd_Y : (anodo_po == 2'b01) ? seg_c : sd_Z;
    assign catodo_po[3] = (anodo_po == 2'b10) ? sd_X : (anodo_po == 2'b01) ? seg_d : sd_Z;
    assign catodo_po[2] = (anodo_po == 2'b10) ? sd_X : (anodo_po == 2'b01) ? seg_e : sd_Z;
    assign catodo_po[1] = (anodo_po == 2'b10) ? sd_X : (anodo_po == 2'b01) ? seg_f : sd_Z;
    assign catodo_po[0] = (anodo_po == 2'b10) ? sd_Z : (anodo_po == 2'b01) ? seg_g : sd_Z;

endmodule