# Title: Exercicio 2 da aula		Filename: aula-ex2.asm
# Author: Pedro Ernesto Machado	Date: 18/07/2022
# Description: C�digo que implementa z = x + y;
# Input: no pr�prio c�digo
# Output: z
################# Data segment ##################
.data
	x: .word 10
	y: .word 20
	z: .word
	
################# Code segment #################
.text 
.globl main
main:						# main program entry
	la $t7, x
	lw $t0, 0($t7)
	la $t7, y
	lw $t1, 0($t7)
	add $s0, $t0, $t1
	la $t7, z
	sw $s0, 0($t7)

	li $v0, 10				# Exit program
	syscall