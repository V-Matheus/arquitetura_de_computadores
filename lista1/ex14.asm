.text 

main:

	addi $2, $0, 5 	# solicitar inteiro
	syscall
	
	add $8, $0, 2
	
	div $2, $8
	mfhi $4
	
	addi $2, $0, 1 	# mostrar resultado do $4
	syscall