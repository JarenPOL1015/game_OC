.data
	# Numeros
	numero: .word 5 # Asi se guarda un int
	flotante: .float 5.5 # Asi se guarda un float
	numero2: .double 5.24 # Asi se guarda un double
	
	# Texto
	palabra: .asciiz "Hola Mundo"
	mensaje1: .asciiz "Ingresa tu numero: "
	mensaje2: .asciiz "Este es tu numero: "
.text
	main:
	
	# Numeros
	
	li $v0, 1 # Mostrar un entero (int)
	lw $a0, numero # a0 = 5 (Muestra en pantalla)
	syscall
	
	li $v0, 2 # Mostrar un flotante (float)
	lwc1 $f12, flotante # f2 = 5.5 (Muestra en pantalla)
	syscall
	
	li $v0, 3 # Mostrar un double
	ldc1 $f12, numero2 # f12 = 5.24 (Muestra en pantalla)
	syscall
	
	# Texto
	
	li $v0, 4 # Mostrar un texto (string)
	la $a0, palabra # a0 = ... (Mostrar en pantalla)	
	syscall
