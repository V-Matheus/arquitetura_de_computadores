.text
main:
	
	addi $8,$0, 3600 	# valor para converter horas para segundos
	addi $9,$0, 60 	# valor para converter minutos para segundos
	
	addi $2, $0, 5 	# Solicitar um número inteiro
	syscall
	
	div  $2, $8  	# dividir o número pelo valor de horas
	mflo $10
	mfhi $11
	
	
	div $11, $9 	# dividir o número pelo valor dos minutos
	mflo $11
	mfhi $12
	
	add $4, $0, $10 	# $4 recebendo valor das horas
	addi $2, $0, 1 	# Mostrando valor do $4
	syscall
	
	addi $4, $0, ':' 	# $4 => :
	addi $2, $0, 11 	# Mostrando valor do $4
	syscall
	
	add $4, $0, $11 	# $4 recebendo valor dos minutos
	addi $2, $0, 1 	# Mostrando valor do $4
	syscall
	
	addi $4, $0, ':' 	# $4 => :
	addi $2, $0, 11 	# Mostrando valor do $4
	syscall
	
	add $4, $0, $12 	# $4 recebendo valor dos segundos
	addi $2, $0, 1 	# Mostrando valor do $4
	syscall
	
	