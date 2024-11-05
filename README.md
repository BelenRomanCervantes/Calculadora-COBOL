# Calculadora COBOL
## Objetivo
Crear una calculadora para realizar las operaciones básicas de dos números positivos o negativos con las siguientes reglas:  

Se debe mostrar un menú solicitando que operación desea realizar, los valores validos como opción a capturar son: 
-	“SUMA” o “suma”.  
-	"RESTA" o "resta".  
-	"MULTIPLICACION" o "multiplicacion".  
-	"DIVISION" o "division"  (división por el problema de la V).  
-	“FACTORIAL” o “factorial”.  
Si se captura una opción diferente se debe mandar un error de opción inválida.  

## Funcionamiento
###	Suma
Permitir sumar dos números positivos o negativos.  
Imprimir resultado de la suma.  
Imprimir “Resultado mayor a 100” si la suma es mayor a 100.  

![image](https://github.com/user-attachments/assets/d88b9821-a2dc-4335-8c5a-5e4a4cb82995)

###	Resta 
Permitir restar dos números positivos o negativos.  
Imprimir resultado de la resta.  
Imprimir con una leyenda si el resultado es positivo, negativo o igual a cero.  

![image](https://github.com/user-attachments/assets/1397a97a-7ae2-4e92-a8d9-3c4ca87ed11c)

###	Multiplicación
Permitir multiplicar dos números.  
Imprimir resultado.  
Imprimir si el resultado se encuentra dentro de los siguientes rangos (usar condiciones booleanas):
-	Leyenda “Resultado se encuentra dentro del rango 1” si el resultado es de 0 a 100
-	Leyenda “Resultado se encuentra dentro del rango 2” si el resultado es de 101 a 200
-	Leyenda “Resultado se encuentra dentro del rango 3” si el resultado es de 201 a 300
-	Leyenda “Resultado se encuentra fuera de rango” si el resultado es mayor a 300

![image](https://github.com/user-attachments/assets/d710b345-f449-403c-bb20-baa42aab9afe)

###	División
Permitir dividir dos números.  
Validar que no se permita dividir entre cero y marcar error de ser así.  
Imprimir resultado.  

![image](https://github.com/user-attachments/assets/0fb50897-ce8f-4e00-a93f-694de85a6dc8)

###	Factorial
Solicitar el factorial de un número entero.  
Imprimir resultado.  

![image](https://github.com/user-attachments/assets/2af75a73-0fd8-4d4d-897f-69c1aa2c3c4e)
