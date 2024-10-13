.text
main:

	addi $2, $0, 5 	# solicitar um número ao usuário
	syscall
	
	addi $8, $0, 10 	# adicionando divisor
	div $2, $8 	# dividindo o número solicitado pelo divisor, assim armazenando o ultimo digito
	
	mfhi $9 	# guardando o ultimo digito no $9
	mflo $10 	# guardando os demais numeros
	
	div $10, $8 	# dividindo o número restante pelo divisor, assim armazenando o ultimo digito
	mfhi $10	# guardando o segundo digito no $10
	mflo $11 	# guardando o primmeiro digito no $11
	
	addi $2, $0, 1	# mostrando resultado do primeiro digito
	add $4, $0, $11
	syscall 	
	
	add $4, $0, $10 # mostrando resultado do segundo digito
	syscall 	
	
	add $4, $0, $9 	#mostrando resultado do ultimo digito
	syscall 	 
	
