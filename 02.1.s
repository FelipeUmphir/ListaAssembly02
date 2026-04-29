.data
	msg1: .asciiz "\nDigite o raio da circunferencia: "
	msg2: .asciiz "\nO valor do comprimento da circunferência é: "
.text
main:
	li $v0, 4
	la $a0, msg1
	syscall
	li $v0, 5
	syscall 
	add $t0, $v0, $zero
	
	mul $t1, $t0, 2
	mul $t2, $t1, 3
	
	li $v0, 4
	la $a0, msg2
	syscall
	li $v0, 1 
	add $a0, $t2, $zero
	syscall 
