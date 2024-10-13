.text
main:

	addi $2, $0, 5	# solicitar um número ao usuário
	syscall
	
	add $8, $0, $2	# salvando o número no $8
	
	addi $2, $0, 5	# solicitar um número ao usuário
	syscall
	
	add $9, $0, $2	# salvando o número no $9
	
	mul $4, $8, $9	# multiplicando os valores de $8 e $9 e salvando no $4
	
	addi $2, $0, 1 # imprimindo resultado do $4
	syscall