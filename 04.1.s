.data
	msg1: .asciiz "\nDigite o primeira nota: "
	msg2: .asciiz "\nDigite o segunda nota: "
	msg3: .asciiz "\nDigite o terceira nota: "
	msg4: .asciiz "\nDigite o quarta nota: "
	msg5: .asciiz "\nA média é: "
	msg6: .asciiz "\nAPROVADO!"
	msg7: .asciiz "\nEXAME!"
	msg8: .asciiz "\nRETIDO!"
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
	
	li $v0, 4
	la $a0, msg4
	syscall
	li $v0, 5
	syscall 
	add $t3, $v0, $zero
	
	add $t4, $t1, $t2
	add $t1, $t0, $t3
	add $t0, $t1, $t4
	div $t1, $t0, 4
	
	li $v0, 4
	la $a0, msg5
	syscall
	li $v0, 1
	add $a0, $t1, $zero
	syscall
	
	bge $t1, 6, se
	bge $t1, 3, senao
	j senaose
	
se:
	li $v0, 4
	la $a0, msg6
	syscall
	j fim_se
	
senao:
	li $v0, 4
	la $a0, msg7
	syscall
	j fim_se
	
senaose:
	li $v0, 4
	la $a0, msg8
	syscall
	
fim_se: