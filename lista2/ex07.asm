.text

main:
# Ler ano
addi $2, $0, 5
syscall
add $8, $0, $2
addi $9, $0, 4

div $8, $9
mfhi $10
beq $10, $0, etapa2
j naoBissexto

etapa2:
addi $9, $0, 100
div $8, $9
mfhi $10
beq $10, $0, etapa3
j naoBissexto

etapa3:
addi $9, $0, 400
div $8, $9
mfhi $10
beq $10, $0, bissexto
j naoBissexto

bissexto:
addi $4, $0, 1
addi $2, $0, 1
syscall
addi $2, $0, 10
syscall

naoBissexto:
addi $4, $0, 0
addi $2, $0, 1
syscall
addi $2, $0, 10
syscall