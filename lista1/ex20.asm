.text 

main:

	addi $2, $0, 5 	# solicitar inteiro
	syscall
	
	add $27, $0, $2
	
	addi $8, $0, 19 # variavel A
	div $2, $8
	mfhi $9
	
	addi $8, $0, 100 # variavel B
	div $2, $8
	mflo $10
	
	addi $8, $0, 100 # variavel C
	div $2, $8
	mfhi $11
	
	addi $8, $0, 4 # variavel D
	div $10, $8
	mflo $12
	
	addi $8, $0, 4 # variavel E
	div $10, $8
	mfhi $13
	
	addi $8, $0, 25 # variavel F
	addi $14, $10, 8
	div $14, $8
	mflo $14
	
	addi $8, $0, 16 # variavel G
	sub $15, $10, $14
	addi $15, $15, 1
	div $15, $8
	mflo $15
	
	addi $8, $0, 19 # variavel H	
	mul $16, $9, $8
	add $16, $16, $10
	sub $16, $16, $12
	sub $16, $16, $15
	addi $16, $16, 15
	addi $8, $0, 30
	div $16, $8
	mfhi $16
	
	addi $8, $0, 16 # variavel I
	div $11, $8
	mflo $17
	
	addi $8, $0, 16 # variavel K
	div $11, $8
	mfhi $18
	
	addi $8, $0, 2 # variavel L	
	mul $19, $13, $8
	mul $20, $17, $8
	add $19, $19, $20
	addi $19, $19, 32
	sub $19, $19, $16
	sub $19, $19, $18
	addi $8, $0, 7
	div $19, $8
	mfhi $19
	
	addi $8, $0, 11 # variavel M
	mul $20, $16, $8
	addi $8, $0, 22
	mul $21, $19, $8
	add $20, $9, $20
	add $20, $20, $21
	addi $8, $0, 451
	div $20, $8
	mflo $20
	
	
	addi $8, $0, 7 # mes
	mul $21, $8, $20
	sub $21, $19, $21
	add $21, $21, $16
	addi $21, $21, 114
	addi $8, $0, 31
	div $21, $8
	mflo $21
	
	addi $8, $0, 7 # dia
	mul $22, $20, $8
	sub $22, $19, $22
	add $22, $22, $16
	addi $8, $0, 31
	div $22, $8
	mfhi $22
	addi $4, $22, 1
	
	addi $2, $0, 1 	# mostrar dia
	syscall
	
	addi $4, $0, '/' # mostrar /
	addi $2, $0, 11
	syscall
	
	add $4, $0, $21 # mostrar dia
	addi $2, $0, 1
	syscall
	
	addi $4, $0, '/' # mostrar /
	addi $2, $0, 11
	syscall
	
	add $4, $0, $27 # mostrar dia
	addi $2, $0, 1
	syscall
	