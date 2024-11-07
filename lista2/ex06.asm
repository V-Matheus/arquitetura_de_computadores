.text
main:   addi $2, $0, 5
        syscall
        add $8, $0, $2  # idade - Idd
        addi $2, $0, 5
        syscall
        add $9, $0, $2  #tempo de serviço - Ts
       
        addi $10, $0, 65
        addi $11, $0, 40
        addi $12, $0, 60
        addi $13, $0, 36
       
        slt $15, $8, $10 # $15 <= Idd<65 ? 1 : 0;
        beq $15, $0, apos
        slt $16, $9, $11 # $16 <= Ts<40 ? 1 : 0;
        beq $16, $0, apos
                       
        slt $17, $8, $12 # $17 <= Idd<60 ? 1 : 0;                                
        slt $18, $9, $13 # $18 <= Ts<36 ? 1 : 0;
        add $19, $17, $18
        beq $19, $0, apos
       
        addi $4, $0, 'N'
        j imp
apos:   addi $4, $0, 'S'

imp:    addi $2, $0, 11
        syscall      
                                                                                                                                                                                                                                                                       
        addi $2, $0, 10
        syscall