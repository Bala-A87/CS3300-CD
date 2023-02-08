.text
.globl	main
main:
move $fp, $sp
subu $sp, $sp, 44
sw $ra, -4($fp)
li $s0, 8
move $a0, $s0
jal _halloc
move $s1, $v0
li $s2, 0
sw $s2, 0($s1)
sw $s2, 4($s1)
li $s0, 4
move $a0, $s0
jal _halloc
move $s0, $v0
la $s2, A_b
sw $s2, 0($s0)
sw $s0, 0($s1)
lw $v0, 0($s1)
move $s2, $v0
lw $v0, 0($s2)
move $s2, $v0
move $a0, $s1
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
jalr $s2
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
.globl	A_b
A_b:
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
move $s1, $a0
li $s0, 4
move $a0, $s0
jal _halloc
move $s2, $v0
li $s3, 0
sw $s3, 0($s2)
li $s0, 4
move $a0, $s0
jal _halloc
move $s4, $v0
la $s5, B_c
sw $s5, 0($s4)
sw $s4, 0($s2)
move $s2, $s2
li $s3, 4
move $a0, $s3
jal _halloc
move $s4, $v0
li $s6, 0
sw $s6, 0($s4)
li $s3, 8
move $a0, $s3
jal _halloc
move $s5, $v0
la $s0, C_c
sw $s0, 4($s5)
la $s0, C_c
sw $s0, 0($s5)
sw $s5, 0($s4)
move $s4, $s4
li $s6, 4
move $a0, $s6
jal _halloc
move $s5, $v0
li $s7, 0
sw $s7, 0($s5)
li $s6, 4
move $a0, $s6
jal _halloc
move $s0, $v0
la $s3, D_exec
sw $s3, 0($s0)
sw $s0, 0($s5)
move $s5, $s5
li $s3, 5
add $s6, $s3, 1
mul $s7, $s6, 4
move $a0, $s7
jal _halloc
move $s0, $v0
sw $s6, 0($s0)
li $s3, 0
li $t0, 4
sub $s7, $s7, 4
A_b_L1:
sle $s6, $t0, $s7
beqz $s6, A_b_L2
add $t1, $s0, $t0
sw $s3, 0($t1)
add $t0, $t0, 4
b A_b_L1
A_b_L2:
nop
sw $s0, 4($s1)
lw $v0, 4($s1)
move $s6, $v0
li $t0, 0
mul $s7, $t0, 4
add $s7, $s7, 4
add $s7, $s7, $s6
li $t1, 1
sw $t1, 0($s7)
lw $v0, 4($s1)
move $t0, $v0
li $s3, 1
mul $t1, $s3, 4
add $t1, $t1, 4
add $t1, $t1, $t0
li $s0, 2
sw $s0, 0($t1)
lw $v0, 4($s1)
move $s3, $v0
li $s6, 2
mul $s0, $s6, 4
add $s0, $s0, 4
add $s0, $s0, $s3
li $s3, 3
sw $s3, 0($s0)
lw $v0, 4($s1)
move $s6, $v0
li $s0, 3
mul $s3, $s0, 4
add $s3, $s3, 4
add $s3, $s3, $s6
li $s6, 4
sw $s6, 0($s3)
lw $v0, 4($s1)
move $s0, $v0
li $s3, 4
mul $s6, $s3, 4
add $s6, $s6, 4
add $s6, $s6, $s0
li $s0, 5
sw $s0, 0($s6)
lw $v0, 4($s1)
move $s0, $v0
li $s6, 0
mul $s7, $s6, 4
add $s7, $s7, 4
add $s0, $s0, $s7
lw $v0, 0($s0)
move $s3, $v0
move $a0, $s3
jal _print
lw $v0, 4($s1)
move $s0, $v0
li $s3, 4
mul $s6, $s3, 4
add $s6, $s6, 4
add $s6, $s6, $s0
lw $v0, 0($s5)
move $s0, $v0
lw $v0, 0($s0)
move $s0, $v0
lw $v0, 4($s1)
move $s3, $v0
move $a0, $s5
move $a1, $s2
move $a2, $s3
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
jalr $s0
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
move $s2, $v0
sw $s2, 0($s6)
lw $v0, 4($s1)
move $s2, $v0
li $s6, 0
mul $s3, $s6, 4
add $s3, $s3, 4
add $s2, $s2, $s3
lw $v0, 0($s2)
move $s0, $v0
move $a0, $s0
jal _print
lw $v0, 4($s1)
move $s2, $v0
li $s0, 4
mul $s6, $s0, 4
add $s6, $s6, 4
add $s6, $s6, $s2
lw $v0, 0($s5)
move $s0, $v0
lw $v0, 0($s0)
move $s0, $v0
lw $v0, 4($s1)
move $s2, $v0
move $a0, $s5
move $a1, $s4
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
jalr $s0
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
sw $s3, 0($s6)
lw $v0, 4($s1)
move $s1, $v0
li $s3, 0
mul $s2, $s3, 4
add $s2, $s2, 4
add $s1, $s1, $s2
lw $v0, 0($s1)
move $s0, $v0
move $a0, $s0
jal _print
li $s1, 1
move $v0, $s1
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
.globl	B_c
B_c:
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
move $v1, $a0
move $s1, $a1
li $s0, 1
mul $s0, $s0, 4
add $s0, $s0, 4
add $s0, $s1, $s0
lw $v0, 0($s0)
move $s2, $v0
move $s2, $s2
li $s3, 2
mul $s4, $s3, 4
add $s4, $s4, 4
add $s4, $s1, $s4
lw $v0, 0($s4)
move $s0, $v0
move $s0, $s0
li $s4, 0
mul $s3, $s4, 4
add $s3, $s3, 4
add $s3, $s3, $s1
add $s0, $s2, $s0
sw $s0, 0($s3)
li $s0, 0
mul $s0, $s0, 4
add $s0, $s0, 4
add $s0, $s1, $s0
lw $v0, 0($s0)
move $s0, $v0
move $v0, $s0
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
.globl	C_c
C_c:
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
move $v1, $a0
move $s1, $a1
li $s0, 2
mul $s0, $s0, 4
add $s0, $s0, 4
add $s0, $s1, $s0
lw $v0, 0($s0)
move $s2, $v0
move $s2, $s2
li $s3, 3
mul $s4, $s3, 4
add $s4, $s4, 4
add $s4, $s1, $s4
lw $v0, 0($s4)
move $s0, $v0
move $s0, $s0
li $s4, 0
mul $s3, $s4, 4
add $s3, $s3, 4
add $s3, $s3, $s1
add $s0, $s2, $s0
sw $s0, 0($s3)
li $s0, 0
mul $s0, $s0, 4
add $s0, $s0, 4
add $s0, $s1, $s0
lw $v0, 0($s0)
move $s0, $v0
move $v0, $s0
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
.globl	D_exec
D_exec:
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
move $v1, $a0
move $s0, $a1
move $s1, $a2
lw $v0, 0($s0)
move $s2, $v0
lw $v0, 0($s2)
move $s2, $v0
move $a0, $s0
move $a1, $s1
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
jalr $s2
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
move $s0, $v0
move $v0, $s0
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

