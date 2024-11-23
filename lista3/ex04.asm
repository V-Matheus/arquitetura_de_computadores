.text

main:
addi $2, $0, 5
syscall
add $8, $0, $2

addi $2, $0, 5
syscall
add $9, $0, $2

addi $10, $0, 2

add $4, $0, $8
addi $2, $0, 1
syscall


forPares:
addi $8, $8, 1
slt $11, $8, $9
beq $11, $0, fim

div $8, $10
mfhi $11
beq $11, $0, par
j forPares

par:
add $4, $0, $8
addi $2, $0, 1
syscall
j forPares

fim:
add $4, $0, $9
addi $2, $0, 1
syscall

addi $2, $0, 10
syscall