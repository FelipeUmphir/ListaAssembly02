.data
	msg1: .asciiz "\nDigite o primeiro valor: "
	msg2: .asciiz "\nDigite o segundo valor: "
	msg3: .asciiz "\nA diferença é: "
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
	
	bge $t0, $t1, se
	j senao
	
se:
	sub $t2, $t0, $t1
	j fim_se
	
senao:
	sub $t2, $t1, $t0
	
fim_se:
	li $v0, 4
	la $a0, msg3
	syscall
	li $v0, 1
	add $a0, $t2, $zero
	syscall