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
li $s1, 8
move $a0, $s1
jal _halloc
move $s1, $v0
move $s1, $s1
la $s2, A_b
sw $s2, 0($s0)
sw $s0, 0($s1)
move $s0, $s1
lw $v0, 0($s0)
move $s1, $v0
lw $v0, 0($s1)
move $s1, $v0
move $a0, $s0
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
li $s0, 0
move $v1, $s0
li $s0, 0
move $v1, $s0
li $s0, 0
move $v1, $s0
li $s0, 4
move $a0, $s0
jal _halloc
move $s0, $v0
move $s0, $s0
li $s2, 4
move $a0, $s2
jal _halloc
move $s2, $v0
move $s2, $s2
la $s3, B_c
sw $s3, 0($s0)
sw $s0, 0($s2)
move $s0, $s2
li $s2, 8
move $a0, $s2
jal _halloc
move $s2, $v0
move $s2, $s2
li $s3, 4
move $a0, $s3
jal _halloc
move $s3, $v0
move $s3, $s3
la $s4, C_c
sw $s4, 0($s2)
la $s4, C_c
sw $s4, 4($s2)
sw $s2, 0($s3)
move $s2, $s3
li $s3, 4
move $a0, $s3
jal _halloc
move $s3, $v0
move $s3, $s3
li $s4, 4
move $a0, $s4
jal _halloc
move $s4, $v0
move $s4, $s4
la $s5, D_exec
sw $s5, 0($s3)
sw $s3, 0($s4)
move $s3, $s4
li $s4, 5
li $s5, 1
add $s5, $s4, $s5
li $s6, 4
mul $s5, $s5, $s6
move $a0, $s5
jal _halloc
move $s5, $v0
move $s5, $s5
li $s6, 4
move $s6, $s6
A_b_L8:
li $s7, 1
add $s7, $s4, $s7
li $t0, 4
mul $s7, $s7, $t0
li $t0, 1
sub $s7, $s7, $t0
sle $s7, $s6, $s7
beqz $s7, A_b_L9
add $s7, $s5, $s6
li $t0, 0
sw $t0, 0($s7)
li $s7, 4
add $s7, $s6, $s7
move $s6, $s7
b A_b_L8
A_b_L9:
li $s6, 4
mul $s4, $s4, $s6
sw $s4, 0($s5)
sw $s5, 4($s1)
li $s4, 0
li $s5, 1
lw $v0, 4($s1)
move $s6, $v0
li $s7, 4
mul $s4, $s4, $s7
lw $v0, 0($s6)
move $s7, $v0
li $t0, 1
li $t1, 1
sub $s7, $s7, $t1
sle $s7, $s4, $s7
sub $s7, $t0, $s7
beqz $s7, A_b_L10
li $v0, 4
la $a0, str_er
syscall
li $v0, 10
syscall
A_b_L10:
nop
li $s7, 4
add $s4, $s4, $s7
add $s4, $s6, $s4
sw $s5, 0($s4)
li $s4, 1
li $s5, 2
lw $v0, 4($s1)
move $s6, $v0
li $s7, 4
mul $s4, $s4, $s7
lw $v0, 0($s6)
move $s7, $v0
li $t0, 1
li $t1, 1
sub $s7, $s7, $t1
sle $s7, $s4, $s7
sub $s7, $t0, $s7
beqz $s7, A_b_L11
li $v0, 4
la $a0, str_er
syscall
li $v0, 10
syscall
A_b_L11:
nop
li $s7, 4
add $s4, $s4, $s7
add $s4, $s6, $s4
sw $s5, 0($s4)
li $s4, 2
li $s5, 3
lw $v0, 4($s1)
move $s6, $v0
li $s7, 4
mul $s4, $s4, $s7
lw $v0, 0($s6)
move $s7, $v0
li $t0, 1
li $t1, 1
sub $s7, $s7, $t1
sle $s7, $s4, $s7
sub $s7, $t0, $s7
beqz $s7, A_b_L12
li $v0, 4
la $a0, str_er
syscall
li $v0, 10
syscall
A_b_L12:
nop
li $s7, 4
add $s4, $s4, $s7
add $s4, $s6, $s4
sw $s5, 0($s4)
li $s4, 3
li $s5, 4
lw $v0, 4($s1)
move $s6, $v0
li $s7, 4
mul $s4, $s4, $s7
lw $v0, 0($s6)
move $s7, $v0
li $t0, 1
li $t1, 1
sub $s7, $s7, $t1
sle $s7, $s4, $s7
sub $s7, $t0, $s7
beqz $s7, A_b_L13
li $v0, 4
la $a0, str_er
syscall
li $v0, 10
syscall
A_b_L13:
nop
li $s7, 4
add $s4, $s4, $s7
add $s4, $s6, $s4
sw $s5, 0($s4)
li $s4, 4
li $s5, 5
lw $v0, 4($s1)
move $s6, $v0
li $s7, 4
mul $s4, $s4, $s7
lw $v0, 0($s6)
move $s7, $v0
li $t0, 1
li $t1, 1
sub $s7, $s7, $t1
sle $s7, $s4, $s7
sub $s7, $t0, $s7
beqz $s7, A_b_L14
li $v0, 4
la $a0, str_er
syscall
li $v0, 10
syscall
A_b_L14:
nop
li $s7, 4
add $s4, $s4, $s7
add $s4, $s6, $s4
sw $s5, 0($s4)
lw $v0, 4($s1)
move $s4, $v0
li $s5, 0
li $s6, 4
mul $s6, $s5, $s6
lw $v0, 0($s4)
move $s7, $v0
li $t0, 1
li $t1, 1
sub $s7, $s7, $t1
sle $s5, $s5, $s7
sub $s5, $t0, $s5
beqz $s5, A_b_L15
li $v0, 4
la $a0, str_er
syscall
li $v0, 10
syscall
A_b_L15:
nop
li $s5, 4
add $s5, $s6, $s5
add $s4, $s4, $s5
lw $v0, 0($s4)
move $s4, $v0
move $a0, $s4
jal _print
li $s4, 4
move $s5, $s3
lw $v0, 0($s5)
move $s6, $v0
lw $v0, 0($s6)
move $s6, $v0
lw $v0, 4($s1)
move $s7, $v0
move $a0, $s5
move $a1, $s0
move $a2, $s7
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
jalr $s6
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
lw $v0, 4($s1)
move $s5, $v0
li $s6, 4
mul $s4, $s4, $s6
lw $v0, 0($s5)
move $s6, $v0
li $s7, 1
li $t0, 1
sub $s6, $s6, $t0
sle $s6, $s4, $s6
sub $s6, $s7, $s6
beqz $s6, A_b_L16
li $v0, 4
la $a0, str_er
syscall
li $v0, 10
syscall
A_b_L16:
nop
li $s6, 4
add $s4, $s4, $s6
add $s4, $s5, $s4
sw $s0, 0($s4)
lw $v0, 4($s1)
move $s0, $v0
li $s4, 0
li $s5, 4
mul $s5, $s4, $s5
lw $v0, 0($s0)
move $s6, $v0
li $s7, 1
li $t0, 1
sub $s6, $s6, $t0
sle $s4, $s4, $s6
sub $s4, $s7, $s4
beqz $s4, A_b_L17
li $v0, 4
la $a0, str_er
syscall
li $v0, 10
syscall
A_b_L17:
nop
li $s4, 4
add $s4, $s5, $s4
add $s0, $s0, $s4
lw $v0, 0($s0)
move $s0, $v0
move $a0, $s0
jal _print
li $s0, 4
move $s3, $s3
lw $v0, 0($s3)
move $s4, $v0
lw $v0, 0($s4)
move $s4, $v0
lw $v0, 4($s1)
move $s5, $v0
move $a0, $s3
move $a1, $s2
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
jalr $s4
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
lw $v0, 4($s1)
move $s3, $v0
li $s4, 4
mul $s0, $s0, $s4
lw $v0, 0($s3)
move $s4, $v0
li $s5, 1
li $s6, 1
sub $s4, $s4, $s6
sle $s4, $s0, $s4
sub $s4, $s5, $s4
beqz $s4, A_b_L18
li $v0, 4
la $a0, str_er
syscall
li $v0, 10
syscall
A_b_L18:
nop
li $s4, 4
add $s0, $s0, $s4
add $s0, $s3, $s0
sw $s2, 0($s0)
lw $v0, 4($s1)
move $s0, $v0
li $s1, 0
li $s2, 4
mul $s2, $s1, $s2
lw $v0, 0($s0)
move $s3, $v0
li $s4, 1
li $s5, 1
sub $s3, $s3, $s5
sle $s1, $s1, $s3
sub $s1, $s4, $s1
beqz $s1, A_b_L19
li $v0, 4
la $a0, str_er
syscall
li $v0, 10
syscall
A_b_L19:
nop
li $s1, 4
add $s1, $s2, $s1
add $s0, $s0, $s1
lw $v0, 0($s0)
move $s0, $v0
move $a0, $s0
jal _print
li $s0, 1
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
li $s0, 0
move $v1, $s0
li $s0, 0
move $v1, $s0
li $s0, 1
li $s2, 4
mul $s2, $s0, $s2
lw $v0, 0($s1)
move $s3, $v0
li $s4, 1
li $s5, 1
sub $s3, $s3, $s5
sle $s0, $s0, $s3
sub $s0, $s4, $s0
beqz $s0, B_c_L20
li $v0, 4
la $a0, str_er
syscall
li $v0, 10
syscall
B_c_L20:
nop
li $s0, 4
add $s0, $s2, $s0
add $s0, $s1, $s0
lw $v0, 0($s0)
move $s0, $v0
move $s0, $s0
li $s2, 2
li $s3, 4
mul $s3, $s2, $s3
lw $v0, 0($s1)
move $s4, $v0
li $s5, 1
li $s6, 1
sub $s4, $s4, $s6
sle $s2, $s2, $s4
sub $s2, $s5, $s2
beqz $s2, B_c_L21
li $v0, 4
la $a0, str_er
syscall
li $v0, 10
syscall
B_c_L21:
nop
li $s2, 4
add $s2, $s3, $s2
add $s2, $s1, $s2
lw $v0, 0($s2)
move $s2, $v0
move $s2, $s2
li $s3, 0
add $s0, $s0, $s2
li $s2, 4
mul $s2, $s3, $s2
lw $v0, 0($s1)
move $s3, $v0
li $s4, 1
li $s5, 1
sub $s3, $s3, $s5
sle $s3, $s2, $s3
sub $s3, $s4, $s3
beqz $s3, B_c_L22
li $v0, 4
la $a0, str_er
syscall
li $v0, 10
syscall
B_c_L22:
nop
li $s3, 4
add $s2, $s2, $s3
add $s2, $s1, $s2
sw $s0, 0($s2)
li $s0, 0
li $s2, 4
mul $s2, $s0, $s2
lw $v0, 0($s1)
move $s3, $v0
li $s4, 1
li $s5, 1
sub $s3, $s3, $s5
sle $s0, $s0, $s3
sub $s0, $s4, $s0
beqz $s0, B_c_L23
li $v0, 4
la $a0, str_er
syscall
li $v0, 10
syscall
B_c_L23:
nop
li $s0, 4
add $s0, $s2, $s0
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
li $s0, 0
move $v1, $s0
li $s0, 0
move $v1, $s0
li $s0, 2
li $s2, 4
mul $s2, $s0, $s2
lw $v0, 0($s1)
move $s3, $v0
li $s4, 1
li $s5, 1
sub $s3, $s3, $s5
sle $s0, $s0, $s3
sub $s0, $s4, $s0
beqz $s0, C_c_L24
li $v0, 4
la $a0, str_er
syscall
li $v0, 10
syscall
C_c_L24:
nop
li $s0, 4
add $s0, $s2, $s0
add $s0, $s1, $s0
lw $v0, 0($s0)
move $s0, $v0
move $s0, $s0
li $s2, 3
li $s3, 4
mul $s3, $s2, $s3
lw $v0, 0($s1)
move $s4, $v0
li $s5, 1
li $s6, 1
sub $s4, $s4, $s6
sle $s2, $s2, $s4
sub $s2, $s5, $s2
beqz $s2, C_c_L25
li $v0, 4
la $a0, str_er
syscall
li $v0, 10
syscall
C_c_L25:
nop
li $s2, 4
add $s2, $s3, $s2
add $s2, $s1, $s2
lw $v0, 0($s2)
move $s2, $v0
move $s2, $s2
li $s3, 0
add $s0, $s0, $s2
li $s2, 4
mul $s2, $s3, $s2
lw $v0, 0($s1)
move $s3, $v0
li $s4, 1
li $s5, 1
sub $s3, $s3, $s5
sle $s3, $s2, $s3
sub $s3, $s4, $s3
beqz $s3, C_c_L26
li $v0, 4
la $a0, str_er
syscall
li $v0, 10
syscall
C_c_L26:
nop
li $s3, 4
add $s2, $s2, $s3
add $s2, $s1, $s2
sw $s0, 0($s2)
li $s0, 0
li $s2, 4
mul $s2, $s0, $s2
lw $v0, 0($s1)
move $s3, $v0
li $s4, 1
li $s5, 1
sub $s3, $s3, $s5
sle $s0, $s0, $s3
sub $s0, $s4, $s0
beqz $s0, C_c_L27
li $v0, 4
la $a0, str_er
syscall
li $v0, 10
syscall
C_c_L27:
nop
li $s0, 4
add $s0, $s2, $s0
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
move $s2, $s0
lw $v0, 0($s2)
move $s0, $v0
lw $v0, 0($s0)
move $s0, $v0
move $a0, $s2
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

