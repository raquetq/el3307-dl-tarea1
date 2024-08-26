module module7SEG(
    input logic [3:0] cod_bin,
    input logic [1:0] anodo_po,
    output logic [6:0] catodo_po
);
    //Codigo binario en Conmutadores
    assign A = cod_bin[3];
    assign B = cod_bin[2];
    assign C = cod_bin[1];
    assign D = cod_bin[0];

    //7seg unidades
    assign seg_a = (B && D) || (!A && C) || (A && !C) || (!B && !D);
    assign seg_b = (!C && !D) || (A && !C) || (A && !D) || (!B) || (!A && C && D);
    assign seg_c = (A && !B) || (B && C) || (!A && !C) || (D);
    assign seg_d = (A && !C) || (!B && !D) || (A && B && D) || (!A && !B && C) || (B && !C && D) || (!A && C && !D);
    assign seg_e = (A && !C && !D) || (!A && C && !D) || (!B && !D);
    assign seg_f = (!A && !C && !D) || (!A && B && !C) || (A && !B && !C) || (A && C && !D) || (A && B && C) || (B && C && !D);
    assign seg_g = (B && !C) || (A && B) || (A && !C) || (!A && C &&!D) || (!A && !B && C) ;

    //7SEG DECENAS
    assign sd_X = (!A) || (!B && !C);
    assign sd_Y = 1'b1;
    assign sd_Z = 1'b0;

    //Salida
    assign catodo_po[2] = anodo_po[1] ? sd_X : anodo_po[0] ? seg_a : sd_Z;
    assign catodo_po[3] = anodo_po[1] ? sd_Y : anodo_po[0] ? seg_b : sd_Z;
    assign catodo_po[4] = anodo_po[1] ? sd_Y : anodo_po[0] ? seg_c : sd_Z;
    assign catodo_po[1] = anodo_po[1] ? sd_X : anodo_po[0] ? seg_d : sd_Z;
    assign catodo_po[0] = anodo_po[1] ? sd_X : anodo_po[0] ? seg_e : sd_Z;
    assign catodo_po[5] = anodo_po[1] ? sd_X : anodo_po[0] ? seg_f : sd_Z;
    assign catodo_po[6] = anodo_po[1] ? sd_Z : anodo_po[0] ? seg_g : sd_Z;

endmodule