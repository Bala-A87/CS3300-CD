.text
.globl	main
main:
move $fp, $sp
subu $sp, $sp, 44
sw $ra, -4($fp)
li $s0, 12
move $a0, $s0
jal _halloc
move $s0, $v0
move $s0, $s0
li $s1, 16
move $a0, $s1
jal _halloc
move $s1, $v0
move $s1, $s1
la $s2, A_set
sw $s2, 8($s0)
la $s2, A_one
sw $s2, 4($s0)
la $s2, A_run
sw $s2, 0($s0)
li $s2, 8
move $s2, $s2
MAIN_L0:
li $s3, 15
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
lw $v0, 4($s1)
move $s1, $v0
li $s2, 1
li $s3, 0
move $a0, $s0
move $a1, $s2
move $a2, $s3
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
.globl	A_run
A_run:
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
move $s3, $a0
move $s1, $a1
move $s2, $a2
li $s0, 0
move $v1, $s0
li $s0, 0
move $v1, $s0
sle $s0, $s1, $s2
beqz $s0, A_run_L2
move $s0, $s1
b A_run_L3
A_run_L2:
move $s0, $s2
A_run_L3:
nop
li $s1, 0
move $s1, $s1
li $s2, 1
move $s2, $s2
li $s4, 0
move $s4, $s4
li $s5, 1
beqz $s5, A_run_L6
li $s5, 1
beqz $s5, A_run_L6
li $s5, 1
move $s4, $s5
A_run_L6:
nop
li $s5, 1
sub $s4, $s5, $s4
beqz $s4, A_run_L5
li $s4, 0
move $s4, $s4
li $s5, 1
beqz $s5, A_run_L7
li $s5, 0
beqz $s5, A_run_L7
li $s5, 1
move $s4, $s5
A_run_L7:
nop
li $s5, 1
sub $s4, $s5, $s4
beqz $s4, A_run_L5
li $s4, 0
move $s2, $s4
A_run_L5:
nop
beqz $s2, A_run_L4
li $s2, 0
beqz $s2, A_run_L4
li $s2, 1
move $s1, $s2
A_run_L4:
nop
sw $s1, 8($s3)
li $s1, 0
move $s1, $s1
li $s2, 1
move $s2, $s2
li $s4, 0
move $s4, $s4
li $s5, 1
beqz $s5, A_run_L11
li $s5, 1
beqz $s5, A_run_L11
li $s5, 1
move $s4, $s5
A_run_L11:
nop
li $s5, 1
sub $s4, $s5, $s4
beqz $s4, A_run_L10
li $s4, 0
move $s4, $s4
li $s5, 1
beqz $s5, A_run_L12
li $s5, 0
beqz $s5, A_run_L12
li $s5, 1
move $s4, $s5
A_run_L12:
nop
li $s5, 1
sub $s4, $s5, $s4
beqz $s4, A_run_L10
li $s4, 0
move $s2, $s4
A_run_L10:
nop
beqz $s2, A_run_L9
li $s2, 0
beqz $s2, A_run_L9
li $s2, 1
move $s1, $s2
A_run_L9:
nop
beqz $s1, A_run_L8
lw $v0, 8($s3)
move $s1, $v0
sw $s1, 12($s3)
A_run_L8:
nop
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
.globl	A_one
A_one:
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
move $s2, $a0
move $s0, $a1
move $s1, $a2
sw $s0, 8($s2)
sw $s1, 12($s2)
li $s0, 0
move $s0, $s0
lw $v0, 8($s2)
move $s1, $v0
beqz $s1, A_one_L14
lw $v0, 12($s2)
move $s1, $v0
beqz $s1, A_one_L14
li $s1, 1
move $s0, $s1
A_one_L14:
nop
beqz $s0, A_one_L13
li $s0, 999
move $a0, $s0
jal _print
A_one_L13:
nop
li $s0, 1
li $s1, 1
move $s1, $s1
lw $v0, 8($s2)
move $s3, $v0
li $s4, 1
sub $s3, $s4, $s3
beqz $s3, A_one_L17
lw $v0, 12($s2)
move $s3, $v0
li $s4, 1
sub $s3, $s4, $s3
beqz $s3, A_one_L17
li $s3, 0
move $s1, $s3
A_one_L17:
nop
sub $s0, $s0, $s1
beqz $s0, A_one_L15
li $s0, 888
move $a0, $s0
jal _print
b A_one_L16
A_one_L15:
li $s0, 333
move $a0, $s0
jal _print
A_one_L16:
nop
li $s0, 1
move $s0, $s0
li $s1, 1
li $s3, 0
move $s3, $s3
lw $v0, 8($s2)
move $s4, $v0
beqz $s4, A_one_L20
lw $v0, 12($s2)
move $s4, $v0
beqz $s4, A_one_L20
li $s4, 1
move $s3, $s4
A_one_L20:
nop
sub $s1, $s1, $s3
li $s3, 1
sub $s1, $s3, $s1
beqz $s1, A_one_L19
li $s1, 1
move $s1, $s1
lw $v0, 12($s2)
move $s3, $v0
li $s4, 1
sub $s3, $s4, $s3
beqz $s3, A_one_L21
lw $v0, 8($s2)
move $s3, $v0
li $s4, 1
sub $s3, $s4, $s3
beqz $s3, A_one_L21
li $s3, 0
move $s1, $s3
A_one_L21:
nop
li $s3, 1
sub $s1, $s3, $s1
beqz $s1, A_one_L19
li $s1, 0
move $s0, $s1
A_one_L19:
nop
beqz $s0, A_one_L18
li $s0, 1
sw $s0, 4($s2)
A_one_L18:
nop
li $s0, 0
move $s0, $s0
lw $v0, 8($s2)
move $s1, $v0
beqz $s1, A_one_L23
li $s1, 0
move $s1, $s1
lw $v0, 8($s2)
move $s3, $v0
beqz $s3, A_one_L24
lw $v0, 12($s2)
move $s3, $v0
beqz $s3, A_one_L24
li $s3, 1
move $s1, $s3
A_one_L24:
nop
beqz $s1, A_one_L23
li $s1, 1
move $s0, $s1
A_one_L23:
nop
beqz $s0, A_one_L22
li $s0, 1
sw $s0, 4($s2)
A_one_L22:
nop
lw $v0, 4($s2)
move $s0, $v0
li $s1, 11
add $s0, $s0, $s1
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
.globl	A_set
A_set:
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
move $s1, $a1
sw $s1, 4($s0)
li $s0, 0
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

