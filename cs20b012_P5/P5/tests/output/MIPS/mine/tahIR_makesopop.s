.text
.globl	main
main:
move $fp, $sp
subu $sp, $sp, 44
sw $ra, -4($fp)
la $s0, rnad_1
li $s1, 1
li $v1, 2
li $s2, 12
move $a0, $s2
jal _halloc
move $s3, $v0
sw $s2, 0($s3)
move $s2, $s2
li $s4, 13
move $a0, $s1
move $a1, $s3
move $a2, $s2
move $a3, $s4
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
jalr $s0
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
sw $s0, 4($s3)
lw $v0, 0($s3)
move $s0, $v0
lw $v0, 4($s3)
move $s1, $v0
add $s2, $s0, $s1
sw $s2, 8($s3)
move $a0, $s3
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
jalr rnad_2
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
move $s2, $v0
sle $s3, $s0, $s1
move $s3, $s3
move $a0, $s3
jal _print
sne $s3, $s0, $s1
move $s3, $s3
move $a0, $s3
jal _print
sub $s3, $s0, $s1
move $s3, $s3
move $a0, $s3
jal _print
mul $s3, $s0, $s1
move $s3, $s3
move $a0, $s3
jal _print
div$s3, $s0, $s1
move $s3, $s3
move $a0, $s3
jal _print
add $s0, $s0, $s1
move $s0, $s0
move $a0, $s0
jal _print
move $a0, $s2
jal _print
lw $ra, -4($fp)
addu $sp, $sp, 44
j $ra

.text
.globl	rnad_1
rnad_1:
sw $fp, -8($sp)
move $fp, $sp
sw $ra, -4($fp)
subu $sp, $sp, 80
sw $s0, 0($sp)
sw $s1, 4($sp)
sw $s2, 8($sp)
sw $s3, 12($sp)
sw $s4, 16($sp)
sw $s5, 20($sp)
sw $s6, 24($sp)
sw $s7, 28($sp)
move $s0, $a0
move $s1, $a1
move $v1, $a2
move $s2, $a3
move $a0, $s0
move $a1, $s1
move $a2, $s2
sw $t0, 32($sp)
sw $t1, 36($sp)
sw $t2, 40($sp)
sw $t3, 44($sp)
sw $t4, 48($sp)
sw $t5, 52($sp)
sw $t6, 56($sp)
sw $t7, 60($sp)
sw $t8, 64($sp)
sw $t9, 68($sp)
jalr rnad_3
lw $t9, 68($sp)
lw $t8, 64($sp)
lw $t7, 60($sp)
lw $t6, 56($sp)
lw $t5, 52($sp)
lw $t4, 48($sp)
lw $t3, 44($sp)
lw $t2, 40($sp)
lw $t1, 36($sp)
lw $t0, 32($sp)
move $s3, $v0
move $v0, $s3
lw $s7, 28($sp)
lw $s6, 24($sp)
lw $s5, 20($sp)
lw $s4, 16($sp)
lw $s3, 12($sp)
lw $s2, 8($sp)
lw $s1, 4($sp)
lw $s0, 0($sp)
lw $ra, -4($fp)
lw $fp, -8($fp)
addu $sp, $sp, 80
j $ra

.text
.globl	rnad_2
rnad_2:
sw $fp, -8($sp)
move $fp, $sp
sw $ra, -4($fp)
subu $sp, $sp, 40
sw $s0, 0($sp)
sw $s1, 4($sp)
sw $s2, 8($sp)
sw $s3, 12($sp)
sw $s4, 16($sp)
sw $s5, 20($sp)
sw $s6, 24($sp)
sw $s7, 28($sp)
move $s0, $a0
move $s1, $s0
li $v1, 0
lw $v0, 0($s1)
move $s0, $v0
li $s2, 4
move $a0, $s0
jal _print
lw $v0, 4($s1)
move $s0, $v0
move $a0, $s0
jal _print
lw $v0, 8($s1)
move $s0, $v0
move $a0, $s0
jal _print
move $v0, $s2
lw $s7, 28($sp)
lw $s6, 24($sp)
lw $s5, 20($sp)
lw $s4, 16($sp)
lw $s3, 12($sp)
lw $s2, 8($sp)
lw $s1, 4($sp)
lw $s0, 0($sp)
lw $ra, -4($fp)
lw $fp, -8($fp)
addu $sp, $sp, 40
j $ra

