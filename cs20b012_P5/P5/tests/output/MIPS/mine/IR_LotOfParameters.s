.text
.globl	main
main:
move $fp, $sp
subu $sp, $sp, 56
sw $ra, -4($fp)
li $s0, 4
move $a0, $s0
jal _halloc
move $s1, $v0
li $s2, 0
sw $s2, 0($s1)
li $s0, 8
move $a0, $s0
jal _halloc
move $s3, $v0
la $s4, MT4_Start
sw $s4, 4($s3)
la $s4, MT4_Change
sw $s4, 0($s3)
sw $s3, 0($s1)
lw $v0, 0($s1)
move $s4, $v0
lw $v0, 4($s4)
move $s4, $v0
li $s0, 1
li $s2, 2
li $s5, 3
li $s6, 4
li $s7, 5
li $t0, 6
move $a0, $s1
move $a1, $s0
move $a2, $s2
move $a3, $s5
sw $s6, 0($sp)
sw $s7, 4($sp)
sw $t0, 8($sp)
sw $t0, 12($sp)
sw $t1, 16($sp)
sw $t2, 20($sp)
sw $t3, 24($sp)
sw $t4, 28($sp)
sw $t5, 32($sp)
sw $t6, 36($sp)
sw $t7, 40($sp)
sw $t8, 44($sp)
sw $t9, 48($sp)
jalr $s4
lw $t9, 48($sp)
lw $t8, 44($sp)
lw $t7, 40($sp)
lw $t6, 36($sp)
lw $t5, 32($sp)
lw $t4, 28($sp)
lw $t3, 24($sp)
lw $t2, 20($sp)
lw $t1, 16($sp)
lw $t0, 12($sp)
move $s3, $v0
move $a0, $s3
jal _print
lw $ra, -4($fp)
addu $sp, $sp, 56
j $ra

.text
.globl	MT4_Start
MT4_Start:
sw $fp, -8($sp)
move $fp, $sp
sw $ra, -4($fp)
subu $sp, $sp, 104
sw $s0, 24($sp)
sw $s1, 28($sp)
sw $s2, 32($sp)
sw $s3, 36($sp)
sw $s4, 40($sp)
sw $s5, 44($sp)
sw $s6, 48($sp)
sw $s7, 52($sp)
move $s0, $a0
move $s1, $a1
move $s2, $a2
move $s3, $a3
lw $v0, 0($fp)
move $s4, $v0
lw $v0, 4($fp)
move $s5, $v0
lw $v0, 8($fp)
move $s6, $v0
move $a0, $s1
jal _print
move $a0, $s2
jal _print
move $a0, $s3
jal _print
move $a0, $s4
jal _print
move $a0, $s5
jal _print
move $a0, $s6
jal _print
lw $v0, 0($s0)
move $s7, $v0
lw $v0, 0($s7)
move $s7, $v0
move $a0, $s0
move $a1, $s6
move $a2, $s5
move $a3, $s4
sw $s3, 0($sp)
sw $s2, 4($sp)
sw $s1, 8($sp)
sw $t0, 56($sp)
sw $t1, 60($sp)
sw $t2, 64($sp)
sw $t3, 68($sp)
sw $t4, 72($sp)
sw $t5, 76($sp)
sw $t6, 80($sp)
sw $t7, 84($sp)
sw $t8, 88($sp)
sw $t9, 92($sp)
jalr $s7
lw $t9, 92($sp)
lw $t8, 88($sp)
lw $t7, 84($sp)
lw $t6, 80($sp)
lw $t5, 76($sp)
lw $t4, 72($sp)
lw $t3, 68($sp)
lw $t2, 64($sp)
lw $t1, 60($sp)
lw $t0, 56($sp)
move $s0, $v0
move $s0, $s0
move $v0, $s0
lw $s7, 52($sp)
lw $s6, 48($sp)
lw $s5, 44($sp)
lw $s4, 40($sp)
lw $s3, 36($sp)
lw $s2, 32($sp)
lw $s1, 28($sp)
lw $s0, 24($sp)
lw $ra, -4($fp)
lw $fp, -8($fp)
addu $sp, $sp, 104
j $ra

.text
.globl	MT4_Change
MT4_Change:
sw $fp, -8($sp)
move $fp, $sp
sw $ra, -4($fp)
subu $sp, $sp, 52
sw $s0, 12($sp)
sw $s1, 16($sp)
sw $s2, 20($sp)
sw $s3, 24($sp)
sw $s4, 28($sp)
sw $s5, 32($sp)
sw $s6, 36($sp)
sw $s7, 40($sp)
move $v1, $a0
move $s0, $a1
move $s1, $a2
move $s2, $a3
lw $v0, 0($fp)
move $s3, $v0
lw $v0, 4($fp)
move $s4, $v0
lw $v0, 8($fp)
move $s5, $v0
move $a0, $s0
jal _print
move $a0, $s1
jal _print
move $a0, $s2
jal _print
move $a0, $s3
jal _print
move $a0, $s4
jal _print
move $a0, $s5
jal _print
li $s0, 0
move $v0, $s0
lw $s7, 40($sp)
lw $s6, 36($sp)
lw $s5, 32($sp)
lw $s4, 28($sp)
lw $s3, 24($sp)
lw $s2, 20($sp)
lw $s1, 16($sp)
lw $s0, 12($sp)
lw $ra, -4($fp)
lw $fp, -8($fp)
addu $sp, $sp, 52
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

