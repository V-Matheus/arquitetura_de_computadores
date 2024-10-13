.text
main:

	addi $2, $0, 12 	# Soliciar um caractere
	syscall
	
	subi $4, $2, 32 	# subtrai o decimal do caractere com 32 para buscar a sua versao maiscula
	
	addi $2, $0, 11 	# Mostrar caractere no $4
	syscall