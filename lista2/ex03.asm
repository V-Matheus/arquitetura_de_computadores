.text

main:

# Ler dois números
addi $2, $0, 5
syscall
add $8, $0, $2
addi $2, $0, 5
syscall
add $9, $0, $2

slt $10, $8, $9 	# $8 < $9 ? 
beq $0, $10, maior8
add $4, $0, $9
sub $10, $9, $8
j imp

maior8:
add $4, $0, $8
sub $10, $8, $9

imp:
addi $2, $0, 1
syscall

addi $4, $0, '\n'
addi $2, $0, 11
syscall

add $4, $0, $10
addi $2, $0, 1
syscall

addi $2, $0, 10
syscall