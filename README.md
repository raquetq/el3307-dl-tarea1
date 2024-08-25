# Nombre del proyecto

## 1. Abreviaturas y definiciones
- **FPGA**: Field Programmable Gate Arrays
- **MSB**: Bit más significativo

## 2. Referencias
[0] David Harris y Sarah Harris. *Digital Design and Computer Architecture. RISC-V Edition.* Morgan Kaufmann, 2022. ISBN: 978-0-12-820064-3

## 3. Desarrollo

### 3.0 Descripción general del sistema

### 3.1 Módulo 1 (Conversión Código Gray a Código Binario)
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
module moduleLED(
    input logic [3:0] cod_bin,
    output logic [3:0] codigo_bin_led_po  
);
```
#### 2. Parámetros
- Lista de parámetros

#### 3. Entradas y salidas:
- `cod_bin`: Entrada que toma la salida del módulo de conversión
- `codigo_bin_led_po`: Salida que transporta el estado de los LEDs

#### 4. Criterios de diseño
Diagramas, texto explicativo...
Se planteó que los bits obtenidos en el módulo 3.1, cada atravesara un multiplexor donde el valor del bit es el que selecciona la condición del LED, si apagado o encendido.

#### 5. Testbench
Descripción y resultados de las pruebas hechas

### Otros modulos
- agregar informacion siguiendo el ejemplo anterior.

### 3.3 Módulo 3 (Co¿ódigo Decimal en 7 Segmentos)
#### 1. Encabezado del módulo
```SystemVerilog
module module7SEG(
    input logic [3:0] cod_bin,
    output logic [1:0] anodo_po,
    output logic [6:0] catodo_po
);
```
#### 2. Parámetros
- Lista de parámetros

#### 3. Entradas y salidas:
- `cod_bin`: Entrada que toma la salida del módulo de conversión
- `anodo_po`: Salida que determina que 7-segmentos enciende
- `catodo_po`: Salida que tiene el valor de los estados para cada LED de los 7-segmentos

#### 4. Criterios de diseño
Diagramas, texto explicativo...
Para cada LED del 7-segmentos se realizó una tabla de verdad que determina que cuando se encienden y cuando se apagan, tanto para el 7-segmentos que representa las unidades como el que representa las decenas. 

#### 5. Testbench
Descripción y resultados de las pruebas hechas

### Otros modulos
- agregar informacion siguiendo el ejemplo anterior.


## 4. Consumo de recursos

## 5. Problemas encontrados durante el proyecto

## Apendices:
### Apendice 1:
texto, imágen, etc
