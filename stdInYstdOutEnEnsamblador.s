.data
cadena: .ascii "Escriba no más de 33 caracteres\n"

.text
.global main

  main:
      MOV R7, #4      // 4 es el código de 'write' del sistema.
      MOV R0, #1      // Descriptior de archivo de stdout (monitor).
      LDR R1, =cadena // Buffer que contiene la cadena a escribir.
      MOV R2, #34     // Cantidad de char a escribir.
      SWI 0           // Llamada al sistema.
      
      MOV R7, #3      // 3 es el código de 'read' del sistema.
      MOV R0, #0      // Descriptor de archivo de stdin (teclado).
      LDR R1, =cadena // Buffer que almacenará lo que se ingrese.
      MOV R2, #33     // Cantidad de char a leer.
      SWI 0           // Llamada al sistema.
      
      MOV R7, #4      // 4 es el código de 'write' del sistema.
      MOV R0, #1      // Descriptior de archivo de stdout (monitor).
      MOV R2, #34     // Cantidad de char a escribir.
      LDR R1, =cadena // Buffer que contiene la cadena a escribir.
      SWI 0           // Llamada al sistema.
      
      MOV R0, #0      // Valor que indica que se ejecutó bien el programa.
      MOV R7, #1      // 1 es el código de 'exit' del sistema.
      SWI 0           // Llamada al sistema.
