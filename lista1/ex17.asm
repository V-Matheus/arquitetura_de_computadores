.text

main:

	addi $8, $0, 2	# valor do divisor

	addi $2, $0, 5 	# solicitar inteiro
	syscall
	
	add $9, $0, $2 	# salvar o primeiro valor no registrador $9
	
	addi $2, $0, 5 	# solicitar o segundo inteiro
	syscall
	
	add $10, $0, $2 		# salvar o primeiro valor no registrador $10
	
	add $12, $9, $10 		# somar os dois registradores
	
	div $12, $8  		# dividir a soam por 2 conseguindo a media
	
	mflo $4 	# exibindo valor inteiro
	addi $2, $0, 1 	
	syscall
	
	mfhi $12
	
	andi $12, $12, 1
	
	addi $8, $0, 44	# valor do multiplicador para o valor da "," em ascii
	
	mul $4, $12, $8

	addi $2, $0, 11 	
	syscall
	
	addi $8, $0, 5	# valor do multiplicador para exibir o 5
	
	mul $4, $12, $8
	
	addi $2, $0, 1 	
	syscall
	
	
	
	
	
	