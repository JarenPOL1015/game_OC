.data


.text
main:
	li $a1, 3  # Here you set $a1 to the max bound.
    	li $v0, 42  # Generates the random number.
    	syscall
    	add $a0, $a0, 1  # Here you add the lowest bound
    	li $v0, 1   # 1 print integer
    	syscall