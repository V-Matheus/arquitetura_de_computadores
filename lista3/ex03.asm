.text

main:
addi $8, $0, 1 # contador
addi $9, $0, 11 # limit

forContador:
slt $10, $8, $9
beq $10, $0, end

add $4, $0, $8
addi $2, $0, 1
syscall

addi $4, $0, '\n'
addi $2, $0, 11
syscall

addi $8, $8, 1
j forContador

end:
addi $2, $0, 10
syscall