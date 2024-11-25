.text
main:
addi $2, $0, 5
syscall
add $8, $0, $2
addi $9, $0, 0 # contador de estrelas adicionais
addi $10, $0, 1 # contador de espaços
addi $12, $0, 0 # contador para imprimir estrelas
addi $13, $0, 0 # contador de caracteres

forEspacos:
sub $14, $8, $9
slt $11, $10, $14
beq $11, $0, forEstrelas

addi $4, $0, 's'
addi $2, $0, 11
syscall

addi $10, $10, 1
addi $13, $13, 1
j forEspacos

forEstrelas:

add $11, $8, $8
add $11, $11, -1
beq $11, $13, nextLine

addi $4, $0, '*'
addi $2, $0, 11
syscall

addi $13, $13, 1

sll $11, $9, 1
slt $11, $12, $11
beq $11, $0, resetarContadorEspacos
addi $12, $12, 1
j forEstrelas

resetarContadorEspacos:
addi $10, $0, 1
j forEspacos

nextLine:
addi $11, $8, -1
beq $9, $11, fim
addi $4, $0, '\n'
addi $2, $0, 11
syscall
addi $9, $9, 1
addi $13, $0, 0
addi $12, $0, 0
j resetarContadorEspacos

fim:
addi $2, $0, 10
syscall
