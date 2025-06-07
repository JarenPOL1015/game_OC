.data
    mensaje1: .asciiz "Ingresa tu numero: "  # Mensaje para pedir al usuario
    mensaje2: .asciiz "Este es tu numero: "  # Mensaje para mostrar el número ingresado

.text
main:

    # Mostrar mensaje para ingresar un número (texto)
    li $v0, 4                  # Código de syscall 4 para imprimir un string
    la $a0, mensaje1           # Cargar la dirección del mensaje "Ingresa tu numero"
    syscall                    # Llamada al sistema para imprimir el mensaje

    # Leer número entero desde el usuario
    li $v0, 5                  # Código de syscall 5 para leer un entero
    syscall                    # Llamada al sistema para leer el número
    move $t0, $v0              # Mover el número ingresado a $t0

    # Mostrar mensaje con el número ingresado
    li $v0, 4                  # Código de syscall 4 para imprimir un string
    la $a0, mensaje2           # Cargar la dirección de "Este es tu numero"
    syscall                    # Llamada al sistema para imprimir el mensaje

    # Imprimir el número ingresado
    li $v0, 1                  # Código de syscall 1 para imprimir un entero
    move $a0, $t0              # Mover el número a $a0 (registro de salida)
    syscall                    # Llamada al sistema para imprimir el número

    # Terminar el programa
    li $v0, 10                 # Código de syscall 10 para terminar la ejecución
    syscall                    # Llamada al sistema para finalizar

# Resumen de syscalls:
# li $v0, 4: Mostrar texto (mensaje).
# li $v0, 5: Leer un número entero desde el teclado.
# li $v0, 1: Imprimir un número entero.
# li $v0, 10: Terminar el programa.