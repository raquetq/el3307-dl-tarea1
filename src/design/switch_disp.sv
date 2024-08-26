module moduleSwitchDisp(
    input logic [0:0] button,
    output logic [1:0] anodo_po  
);
    // boton encendido muestra unidades y apagado las decenas
    assign anodo_po = button == 1'b1 ? 2'b01:2'b10;

endmodule