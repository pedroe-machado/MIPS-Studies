# Title: Exercicio 3 da aula		Filename: aula-ex3.asm
# Author: Pedro Ernesto Machado	Date: 18/07/2022
# Description: Implementa��o das seguintes fun��es:
# int soma3 (int a, int b, int c) {
#       int r = 0;
#       r = a+b+c;
#       return r;
# }
#
# void main () {
#      int f, x, y, z;
#      f = 2;
#      x = 4; y = 3; z = 1
#      f = f + soma3(x,y,z);
# }
# Input: no pr�prio c�digo
# Output: f
################# Data segment ##################
.data 
	f:	.word 2
	x:	.word 4
	y:	.word 3
	z:	.word 1

################# Code segment #################
.text 
.globl main
main:						# main program entry
	lw  $s0, f
	lw  $a0, x
	lw  $a1, y
	lw  $a2, z
	jal soma3
	add $s0, $s0, $v0
	sw  $s0, f
	
	li  $v0, 10          # system call for exit
	syscall               # we are out of here.

soma3:  
	addi $sp, $sp, -4
	sw   $s0, 0($sp)
	add  $s0, $zero, $zero
    add  $s0, $a0, $a1
	add  $s0, $s0, $a2
	move $v0, $s0
	lw   $s0, 0($sp)
	addi $sp, $sp, 4
	jr $ra
