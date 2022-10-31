.text
.globl	main
main:
move $fp, $sp
subu $sp, $sp, 44
sw $ra, -4($fp)
li $s0, 4
move $a0, $s0
jal _halloc
move $s0, $v0
move $s0, $s0
li $s1, 24
move $a0, $s1
jal _halloc
move $s1, $v0
move $s1, $s1
la $s2, BS_Start
sw $s2, 0($s0)
li $s2, 8
move $s2, $s2
MAIN_L0:
li $s3, 23
sle $s3, $s2, $s3
beqz $s3, MAIN_L1
add $s3, $s1, $s2
li $s4, 0
sw $s4, 0($s3)
li $s3, 4
add $s3, $s2, $s3
move $s2, $s3
b MAIN_L0
MAIN_L1:
sw $s0, 0($s1)
move $s0, $s1
lw $v0, 0($s0)
move $s1, $v0
lw $v0, 0($s1)
move $s1, $v0
li $s2, 20
li $s3, 0
add $s2, $s2, $s3
move $a0, $s0
move $a1, $s2
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
jalr $s1
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
.globl	B_func
B_func:
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
move $v1, $a1
move $v1, $a2
li $s0, 5
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
.globl	C_func
C_func:
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
move $v1, $a1
move $v1, $a2
li $s0, 10
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
.globl	D_func
D_func:
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
move $v1, $a1
move $v1, $a2
li $s0, 15
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
.globl	E_func
E_func:
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
move $v1, $a1
move $v1, $a2
li $s0, 20
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
.globl	F_func
F_func:
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
move $v1, $a1
move $v1, $a2
li $s0, 25
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
.globl	G_func
G_func:
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
move $v1, $a1
move $v1, $a2
li $s0, 30
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
.globl	H_func
H_func:
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
move $v1, $a1
move $v1, $a2
li $s0, 35
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
.globl	BS_Start
BS_Start:
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
move $s2, $a1
li $s0, 8
move $a0, $s0
jal _halloc
move $s0, $v0
move $s0, $s0
li $s3, 16
move $a0, $s3
jal _halloc
move $s3, $v0
move $s3, $s3
la $s4, C_func
sw $s4, 0($s0)
la $s4, C_func
sw $s4, 4($s0)
li $s4, 8
move $s4, $s4
BS_Start_L2:
li $s5, 15
sle $s5, $s4, $s5
beqz $s5, BS_Start_L3
add $s5, $s3, $s4
li $s6, 0
sw $s6, 0($s5)
li $s5, 4
add $s5, $s4, $s5
move $s4, $s5
b BS_Start_L2
BS_Start_L3:
sw $s0, 0($s3)
sw $s3, 12($s1)
li $s0, 12
move $a0, $s0
jal _halloc
move $s0, $v0
move $s0, $s0
li $s3, 20
move $a0, $s3
jal _halloc
move $s3, $v0
move $s3, $s3
la $s4, D_func
sw $s4, 0($s0)
la $s4, D_func
sw $s4, 4($s0)
la $s4, D_func
sw $s4, 8($s0)
li $s4, 8
move $s4, $s4
BS_Start_L4:
li $s5, 19
sle $s5, $s4, $s5
beqz $s5, BS_Start_L5
add $s5, $s3, $s4
li $s6, 0
sw $s6, 0($s5)
li $s5, 4
add $s5, $s4, $s5
move $s4, $s5
b BS_Start_L4
BS_Start_L5:
sw $s0, 0($s3)
sw $s3, 16($s1)
li $s0, 16
move $a0, $s0
jal _halloc
move $s0, $v0
move $s0, $s0
li $s3, 24
move $a0, $s3
jal _halloc
move $s3, $v0
move $s3, $s3
la $s4, E_func
sw $s4, 0($s0)
la $s4, E_func
sw $s4, 4($s0)
la $s4, E_func
sw $s4, 8($s0)
la $s4, E_func
sw $s4, 12($s0)
li $s4, 8
move $s4, $s4
BS_Start_L6:
li $s5, 23
sle $s5, $s4, $s5
beqz $s5, BS_Start_L7
add $s5, $s3, $s4
li $s6, 0
sw $s6, 0($s5)
li $s5, 4
add $s5, $s4, $s5
move $s4, $s5
b BS_Start_L6
BS_Start_L7:
sw $s0, 0($s3)
sw $s3, 20($s1)
lw $v0, 12($s1)
move $s0, $v0
move $s0, $s0
lw $v0, 0($s0)
move $s3, $v0
lw $v0, 4($s3)
move $s3, $v0
li $s4, 1
li $s5, 1
move $a0, $s0
move $a1, $s4
move $a2, $s5
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
jalr $s3
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
move $a0, $s0
jal _print
lw $v0, 16($s1)
move $s0, $v0
move $s0, $s0
lw $v0, 0($s0)
move $s3, $v0
lw $v0, 8($s3)
move $s3, $v0
li $s4, 1
li $s5, 1
move $a0, $s0
move $a1, $s4
move $a2, $s5
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
jalr $s3
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
move $a0, $s0
jal _print
lw $v0, 20($s1)
move $s0, $v0
move $s0, $s0
lw $v0, 0($s0)
move $s1, $v0
lw $v0, 12($s1)
move $s1, $v0
li $s3, 1
li $s4, 1
move $a0, $s0
move $a1, $s3
move $a2, $s4
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
jalr $s1
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

