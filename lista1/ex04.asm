.text
main:

	addi $2, $0, 5	# solicitar um número ao usuário
	syscall	
	
	add $8, $0, $2	# salvando o número no $8
	
	syscall	# solicitar um número ao usuário
	
	add $9, $0, $2	# salvando o número no $9
	
	add $10, $8, $9	# somando os dois numeros e salvando no $10
	srl $4, $10, 1	# deslocando uma casa para direita, ou seja, dividindo por 2 e salvando no $4
	
	addi $2, $0, 1	# mostrar na tela o resultado do $4
	syscall