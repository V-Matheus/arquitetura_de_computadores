.text
main:
addi $2, $0, 5
syscall
add $8, $0, $2

# divisor
addi $9,$0, 10

div $8, $9
mfhi $10
mflo $8

div $8, $9
mfhi $11
mflo $8

div $8, $9
mfhi $12
mflo $8

div $8, $9
mfhi $13
mflo $8

div $8, $9
mfhi $14
mflo $8

div $8, $9
mfhi $15
mflo $8

div $8, $9
mfhi $16
mflo $8

div $8, $9
mfhi $17
mflo $8

div $8, $9
mfhi $18
mflo $8

div $8, $9
mfhi $19
mflo $8

div $8, $9
mfhi $20
mflo $8

# multiplicador
addi $9,$0, 2

mul $20, $20, $9
add $19, $20, $19

mul $19, $19, $9
add $18, $19, $18

mul $18, $18, $9
add $17, $18, $17

mul $17, $17, $9
add $16, $17, $16

mul $16, $16, $9
add $15, $16, $15

mul $15, $15, $9
add $14, $15, $14

mul $14, $14, $9
add $13, $14, $13

mul $13, $13, $9
add $12, $13, $12

mul $12, $12, $9
add $11, $12, $11

mul $11, $11, $9
add $4, $11, $10

addi $2, $0, 1
syscall