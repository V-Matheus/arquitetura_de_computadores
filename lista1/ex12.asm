.text

main:		
	
	addi $2, $0, 5 	# solicitar inteiro
	syscall
	
	add $8, $0, $2 	# guardar valor da primeira nota em $8
	sll $8, $8, 1 	# peso 3, dobrar o seu valor mais ele mesmo
	add $8, $8, $2
	
	addi $2, $0, 5 	# solicitar inteiro
	syscall
	
	add $9, $0, $2 	# guardar valor da segunda nota em $9
	sll $9, $9, 3 	# peso 9, dobrar o seu valor 3 vezes mais ele mesmo
	add $9, $9, $2
	
	addi $2, $0, 5 	# solicitar inteiro
	syscall
	
	add $10, $0, $2 	# guardar valor da terceira nota em $10
	sll $10, $10, 4 	# peso 15, dobrar o seu valor 4 vezes menos ele mesmo
	sub $10, $10, $2
	
	add $11, $8, $9 	# somando todos os valores
	add $11, $11, $10
	
	addi $12, $0, 3 	# somando pesos
	addi $12, $12, 9
	addi $12, $12, 15
	
	div $11, $12 	# dividindo e colocando resultado no $4
	mflo $4
	
	addi $2, $0, 1
	syscall