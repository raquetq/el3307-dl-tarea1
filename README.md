# Nombre del proyecto

## 1. Abreviaturas y definiciones
- **FPGA**: Field Programmable Gate Arrays
- **MSB**: Bit más significativo

## 2. Referencias
[0] David Harris y Sarah Harris. *Digital Design and Computer Architecture. RISC-V Edition.* Morgan Kaufmann, 2022. ISBN: 978-0-12-820064-3

## 3. Desarrollo

### 3.0 Descripción general del sistema

### 3.1 Módulo 1 (Código Gray a Código Binario)
#### 1. Encabezado del módulo
```SystemVerilog
module moduleGray (
    input logic [3:0] codigo_gray_pi,
    output logic [3:0] cod_bin
);
```
#### 2. Parámetros
- Lista de parámetros

#### 3. Entradas y salidas:
- `codigo_gray_pi`: Entrada de 4 bits para recibir el código Gray 
- `cod_bin`: Salida de 4 bits con valor binario del código Gray ingresado

#### 4. Criterios de diseño
Basándose de la conversión de código Gray a código binario se buscó una forma de representarlo en ecuaciones lógicas. Para convertir un número en código Gray a código binario, primero, se mantiene el MSB, y luego, se toma este valor y se suma al siguiente bit, si la suma da como resultado 10'b, se descarta el acarreo, y a partir de este punto puede ser visto como una operación XOR entre el resultado y el siguiente bit.

#### 5. Testbench
Para el testbench de este módulo se demostró que la conversión funcionara de acuerdo con la tabla de verdad realizada para todo valor de la misma visualizando el resultado la consola de comandos. Cada dato ingresado lanzó el resultado correcto.

### 3.2 Módulo 2 (Código Binario en LEDs)
#### 1. Encabezado del módulo
```SystemVerilog
module mi_modulo(
    input logic     entrada_i,      
    output logic    salida_i 
    );
```
#### 2. Parámetros
- Lista de parámetros

#### 3. Entradas y salidas:
- `entrada_i`: descripción de la entrada
- `salida_o`: descripción de la salida

#### 4. Criterios de diseño
Diagramas, texto explicativo...

#### 5. Testbench
Descripción y resultados de las pruebas hechas

### Otros modulos
- agregar informacion siguiendo el ejemplo anterior.

### 3.3 Módulo 3 (Co¿ódigo Decimal en 7 Segmentos)
#### 1. Encabezado del módulo
```SystemVerilog
module mi_modulo(
    input logic     entrada_i,      
    output logic    salida_i 
    );
```
#### 2. Parámetros
- Lista de parámetros

#### 3. Entradas y salidas:
- `entrada_i`: descripción de la entrada
- `salida_o`: descripción de la salida

#### 4. Criterios de diseño
Diagramas, texto explicativo...

#### 5. Testbench
Descripción y resultados de las pruebas hechas

### Otros modulos
- agregar informacion siguiendo el ejemplo anterior.


## 4. Consumo de recursos

## 5. Problemas encontrados durante el proyecto

## Apendices:
### Apendice 1:
texto, imágen, etc
