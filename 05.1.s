.data
	msg1: .asciiz "\nDigite o primeiro valor: "
	msg2: .asciiz "\nDigite o segundo valor: "
	msg3: .asciiz "\nA somatoria dos ímpares é: "
.text
main:
	li $v0, 4
	la $a0, msg1
	syscall
	li $v0, 5
	syscall 
	add $t0, $v0, $zero
	
	li $v0, 4
	la $a0, msg2
	syscall
	li $v0, 5
	syscall 
	add $t1, $v0, $zero
	
	bgt $t0, $t1, ordenar
	sub $t1, $t1, 1
	j soma
	
ordenar:
	add $t2, $t0, $zero
	move $t0, $t1
	move $t1, $t2
	sub $t1, $t1, 1

soma:
	# $t0 = menor valor
	# $t1 = maior valor
	
	beq $t0, $t1, fim_se
	add $t0, $t0, 1
	rem $t2, $t0, 2
	
	beq $t2, 0, soma

	add $t3, $t3, $t0
	j soma

fim_se:
	li $v0, 4
	la $a0, msg3
	syscall
	li $v0, 1
	add $a0, $t3, $zero
	syscall