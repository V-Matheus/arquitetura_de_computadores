.text

main:
# Ler dois números
addi $2, $0, 5
syscall
add $8, $0, $2
addi $2, $0, 5
syscall
add $9, $0, $2

slt $10, $8, $9
beq $8, $9, sinalIgual
beq $10, $0, sinalMaior
addi $11, $0, '<'
j imp

sinalMaior:
addi $11, $0, '>'
j imp

sinalIgual:
addi $11, $0, '='
j imp

imp: 
add $4, $0, $8
addi $2, $0, 1
syscall

add $4, $0, $11
addi $2, $0, 11
syscall

add $4, $0, $9
addi $2, $0, 1
syscall

addi $2, $0, 10
syscall