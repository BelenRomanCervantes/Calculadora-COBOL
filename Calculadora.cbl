      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       PROGRAM-ID. CALCULADORA.
       ENVIRONMENT DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       CONFIGURATION SECTION.
      *-----------------------
       INPUT-OUTPUT SECTION.
      *-----------------------
       DATA DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       FILE SECTION.
      *-----------------------
       WORKING-STORAGE SECTION.
       01 OPERACION PIC X(4).
       01 NUMERO1 PIC S9999V99.
       01 NUMERO2 PIC S9999V99.
       01 RESULTADO PIC S9999V99.
       01 CONTADOR PIC 9 VALUE 1.
       01 RESULTADO-FORMATO PIC -ZZZ9.99.
       PROCEDURE DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
           MAIN-PROCEDURE.
           PERFORM MENU.
           PERFORM FIN-PROGRAMA.


           MENU.
           DISPLAY "Indica la operación que deseas realizar: "
           DISPLAY "SUMA / RESTA / MULTIPLICACION / DIVISION "
           "/ FACTORIAL"
           ACCEPT OPERACION.

           IF OPERACION = "SUMA" OR OPERACION = "suma"
               PERFORM SUMAR
               PERFORM FIN-PROGRAMA
           ELSE
               IF OPERACION = "REST" OR OPERACION = "rest"
                   PERFORM RESTAR
                   PERFORM FIN-PROGRAMA
               ELSE
                   IF OPERACION = "MULT" OR OPERACION = "mult"
                       PERFORM MULTIPLICAR
                       PERFORM FIN-PROGRAMA
                       ELSE
                           IF OPERACION = "DIBI" OR OPERACION = "dibi"
                               PERFORM DIVIDIR
                               PERFORM FIN-PROGRAMA
                               ELSE
                                   IF OPERACION = "FACT"
                                       OR OPERACION = "fact"
                                       PERFORM FACTORIAL
                                       PERFORM FIN-PROGRAMA
                                       ELSE
                                           DISPLAY "Opción inválida!"
                                           PERFORM MAIN-PROCEDURE
                                   END-IF
                           END-IF
                   END-IF
               END-IF
           END-IF.


           SUMAR.
           DISPLAY "Introduce un número (positivo o negativo)"
           ACCEPT NUMERO1.
           DISPLAY "Introduce otro número (positivo o negativo)"
           ACCEPT NUMERO2.
           COMPUTE RESULTADO = NUMERO1 + NUMERO2.
           MOVE RESULTADO TO RESULTADO-FORMATO.
           DISPLAY "El resultado es: " RESULTADO-FORMATO.
           IF RESULTADO > 100
               DISPLAY "Resultado mayor a 100"
           END-IF.

           RESTAR.
           DISPLAY "Introduce un número (positivo o negativo)"
           ACCEPT NUMERO1.
           DISPLAY "Introduce otro número (positivo o negativo)"
           ACCEPT NUMERO2.
           COMPUTE RESULTADO = NUMERO1 - NUMERO2.
           MOVE RESULTADO TO RESULTADO-FORMATO.
           DISPLAY "El resultado es: " RESULTADO-FORMATO.
           IF RESULTADO > 0
               DISPLAY "Resultado positivo"
           ELSE
               IF RESULTADO < 0
                   DISPLAY "Resultado negativo"
               ELSE
                   DISPLAY "Resultado igual a 0"
               END-IF
           END-IF.

           MULTIPLICAR.
           DISPLAY "Introduce un número (positivo o negativo)"
           ACCEPT NUMERO1.
           DISPLAY "Introduce otro número (positivo o negativo)"
           ACCEPT NUMERO2.
           COMPUTE RESULTADO = NUMERO1 * NUMERO2.
           MOVE RESULTADO TO RESULTADO-FORMATO.
           DISPLAY "El resultado es: " RESULTADO-FORMATO.
           IF RESULTADO > 0 AND RESULTADO <= 100
               DISPLAY "Resultado se encuentra dentro del rango 1"
           ELSE
               IF RESULTADO > 101 AND RESULTADO <= 200
                   DISPLAY "Resultado se encuentra dentro del rango 2"
               ELSE
                   IF RESULTADO > 201 AND RESULTADO <= 300
                       DISPLAY "Resultado se encuenta en el rango 3"
                   ELSE
                       DISPLAY "Resultado está fuera del rango"
                   END-IF
               END-IF
           END-IF.


           DIVIDIR.
           DISPLAY "Introduce un número (positivo o negativo)"
           ACCEPT NUMERO1.
           DISPLAY "Introduce un número (positivo o negativo)"
           ACCEPT NUMERO2
           IF NUMERO2 = 0
               DISPLAY "Error! Introduzca un número mayor a cero"
               PERFORM DIVIDIR
           ELSE
               COMPUTE RESULTADO = NUMERO1 / NUMERO2
               MOVE RESULTADO TO RESULTADO-FORMATO
               DISPLAY "El resultado es: " RESULTADO-FORMATO
           END-IF.

           FACTORIAL.
           DISPLAY "Introduce un número entero positivo"
           ACCEPT NUMERO1.
           IF NUMERO1 < 0
               DISPLAY "Error! Introduzca un número entero positivo"
               PERFORM FACTORIAL
           ELSE
               MOVE 1 TO RESULTADO
               PERFORM VARYING CONTADOR FROM 1 BY 1
               UNTIL CONTADOR > NUMERO1
               COMPUTE RESULTADO = RESULTADO * CONTADOR
               END-PERFORM
               MOVE RESULTADO TO RESULTADO-FORMATO
               DISPLAY "El resultado es: " RESULTADO-FORMATO
           END-IF.

           FIN-PROGRAMA.
               STOP RUN.

       END PROGRAM CALCULADORA.
