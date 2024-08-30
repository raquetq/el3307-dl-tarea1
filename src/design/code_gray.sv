module moduleGray (
    input logic [3:0] codigo_gray_pi
);
    
    logic [3:0] cod_bin;

    assign cod_bin[3] = codigo_gray_pi[3];
    assign cod_bin[2] = ((~cod_bin[3]) && codigo_gray_pi[2]) || (cod_bin[3] && (~codigo_gray_pi[2]));
    assign cod_bin[1] = ((~cod_bin[2]) && codigo_gray_pi[1]) || (cod_bin[2] && (~codigo_gray_pi[1]));
    assign cod_bin[0] = ((~cod_bin[1]) && codigo_gray_pi[0]) || (cod_bin[1] && (~codigo_gray_pi[0]));

endmodule