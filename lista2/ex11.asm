.text
main:
# Pegando valor de 3 valores
addi $2, $0, 5
syscall
add $8, $0, $2

addi $2, $0, 5
syscall
add $9, $0, $2

addi $2, $0, 5
syscall
add $10, $0, $2

# verifico se a magnitude é positiva
slt $11, $9, $8
slt $12, $9, $10
add $13, $11,  $12
beq $13, $0, positivo

# verifico se a magnitude é negativa
slt $11, $8, $9
slt $12, $10, $9
add $13, $11,  $12
beq $13, $0, negativo

addi $4, $0, 'N'
addi $2, $0, 11
syscall

addi $2, $0, 10
syscall

positivo: 
addi $4, $0, 'P'
addi $2, $0, 11
syscall

addi $4, $0, '+'
addi $2, $0, 11
syscall

addi $2, $0, 10
syscall

negativo: 
addi $4, $0, 'P'
addi $2, $0, 11
syscall

addi $4, $0, '-'
addi $2, $0, 11
syscall

addi $2, $0, 10
syscall



