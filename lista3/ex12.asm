.text
main:
addi $2, $0, 5
syscall
add $8, $0, $2
add $8, $8, 1
addi $9, $0, 0 # contador
addi $10, $0, 0 # contador interno
addi $11, $0, 1 # operador


for:
add $9, $9, $11

checkLimits:
slt $12, $9, $8
beq $12, $0, changeOperation

slt $12, $0, $9
beq $12, $0, fim

add $4, $0, '\n'
addi $2, $0, 11
syscall

addi $10, $0, 0

forI:
slt $12, $10, $9
beq $12, $0, for

add $4, $0, '*'
addi $2, $0, 11
syscall

addi $10, $10, 1

j forI

changeOperation:
addi $11, $0, -1
add $9, $9, $11
add $9, $9, $11
j checkLimits

fim:
addi $2, $0, 10
syscall