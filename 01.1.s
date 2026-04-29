.data
	msg1: .asciiz "\nDigite a largura: "
	msg2: .asciiz "\nDigite a altura: "
	msg3: .asciiz "\nDigite o compirmento: "
	msg4: .asciiz "\nO valor do volume é: "
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
	
	li $v0, 4
	la $a0, msg3
	syscall
	li $v0, 5
	syscall 
	add $t2, $v0, $zero
	
	mul $t3, $t1, $t0
	mul $t4, $t3, $t2
	
	li $v0, 4
	la $a0, msg4
	syscall
	li $v0, 1 
	add $a0, $t4, $zero
	syscall 