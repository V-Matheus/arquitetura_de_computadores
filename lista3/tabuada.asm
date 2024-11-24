.text
main:

addi $11, $0, 0 #  segundo fator
addi $12, $0, 11 # multiplicar até 10
addi $13, $0, 4 #verificador
addi $14, $0, 10 # divisor


for1:  
  slt $13, $13, $10
  beq $13, $0, priemriaColum
  
  addi $8, $8, 3
  addi $9, $9, 3 # valor da coluna 2
  addi $10, $10, 3 # valor da coluna 3
  
  addi $11, $0, 0
  
  addi $4, $0, '\n'
  addi $2, $0, 11
  syscall

for2:

addi $4, $0, '\n'
addi $2, $0, 11
syscall

addi $11, $11, 1 
slt $13, $11, $12
beq $13, $0, for1 
j impEx

priemriaColum:
  addi $8, $0, 1 # valor da coluna 1
  addi $9, $0, 2 # valor da coluna 2
  addi $10, $0, 3 # valor da coluna 3
  
  addi $11, $0, 0
  
  addi $4, $0, '\n'
  addi $2, $0, 11
  syscall
  
  j for2

impEx:
add $4, $0, $8
addi $2, $0, 1
syscall

addi $4, $0, 'X'
addi $2, $0, 11
syscall

add $4, $0, $11
addi $2, $0, 1
syscall

addi $4, $0, '='
addi $2, $0, 11
syscall

mul $4, $8, $11
addi $2, $0, 1
syscall

slt $13, $8, $12
beq $13, $0, fim

addi $4, $0, ' '
addi $2, $0, 11
syscall

addi $4, $0, ' '
addi $2, $0, 11
syscall

slt $13, $9, $12
beq $13, $0, for2

add $4, $0, $9
addi $2, $0, 1
syscall

addi $4, $0, 'X'
addi $2, $0, 11
syscall

add $4, $0, $11
addi $2, $0, 1
syscall

addi $4, $0, '='
addi $2, $0, 11
syscall

mul $4, $9, $11
addi $2, $0, 1
syscall

addi $4, $0, ' '
addi $2, $0, 11
syscall

addi $4, $0, ' '
addi $2, $0, 11
syscall

add $4, $0, $10
addi $2, $0, 1
syscall

addi $4, $0, 'X'
addi $2, $0, 11
syscall

add $4, $0, $11
addi $2, $0, 1
syscall

addi $4, $0, '='
addi $2, $0, 11
syscall

mul $4, $10, $11
addi $2, $0, 1
syscall

j for2

fim:
addi $2, $0, 10
syscall
