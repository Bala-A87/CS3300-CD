.text
.globl	main
main:
move $fp, $sp
subu $sp, $sp, 44
sw $ra, -4($fp)
sw $t0, 0($sp)
sw $t1, 4($sp)
sw $t2, 8($sp)
sw $t3, 12($sp)
sw $t4, 16($sp)
sw $t5, 20($sp)
sw $t6, 24($sp)
sw $t7, 28($sp)
sw $t8, 32($sp)
sw $t9, 36($sp)
jalr Test35
lw $t9, 36($sp)
lw $t8, 32($sp)
lw $t7, 28($sp)
lw $t6, 24($sp)
lw $t5, 20($sp)
lw $t4, 16($sp)
lw $t3, 12($sp)
lw $t2, 8($sp)
lw $t1, 4($sp)
lw $t0, 0($sp)
move $s0, $v0
move $a0, $s0
jal _print
lw $ra, -4($fp)
addu $sp, $sp, 44
j $ra

.text
.globl	Test35
Test35:
sw $fp, -8($sp)
move $fp, $sp
sw $ra, -4($fp)
subu $sp, $sp, 104
sw $s0, 64($sp)
sw $s1, 68($sp)
sw $s2, 72($sp)
sw $s3, 76($sp)
sw $s4, 80($sp)
sw $s5, 84($sp)
sw $s6, 88($sp)
sw $s7, 92($sp)
li $v0, 0
sw $v0, 0($sp)
li $v0, 1
sw $v0, 4($sp)
li $v0, 2
sw $v0, 8($sp)
li $v0, 3
sw $v0, 12($sp)
li $v0, 4
sw $v0, 16($sp)
li $v0, 5
sw $v0, 20($sp)
li $v0, 6
sw $v0, 24($sp)
li $v0, 7
sw $v0, 28($sp)
li $v0, 8
sw $v0, 32($sp)
li $v0, 9
sw $v0, 36($sp)
li $v0, 10
sw $v0, 40($sp)
li $v0, 11
sw $v0, 44($sp)
li $v0, 12
sw $v0, 48($sp)
li $v0, 13
sw $v0, 52($sp)
li $v0, 14
sw $v0, 56($sp)
li $v0, 15
sw $v0, 60($sp)
li $t8, 16
li $t9, 17
li $s0, 18
li $s1, 19
li $s2, 20
li $s3, 21
li $s4, 22
li $s5, 23
li $s6, 24
li $s7, 25
li $t0, 26
li $t1, 27
li $t2, 28
li $t3, 29
li $t4, 30
li $t5, 31
li $t6, 32
li $t7, 33
move $a0, $t7
jal _print
move $a0, $t6
jal _print
move $a0, $t5
jal _print
move $a0, $t4
jal _print
move $a0, $t3
jal _print
move $a0, $t2
jal _print
move $a0, $t1
jal _print
move $a0, $t0
jal _print
move $a0, $s7
jal _print
move $a0, $s6
jal _print
move $a0, $s5
jal _print
move $a0, $s4
jal _print
move $a0, $s3
jal _print
move $a0, $s2
jal _print
move $a0, $s1
jal _print
move $a0, $s0
jal _print
move $a0, $t9
jal _print
move $a0, $t8
jal _print
lw $v0, 60($sp)
move $a0, $v0
jal _print
lw $v0, 56($sp)
move $a0, $v0
jal _print
lw $v0, 52($sp)
move $a0, $v0
jal _print
lw $v0, 48($sp)
move $a0, $v0
jal _print
lw $v0, 44($sp)
move $a0, $v0
jal _print
lw $v0, 40($sp)
move $a0, $v0
jal _print
lw $v0, 36($sp)
move $a0, $v0
jal _print
lw $v0, 32($sp)
move $a0, $v0
jal _print
lw $v0, 28($sp)
move $a0, $v0
jal _print
lw $v0, 24($sp)
move $a0, $v0
jal _print
lw $v0, 20($sp)
move $a0, $v0
jal _print
lw $v0, 16($sp)
move $a0, $v0
jal _print
lw $v0, 12($sp)
move $a0, $v0
jal _print
lw $v0, 8($sp)
move $a0, $v0
jal _print
lw $v0, 4($sp)
move $a0, $v0
jal _print
lw $v0, 0($sp)
move $a0, $v0
jal _print
lw $v0, 0($sp)
move $v0, $v0
lw $s7, 92($sp)
lw $s6, 88($sp)
lw $s5, 84($sp)
lw $s4, 80($sp)
lw $s3, 76($sp)
lw $s2, 72($sp)
lw $s1, 68($sp)
lw $s0, 64($sp)
lw $ra, -4($fp)
lw $fp, -8($fp)
addu $sp, $sp, 104
j $ra

.text
.globl	_halloc
_halloc:
li $v0, 9
syscall
j $ra

.text
.globl	_print
_print:
li $v0, 1
syscall
la $a0, newl
li $v0, 4
syscall
j $ra

.data
.align 0
newl:	.asciiz "\n"

.data
.align 0
str_er:	.asciiz " ERROR: abnormal termination\n"

