.text

main:

# ler dia, mês e ano

addi $2, $0, 5
syscall
add $8, $0, $2

addi $2, $0, 5
syscall
add $9, $0, $2

addi $2, $0, 5
syscall
add $10, $0, $2

# verificador
addi $11, $0, 13

slt $12, $10, $0
beq $12, $0, verfMes
j invalido

verfMes:
slt $12, $0, $9
beq $12, $0, invalido
slt $12, $9, $11
beq $12, $0, invalido
beq $9, 1, jan
beq $9, 2, fev
beq $9, 3, mar
beq $9, 4, abr
beq $9, 5, mai
beq $9, 6, jun
beq $9, 7, jul
beq $9, 8, ago
beq $9, 9, set
beq $9, 10, out
beq $9, 11, nov
beq $9, 12, dez

jan:
addi $11, $0, 31
slt $12, $0, $8
beq $12, $0, invalido
slt $12, $8, $11
beq $12, $0, invalido
j valido

fev:
addi $11, $0, 29
slt $12, $0, $8
beq $12, $0, invalido
slt $12, $8, $11
beq $12, $0, invalido
j valido

mar:
addi $11, $0, 31
slt $12, $0, $8
beq $12, $0, invalido
slt $12, $8, $11
beq $12, $0, invalido
j valido

abr:
addi $11, $0, 30
slt $12, $0, $8
beq $12, $0, invalido
slt $12, $8, $11
beq $12, $0, invalido
j valido

mai:
addi $11, $0, 31
slt $12, $0, $8
beq $12, $0, invalido
slt $12, $8, $11
beq $12, $0, invalido
j valido

jun:
addi $11, $0, 30
slt $12, $0, $8
beq $12, $0, invalido
slt $12, $8, $11
beq $12, $0, invalido
j valido

jul:
addi $11, $0, 31
slt $12, $0, $8
beq $12, $0, invalido
slt $12, $8, $11
beq $12, $0, invalido
j valido

ago:
addi $11, $0, 31
slt $12, $0, $8
beq $12, $0, invalido
slt $12, $8, $11
beq $12, $0, invalido
j valido

set:
addi $11, $0, 31
slt $12, $0, $8
beq $12, $0, invalido
slt $12, $8, $11
beq $12, $0, invalido
j valido

set:
addi $11, $0, 31
slt $12, $0, $8
beq $12, $0, invalido
slt $12, $8, $11
beq $12, $0, invalido
j valido


valido:
addi $4, $0, 1
addi $2, $0, 1
syscall
addi $2, $0, 11
syscall

invalido:
addi $4, $0, 0
addi $2, $0, 1
syscall
addi $2, $0, 11
syscall