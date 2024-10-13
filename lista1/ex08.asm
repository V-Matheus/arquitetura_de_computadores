.text
main:

	addi $8,$0, 3600 	# valor para converter horas para segundos
	addi $9,$0, 60 	# valor para converter minutos para segundos

	addi $2, $0, 5 	# servico para solicitar um inteiro
	syscall	
	
	add $10, $0, $2 	# salvando o valor das horas no $10
	
	addi $2, $0, 5 	# servico para solicitar um inteiro
	syscall
	
	add $11, $0, $2 	# salvando o valor dos minutos no $11
	
	addi $2, $0, 5 	# servico para solicitar um inteiro
	syscall
	
	add $12, $0, $2 	# salvando o valor dos segundos $12
	
	mul $10, $10, $8
	mul $11, $11, $9
	
	add $4, $10, $11
	add $4, $4, $12
	
	addi $2, $0, 1 	# servico para mostrar um inteiro
	syscall
	
	
	