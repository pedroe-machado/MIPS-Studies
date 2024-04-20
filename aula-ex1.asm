# Title: Exercicio 1 da aula		Filename: aula-ex1.asm
# Author: Pedro Ernesto Machado	Date: 18/07/2022
# Description: Codigo que implementa x = -3 + 7 x 4
# Input: no proprio codigo
# Output: x
################# Data segment ##################
.data
	x: .word 
	
################# Code segment #################
.text 
.globl main
main:						# main program entry
	addi $t0, $zero, -3
	addi $t1, $zero, 7
	sll $t2, $t1, 2		
	add $s0, $t0, $t2
	
	la $t7, x
	sw $s0, 0($t7)
	
	li $v0, 10				# Exit program
	syscall
