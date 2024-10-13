.text
main:  

	addi $2, $0, 5	# solicitar um número ao usuário
	syscall
	
	mul $4, $2, $2	# multiplicar o número por ele mesmo, resultando no quadrado e salvando em $4
	
	addi $2, $0, 1	# imprimir resultado do $4
	syscall

