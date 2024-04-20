# Title: Multiplica��o		Filename: multiplicacao.asm
# Author: Pedro Ernesto Machado	Date: 18/07/2022
# Description: C�digo exemplo para uso da multiplica��o
# Input: no pr�prio c�digo
# Output: um inteiro impresso na tela
################# Data segment ##################
.data

x: .word 53
y: .word 14

################# Code segment #################
.text 
.globl main
main:
	lw  $t1, x
	lw  $t2, y
	mul $t3, $t1, $t2
	mflo $a0
	li   $v0, 1           # specify Print Integer service
	syscall 

	li   $v0, 10           
	syscall 
