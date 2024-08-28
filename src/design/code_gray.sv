module moduleGray (
    input logic [3:0] codigo_gray_pi,
    output logic [3:0] cod_bin
);
    
    assign cod_bin[3] = (codigo_gray_pi[3]) ? 1'b1:1'b0;
    assign cod_bin[2] = (cod_bin[3] ^ codigo_gray_pi[2]) ? 1'b1:1'b0;
    assign cod_bin[1] = (cod_bin[2] ^ codigo_gray_pi[1]) ? 1'b1:1'b0;
    assign cod_bin[0] = (cod_bin[1] ^ codigo_gray_pi[0]) ? 1'b1:1'b0;

endmodule