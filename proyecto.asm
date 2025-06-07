.data
	prompt: .asciiz "Elige: 1 - Piedra, 2 - Papel, 3 - Tijera: "
	invalid_input: .asciiz "Entrada invalida. Elige 1, 2 o 3.\n"
	tie: .asciiz "\nEs un empate!\n"
	comp_choice: .asciiz "La computadora eligió: "
	result_win: .asciiz "\nGanaste!\n"   # Mensaje para el jugador si gana
    	result_lose: .asciiz "\nLa máquina ganó.\n"   # Mensaje para el jugador si pierde
.text
main:
	# Elecciones (numero escogido)
	# Usuario: t0
	# Computadora: a0
	
    	# Mostrar mensaje para pedir la elección del usuario
	li $v0, 4   		# Código de syscall 4 para imprimir un string
	la $a0, prompt		#  Cargar la dirección del mensaje "prompt"	
	syscall
	
	# Leer la entrada del usuario (número 1, 2 o 3)
	li $v0, 5                  # Código de syscall 5 para leer un entero
    	syscall                    # Llamada al sistema para leer el número
    	move $t0, $v0              # Mover el número ingresado a $t0
    	
    	# Verificar si el número ingresado es válido (1, 2 o 3)
    	blt $t0, 1, invalid_entry  # Si el número es menor que 1, es inválido
    	bgt $t0, 3, invalid_entry  # Si el número es mayor que 3, es inválido
    	
    	# Mostrar mensaje para "La computadora eligio: "
    	li $v0, 4                  # Código de syscall 4 para imprimir un string
    	la $a0, comp_choice        # Cargar la dirección del mensaje "Ingresa tu numero"
    	syscall                    # Llamada al sistema para imprimir el mensaje
    	
    	# Generar un número aleatorio entre 1 y 3 
    	li $a1, 3		# Rango máximo para la elección aleatoria ($a1)
    	li $v0, 42  		# Generates the random number.
    	syscall   	    	
    	add $a0, $a0, 1  	# Rango Mínimo ($a0)
    	li $v0, 1   		# Imprimir eleccion de computadora
    	syscall
    	
    	# Comparar el número del usuario con el generado por la computadora
    	
    	# Empate
    	beq $t0, $a0, tie_game
    	
    	# Casos en los que el usuario gana
    	# 1. Usuario: Piedra (1), Compu: Tijera (3)
    	# 2. Usuario: Papel (2), Compu: Piedra (1)
    	# 3. Usuario: Tijera (3), Compu: Papel (2)
    	
    	beq $t0, 1, check_win_rock	# Usuario escoge Piedra (1)
    	beq $t0, 2, check_win_paper	# Usuario escoge Papel (2)
    	beq $t0, 3, check_win_scissors	# Usuario escoge Tijera (3)
    	
    	# Si no es empate y no ganó, entonces perdió
    	j lose
    
    check_win_rock:
    	beq $a0, 3, win  # Si la compu eligió Tijera (3), el usuario gana
    	j lose
    	
    check_win_paper:
    	beq $a0, 1, win  # Si la compu eligió Piedra (1), el usuario gana
    	j lose
    
    check_win_scissors:
    	beq $a0, 2, win  # Si la compu eligió Papel (2), el usuario gana
    	j lose	

    # Entrada inválida
    invalid_entry:
        li $v0, 4		# Código de syscall 4 para imprimir un string
        la $a0, invalid_input
        syscall
        j main
    
    # --- Resultados ---
    
    win:
    	li $v0, 4		# Código de syscall 4 para imprimir un string
    	la $a0, result_win
    	syscall
    	j end_game
    
    lose:
    	li $v0, 4		# Código de syscall 4 para imprimir un string
    	la $a0, result_lose
    	syscall
    	j end_game
    
        	# Mostrar empate si no hay ganador
    tie_game:
        li $v0, 4		# Código de syscall 4 para imprimir un string
        la $a0, tie
        syscall
        j end_game

    # Finalizar el programa
    end_game:
        li $v0, 10		# Código de syscall 10 para terminar la ejecución
        syscall

