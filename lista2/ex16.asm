.text
main:
addi $2, $0, 5
syscall
add $8, $0, $2

# divisor
addi $9, $0, 10

# 9º valor
div $8, $9
mflo $8
mfhi  $10

# 8º valor
div $8, $9
mflo $8
mfhi  $11

# 7º valor
div $8, $9
mflo $8
mfhi  $12

# 6º valor
div $8, $9
mflo $8
mfhi  $13

# 5º valor
div $8, $9
mflo $8
mfhi  $14

# 4º valor
div $8, $9
mflo $8
mfhi  $15

# 3º valor
div $8, $9
mflo $8
mfhi  $16

# 2º e 1º valor
div $8, $9
mflo $18
mfhi  $17

# multiplicador
addi $9, $0, 2
mul $10, $10, $9

# multiplicador
addi $9, $0, 3
mul $11, $11, $9

# multiplicador
addi $9, $0, 4
mul $12, $12, $9

# multiplicador
addi $9, $0, 5
mul $13, $13, $9

# multiplicador
addi $9, $0, 6
mul $14, $14, $9

# multiplicador
addi $9, $0, 7
mul $15, $15, $9

# multiplicador
addi $9, $0, 8
mul $16, $16, $9

# multiplicador
addi $9, $0, 9
mul $17, $17, $9

# multiplicador
addi $9, $0, 10
mul $18, $18, $9

# somando todos os valores
add $19, $10, $11
add $19, $19, $12
add $19, $19, $13
add $19, $19, $14
add $19, $19, $15
add $19, $19, $16
add $19, $19, $17
add $19, $19, $18

# divisor
addi  $9, $0, 11

# pegando o módulo da soma por 11 e depois subtraindo de 11 o resultado, tendo o 10º número
div $19, $9
mfhi $19
addi  $9, $0, 10
beq $19, $9, dez0

addi  $9, $0, 11
sub $19, $9, $19
add $4, $0, $19
addi $2, $0, 1
syscall
j parte2

dez0:
addi $19, $0, 0
add $4, $0, $19
addi $2, $0, 1
syscall
j parte2

# ---------------------------- 11º digito ---------------------------------

parte2:
# multiplicador
addi $9, $0, 2
mul $19, $19, $9

# multiplicador
addi $9, $0, 2
div $10, $9
mflo $10
addi $9, $0, 3
mul $10, $10, $9

# multiplicador
addi $9, $0, 3
div $11, $9
mflo $11
addi $9, $0, 4
mul $11, $11, $9

# multiplicador
addi $9, $0, 4
div $12, $9
mflo $12
addi $9, $0, 5
mul $12, $12, $9

# multiplicador
addi $9, $0, 5
div $13, $9
mflo $13
addi $9, $0, 6
mul $13, $13, $9

# multiplicador
addi $9, $0, 6
div $14, $9
mflo $14
addi $9, $0, 7
mul $14, $14, $9

# multiplicador
addi $9, $0, 7
div $15, $9
mflo $15
addi $9, $0, 8
mul $15, $15, $9

# multiplicador
addi $9, $0, 8
div $16, $9
mflo $16
addi $9, $0, 9
mul $16, $16, $9

# multiplicador
addi $9, $0, 9
div $17, $9
mflo $17
addi $9, $0, 10
mul $17, $17, $9

# multiplicador
addi $9, $0, 11
mul $18, $18, $9

# somando todos os valores
add $20, $10, $11
add $20, $20, $12
add $20, $20, $13
add $20, $20, $14
add $20, $20, $15
add $20, $20, $16
add $20, $20, $17
add $20, $20, $18
add $20, $20, $19

# divisor
addi  $9, $0, 11

# pegando o módulo da soma por 11 e depois subtraindo de 11 o resultado, tendo o 10º número
div $20, $9
mfhi $20
addi  $9, $0, 11
sub $20, $9, $20

addi  $9, $0, 10
slt $21, $20, $9
beq $21, $0, onze0
add $4, $0, $20
addi $2, $0, 1
syscall

addi $2, $0, 10
syscall

onze0:
addi $20, $0, 0
add $4, $0, $20
addi $2, $0, 1
syscall

addi $2, $0, 10
syscall
