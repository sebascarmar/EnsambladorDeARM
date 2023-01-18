
.data
cadena : .ascii " Hola Mundo Cruel 2020 2021 2022 2023 ....... ! \n"
.text
.global main
main :
      push { r7, lr }   /* apilamos reg. en el stack */
      mov r0, #1        /* 1 codigo de la salida estándar archivo pantalla*/
      ldr r1, = cadena  /* direccion de memoria de la cadena a enviar */
      mov r2, #49       /* longitud */
      mov r7, #4        /* 4 es el codigo de la llamada al sistema write*/
      swi #0            /* se realiza la llamada al sistema write*/
      mov r0, #0        /* devolvemos ok */
      pop { r7, lr }    /* desapilamos reg. del stack */
      bx lr             /* salimos de main */
