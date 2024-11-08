.text
main:
addi $2, $0, 5
syscall
add $8, $0, $2

addi $2, $0, 5
syscall
add $9, $0, $2

addi $2, $0, 5
syscall
add $10, $0, $2

div $8, $9
mfhi $11

div $10, $9
mfhi $12

beq $11, $12, congruente
addi $4, $0, 0
addi $2, $0, 1
syscall

addi $2, $0, 10
syscall

congruente: 
addi $4, $0, 1
addi $2, $0, 1
syscall

addi $2, $0, 10
syscall