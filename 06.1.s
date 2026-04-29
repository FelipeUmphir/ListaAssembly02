.data
	msg1: .asciiz "\nDigite um valor: "
	msg2: .asciiz "\nO maior valor digitado é: "
	msg3: .asciiz "\nO menor valor digitado é: "
.text
main:
	add $t1, $zero, $zero
	add $t2, $zero, $zero
comeco:
	li $v0, 4
	la $a0, msg1
	syscall
	li $v0, 5
	syscall
	add $t0, $v0, $zero
	
	#$t0 = valor lido
	#$t1 = maior valor
	#$t2 = menor valor
	#$t3 = contador 
	
	blt $t0, 0, comeco
	bgt $t0, $t1, maior
	
verifica_menor:
	blt $t0, $t2, menor
	beq $t2, $zero, menor
	j contador

maior:
	add $t1, $t0, $zero
	j verifica_menor

menor:
	add $t2, $t0, $zero
	j contador

contador:
	add $t3, $t3, 1
	bge $t3, 10, fim
	j comeco

fim:
	li $v0, 4
	la $a0, msg2
	syscall
	li $v0, 1
	add $a0, $t1, $zero
	syscall
	
	li $v0, 4
	la $a0, msg3
	syscall
	li $v0, 1
	add $a0, $t2, $zero
	syscall