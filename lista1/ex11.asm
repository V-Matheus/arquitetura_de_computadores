.text

main:

	addi $2, $0, 5 # solicitar inteiro
	syscall
	
	addi $8, $0, 10 	# valor do divisor
	
	div $2, $8 	# dividindo valor por 10 para pegar o ultimo numero
	mfhi $4
	mflo $9
	
	addi $2, $0, 1 # Mostrar caractere no $4
	syscall
	
	div $9, $8 	# dividindo valor por 10 para pegar o penultimo numero
	mfhi $4
	mflo $9
	
	addi $2, $0, 1 # Mostrar caractere no $4
	syscall
	
	add $4, $0, $9
	addi $2, $0, 1 # Mostrar caractere no $4
	syscall
	