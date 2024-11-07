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
beq $12, $0, verfAno
j invalido

verfAno:

# verificar se ano é bissexto
addi $12, $0, 4

div $10, $12
mfhi $13
beq $13, $0, etapa2
j naoBissexto

etapa2:
addi $12, $0, 100
div $10, $12
mfhi $13
beq $13, $0, etapa3
j etapa4

etapa3:
addi $12, $0, 400
div $10, $12
mfhi $13
beq $13, $0, bissexto
j etapa4

etapa4:
addi $12, $0, 4

div $10, $12
mfhi $13
beq $13, $0, bissexto

bissexto:
addi $13, $0, 1
j verfMes

naoBissexto:
addi $13, $0, 0
j verfMes

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
addi $11, $0, 32
slt $12, $0, $8
beq $12, $0, invalido
slt $12, $8, $11
beq $12, $0, invalido
j valido

fev:
beq $13, $0, fevNaoBis
addi $11, $0, 30
j verFev

fevNaoBis:
addi $11, $0, 29
j verFev

verFev:
slt $12, $0, $8
beq $12, $0, invalido
slt $12, $8, $11
beq $12, $0, invalido
j mar

mar:
addi $11, $0, 32
slt $12, $0, $8
beq $12, $0, invalido
slt $12, $8, $11
beq $12, $0, invalido
j valido

abr:
addi $11, $0, 31
slt $12, $0, $8
beq $12, $0, invalido
slt $12, $8, $11
beq $12, $0, invalido
j valido

mai:
addi $11, $0, 32
slt $12, $0, $8
beq $12, $0, invalido
slt $12, $8, $11
beq $12, $0, invalido
j valido

jun:
addi $11, $0, 31
slt $12, $0, $8
beq $12, $0, invalido
slt $12, $8, $11
beq $12, $0, invalido
j valido

jul:
addi $11, $0, 32
slt $12, $0, $8
beq $12, $0, invalido
slt $12, $8, $11
beq $12, $0, invalido
j valido

ago:
addi $11, $0, 32
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

out:
addi $11, $0, 32
slt $12, $0, $8
beq $12, $0, invalido
slt $12, $8, $11
beq $12, $0, invalido
j valido

nov:
addi $11, $0, 31
slt $12, $0, $8
beq $12, $0, invalido
slt $12, $8, $11
beq $12, $0, invalido
j valido

dez:
addi $11, $0, 32
slt $12, $0, $8
beq $12, $0, invalido
slt $12, $8, $11
beq $12, $0, invalido
j valido

valido:
addi $4, $0, 1
addi $2, $0, 1
syscall
addi $2, $0, 10
syscall

invalido:
addi $4, $0, 0
addi $2, $0, 1
syscall
addi $2, $0, 10
syscall
