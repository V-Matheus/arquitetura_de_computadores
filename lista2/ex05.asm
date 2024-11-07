.text

main:
# Ler três notas
addi $2, $0, 5
syscall
add $8, $0, $2
addi $2, $0, 5
syscall
add $9, $0, $2
addi $2, $0, 5
syscall
add $10, $0, $2

# Valores dos pesos
addi $11, $0, 1
addi $12, $0, 2
addi $13, $0, 3
addi $14, $0, 60

# multiplicando as notas pelos pesos
mul $8, $8, $11
mul $9, $9, $12
mul $10, $10, $13

# Somando resultado da multiplicação
add $8, $8, $9
add $8, $8, $10

# somando pesos
add $11, $11, $12
add $11, $11, $13

# dividindo valores

div $8, $11
mflo $15
slt $16, $15, $14
beq $16, $0, aprovado
addi $17, $0, 'R'
j imp

aprovado:
addi $17, $0, 'A'
j imp

imp:
add $4, $0, $15
addi $2, $0, 1
syscall

addi $4, $0, '\n'
addi $2, $0, 11
syscall

add $4, $0, $17
addi $2, $0, 11
syscall

addi $2, $0, 10
syscall
