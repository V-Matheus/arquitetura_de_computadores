.text
main:
addi $2, $0, 5
syscall
add $8, $0, $2

# divisor
addi $9,$0, 2

div $8, $9
mfhi $10
mflo $8
beq $8, $0, imp

div $8, $9
mfhi $11
mflo $8
beq $8, $0, imp

div $8, $9
mfhi $12
mflo $8
beq $8, $0, imp

div $8, $9
mfhi $13
mflo $8
beq $8, $0, imp

div $8, $9
mfhi $14
mflo $8
beq $8, $0, imp

div $8, $9
mfhi $15
mflo $8
beq $8, $0, imp

div $8, $9
mfhi $16
mflo $8
beq $8, $0, imp

div $8, $9
mfhi $17
mflo $8
beq $8, $0, imp

div $8, $9
mfhi $18
mflo $8
beq $8, $0, imp

div $8, $9
mfhi $19
mflo $8
beq $8, $0, imp

div $8, $9
mfhi $20
mflo $8
beq $8, $0, imp

imp:

add $4, $0, $19
addi $2, $0, 1
syscall

add $4, $0, $18
addi $2, $0, 1
syscall

add $4, $0, $17
addi $2, $0, 1
syscall

add $4, $0, $16
addi $2, $0, 1
syscall

add $4, $0, $15
addi $2, $0, 1
syscall

add $4, $0, $14
addi $2, $0, 1
syscall

add $4, $0, $13
addi $2, $0, 1
syscall

add $4, $0, $12
addi $2, $0, 1
syscall

add $4, $0, $11
addi $2, $0, 1
syscall

add $4, $0, $10
addi $2, $0, 1
syscall