.text
main:
addi $2, $0, 5
syscall

add $8, $0, $2 # divisor
addi $9, $0, 1 # contador

addi $2, $0, 5
syscall
mul $10, $8, $2 # limite
addi $10, $10, 1

forDiv:
slt $11, $9, $10
beq $11, $0, forFim

div $9, $8
mfhi $12
beq $12, $0, divisor
addi $9, $9, 1
j forDiv

divisor:
add $4, $0, $9
addi $2, $0, 1
syscall

add $4, $0, '\n'
addi $2, $0, 11
syscall

addi $9, $9, 1
j forDiv

forFim:
addi $2, $0, 10
syscall