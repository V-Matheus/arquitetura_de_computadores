.text

main:	
	addi $2, $0, 5 # solicitar inteiro
	syscall
	
	addi $8, $0, 10 	# valor do divisor
	
	div $2, $8 	# dividindo valor por 10 para pegar o ultimo numero
	mfhi $9
	
	sub $10, $0, $9 	# subtraindo de 0 para verificar qual numero está salvo, qualquer numero menos o 0 se torna negativo
	srl $10, $10, 31 	# pegando o ultimo bit

	sll $10, $10, 4 	# multiplica por 16
	
	addi $10, $10, 32
	
	add $11, $10, $9 	# Salvando resultado no registrador $11
	
	mflo $2
	
	div $2, $8 	# dividindo valor por 10 para pegar o ultimo numero
	mfhi $9
	
	sub $10, $0, $9 	# subtraindo de 0 para verificar qual numero está salvo, qualquer numero menos o 0 se torna negativo
	srl $10, $10, 31 	# pegando o ultimo bit

	sll $10, $10, 4 	# multiplica por 16
	
	addi $10, $10, 32
	
	add $12, $10, $9 	# Salvando resultado no registrador $12
	
	mflo $2
	
	div $2, $8 	# dividindo valor por 10 para pegar o ultimo numero
	mfhi $9
	
	sub $10, $0, $9 	# subtraindo de 0 para verificar qual numero está salvo, qualquer numero menos o 0 se torna negativo
	srl $10, $10, 31 	# pegando o ultimo bit

	sll $10, $10, 4 	# multiplica por 16
	
	addi $10, $10, 32 	
	
	add $13, $10, $9 # Salvando resultado no registrador $13
	
	mflo $2
	
	div $2, $8 	# dividindo valor por 10 para pegar o ultimo numero
	mfhi $9
	
	sub $10, $0, $9 	# subtraindo de 0 para verificar qual numero está salvo, qualquer numero menos o 0 se torna negativo
	srl $10, $10, 31 	# pegando o ultimo bit

	sll $10, $10, 4 	# multiplica por 16
	
	addi $14, $10, 32 
	
	add $4, $0, $14 
	addi $2, $0, 11 # servico para mostrar um caracter
	syscall 	# chamada do servico
	
	add $4, $0, $13 
	addi $2, $0, 11 # servico para mostrar um caracter
	syscall 	# chamada do servico
	
	add $4, $0, $12
	addi $2, $0, 11 # servico para mostrar um caracter
	syscall 	# chamada do servico
	
	add $4, $0, $11
	addi $2, $0, 11 # servico para mostrar um caracter
	syscall 	# chamada do servico