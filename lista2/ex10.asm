.text
main:
# Pegando valor de 3 números
addi $2, $0, 5
syscall
add $8, $0, $2

addi $2, $0, 5
syscall
add $9, $0, $2

addi $2, $0, 5
syscall
add $10, $0, $2

# divisor
addi $11, $0, 3

# soma dos valores
add $12, $8, $9
add $12, $12, $10

# se não tiver resto então a div é inteira
div $12, $11
mflo $4
mfhi $12
beq $12, $0, imp

# multiplica por 10 e div pelo mesmo divisor para conseguir a primeira casa decimal
mul $12, $12, 10
div $12, $11
mflo $12

# se a primeira casa deciaml for menor que 4 subtrai de 1, se for maior soma de 1
addi $11, $0, 5
slt $12, $12, $11
beq $12, $0, soma
j sub

soma: 
addi $4, $4, 1
j imp

sub: 
subi $4, $4, 1
j imp

imp:
addi $2, $0, 1
syscall
addi $2, $0, 10
syscall
