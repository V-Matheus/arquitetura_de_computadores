.text

main:

addi $2, $0, 5
syscall
add $8, $0, $2

sra $9, $8, 31 	# Verificar se é positivo ou negativo | negativo 1, positivo 0
beq $9, $0, dobro
mul $4, $8, $8
j imp

dobro: 
sll $4, $8, 1
j imp

imp:
addi $2, $0, 1
syscall
addi $2, $0, 10
syscall