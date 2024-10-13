.text
main:	addi $2, $0, 5	# Pedir um número ao usuário
	syscall
	
	add $8, $0, $2	# guardando o valor digitado no registrador $8
	sll $4, $8, 1	# deslocando 1 casa decimal para esquerda, ou seja, multiplicando por 2 e guardando em $2
	
	addi $2, $0, 1	# imprimindo valor do $4
	syscall