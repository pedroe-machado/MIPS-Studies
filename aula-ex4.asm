# Title: Exercicio 4 da aula		Filename: aula-ex4.asm
# Author: Pedro Ernesto Machado	Date: 18/07/2022
# Description: dados dois n�meros inteiros,
# calcular a multiplica��o dos
# n�meros como uma sequ�ncia de somas
# Input: dois inteiros digitados pelo usu�rio
# Output: um inteiro impresso na tela
################# Data segment ##################
.data
	msg1: .asciiz  "Informe o primeiro numero: "
	msg2: .asciiz  "Informe o segundo numero: "
	msg3: .asciiz  "Resultado da multiplicacao: "

################# Code segment #################
.text 
.globl main
main:
	la $a0, msg1
	li $v0, 4		# system call for print string
	syscall
	
	li   $v0, 5          # system call for read integer
	syscall              
	
	add $t0, $zero, $v0

	la $a0, msg2
	li $v0, 4		# system call for print string
	syscall
	
	li   $v0, 5          # system call for read integer
	syscall              
	
	add $t1, $zero, $v0

	add  $s0, $zero, $zero
loop: 	
	beq  $t0, $zero, fim
	add  $s0, $s0,   $t1
	addi $t0, $t0,   -1
	j    loop

#	mul $s0, $t0, $t1

fim:	
	la $a0, msg3
	li $v0, 4		# system call for print string
	syscall
	add $a0, $zero, $s0
	li   $v0, 1          # system call for print integer
	syscall
	
	li   $v0, 10          # system call for exit
	syscall               # we are out of here.
