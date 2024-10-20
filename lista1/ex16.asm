.text

main:

	addi $2, $0, 5 	# solicitar inteiro
	syscall
	
	addi $8, $0, 2	# valor do divisor
	addi $9, $0, -1 	# valor do multiplicador
	
	div $2, $8 	# dividindo por dois para saber se tem resto 1 ou 0
	
	mfhi $8 	# movendo o resto para o registrador $8
	
	mul $4, $8, $9 	# multiplicando por -1 para saber se é impar ou par
	
	addi $2, $0, 1 	#exibindo resultado
	syscall