.text
.globl	rnad_3
rnad_3:
sw $fp, -8($sp)
move $fp, $sp
sw $ra, -4($fp)
subu $sp, $sp, 96
sw $s0, 16($sp)
sw $s1, 20($sp)
sw $s2, 24($sp)
sw $s3, 28($sp)
sw $s4, 32($sp)
sw $s5, 36($sp)
sw $s6, 40($sp)
sw $s7, 44($sp)
move $s1, $a0
move $s2, $a1
move $s3, $a2
add $s0, $s3, 18
lw $v0, 0($s2)
move $s4, $v0
sub $s5, $s4, $s3
lw $v0, 0($s2)
move $s6, $v0
mul $s7, $s6, $s0
move $a0, $s1
move $a1, $s2
move $a2, $s3
move $a3, $s0
sw $s4, 0($sp)
sw $s5, 4($sp)
sw $s6, 8($sp)
sw $s7, 12($sp)
sw $t0, 48($sp)
sw $t1, 52($sp)
sw $t2, 56($sp)
sw $t3, 60($sp)
sw $t4, 64($sp)
sw $t5, 68($sp)
sw $t6, 72($sp)
sw $t7, 76($sp)
sw $t8, 80($sp)
sw $t9, 84($sp)
jalr rnad_4
lw $t9, 84($sp)
lw $t8, 80($sp)
lw $t7, 76($sp)
lw $t6, 72($sp)
lw $t5, 68($sp)
lw $t4, 64($sp)
lw $t3, 60($sp)
lw $t2, 56($sp)
lw $t1, 52($sp)
lw $t0, 48($sp)
move $v1, $v0
move $s2, $s1
move $s3, $s2
move $s0, $s3
move $v0, $s0
lw $s7, 44($sp)
lw $s6, 40($sp)
lw $s5, 36($sp)
lw $s4, 32($sp)
lw $s3, 28($sp)
lw $s2, 24($sp)
lw $s1, 20($sp)
lw $s0, 16($sp)
lw $ra, -4($fp)
lw $fp, -8($fp)
addu $sp, $sp, 96
j $ra

.text
.globl	rnad_4
rnad_4:
sw $fp, -8($sp)
move $fp, $sp
sw $ra, -4($fp)
subu $sp, $sp, 56
sw $s0, 16($sp)
sw $s1, 20($sp)
sw $s2, 24($sp)
sw $s3, 28($sp)
sw $s4, 32($sp)
sw $s5, 36($sp)
sw $s6, 40($sp)
sw $s7, 44($sp)
move $v1, $a0
move $v1, $a1
move $s4, $a2
move $s5, $a3
lw $v0, 0($fp)
move $s0, $v0
lw $v0, 4($fp)
move $s3, $v0
lw $v0, 8($fp)
move $s1, $v0
lw $v0, 12($fp)
move $s2, $v0
move $a0, $s4
jal _print
move $a0, $s5
jal _print
move $a0, $s0
jal _print
move $a0, $s3
jal _print
move $a0, $s1
jal _print
move $a0, $s2
jal _print
sle $s0, $s4, $s3
move $a0, $s0
jal _print
move $s0, $s4
move $a0, $s0
jal _print
move $s0, $s5
move $v0, $s0
lw $s7, 44($sp)
lw $s6, 40($sp)
lw $s5, 36($sp)
lw $s4, 32($sp)
lw $s3, 28($sp)
lw $s2, 24($sp)
lw $s1, 20($sp)
lw $s0, 16($sp)
lw $ra, -4($fp)
lw $fp, -8($fp)
addu $sp, $sp, 56
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

