.text
main:

	addi $2, $0, 5 	# solicitar um número ao usuário
	syscall
	
	addi $8, $0, 10 	# adicionando divisor
	
	div $2, $8 	# dividindo o número solicitado pelo divisor, assim armazenando o ultimo digito
	
	mfhi $9 	# guardando o ultimo digito no $9
	mflo $10 	# guardando os demais numeros
	
	div $10, $8 	# dividindo o número restante pelo divisor, assim armazenando o terceiro digito
	
	mfhi $10	# guardando o segundo digito no $10
	mflo $11 	# guardando o primmeiro digito no $11
	
	div $11, $8 	# dividindo o número restante pelo divisor, assim armazenando o segundo digito
	
	mfhi $11	# guardando o segundo digito no $11
	mflo $12 	# guardando o primmeiro digito no $12
	
	addi $2, $0, 1	# servico de imprimir inteiros
	
	add $4, $0, $12 # mostrando resultado do primeiro digito
	syscall
	
	addi $4, $0, '\n' # pulando linha
	addi $2, $0, 11	# servico de imprimir string
	syscall 	
	
	add $4, $0, $11 # mostrando resultado do segundo digito
	addi $2, $0, 1	# servico de imprimir inteiros
	syscall
	
	addi $4, $0, '\n' # pulando linha
	addi $2, $0, 11	# servico de imprimir string
	syscall 	
	
	add $4, $0, $10 	#mostrando resultado do terceiro digito
	addi $2, $0, 1	# servico de imprimir inteiros
	syscall 
	
	addi $4, $0, '\n' # pulando linha
	addi $2, $0, 11	# servico de imprimir string
	syscall 
	
	add $4, $0, $9 	# mostrando resultado do quarto digito
	addi $2, $0, 1	# servico de imprimir inteiros
	syscall 