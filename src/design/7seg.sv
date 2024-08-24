module module7SEG(
    input logic [3:0] cod_bin,
    output logic [1:0] anodo_po,
    output logic [6:0] catodo_po
);

    assign A = cod_bin[3];
    assign B = cod_bin[2];
    assign C = cod_bin[1];
    assign D = cod_bin[0];

    //seg a
    assign seg_a = (B || D) && (!A || C) && (A || !C) && (!B || !D); //seg a unidades
    
    //seg b
    assign seg_b = (!C || !D) && (A || !C) && (A || !D) && (!B) && (!A || C || D); //seg b unidades

    //seg c
    assign seg_c = (A || !B) && (B || C) && (!A || !C) && (D); //seg c unidades

    //seg d
    assign seg_d = (A || !C) && (!B || !D) && (A || B || D) && (!A || !B || C) && (B || !C || D) && (!A || C || !D); //seg d unidades

    //seg e
    assign seg_e = (A || !C || !D) && (!A || C || !D) && (!B || !D); //seg e unidades

    //seg f
    assign seg_f = (!A || !C || !D) && (B || C || !D) && (B) && (A || !B || !D) && (!B || !C || !D) ; //seg f unidades

    //seg g
    assign seg_g = (B || !C) && (A || B) && (A || !C) && (!A || C ||!D) && (!A || !B || C) ; //seg g unidades

    //SEG DECENAS
    assign seg_dec_X = (!B) && (!A || !C);
    assign seg_dec_Y = 1'b1;

endmodule