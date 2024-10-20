.text

main:
	addi $2, $0, 5 	# solicitar inteiro
	syscall
	
	add $8, $0, $2 	# salvar o primeiro valor no registrador $8
	
	addi $2, $0, 5 	# solicitar o segundo inteiro
	syscall
	
	add $9, $0, $2 		# salvar o segundo valor no registrador $9
	
	sub $10, $8, $9 	# $8 é menor que $9 ? retornar 1 ou 0
    	sra $10, $10, 31     
    	andi $10, $10, 1
    	
    	mul $12, $8, $10 	# se for 1 multiplica por 16 seu valor inicial mais 32 resultado no seu valor inicial na tabela ascii
	sll $11, $10, 4
	addi $11, $11, 32
	add $4, $12, $11	
	
	addi $2, $0, 11 	#  exibir valor ascii do $4
	syscall
	
	sub $10, $9, $8 	# $9 é menor que $8 ? retornar 1 ou 0
    	sra $10, $10, 31     
    	andi $10, $10, 1
    	
    	mul $13, $9, $10 	# se for 1 multiplica por 16 seu valor inicial mais 32 resultado no seu valor inicial na tabela ascii
	sll $11, $10, 4
	addi $11, $11, 32
	add $4, $13, $11	
	
	addi $2, $0, 11 	#  exibir valor ascii do $4
	syscall
