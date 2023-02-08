.text
.globl	main
main:
move $fp, $sp
subu $sp, $sp, 44
sw $ra, -4($fp)
li $s0, 16
move $a0, $s0
jal _halloc
move $s0, $v0
move $s0, $s0
li $s1, 12
move $a0, $s1
jal _halloc
move $s1, $v0
move $s1, $s1
la $s2, BBS_Init
sw $s2, 12($s0)
la $s2, BBS_Print
sw $s2, 8($s0)
la $s2, BBS_Sort
sw $s2, 4($s0)
la $s2, BBS_Start
sw $s2, 0($s0)
sw $s0, 0($s1)
move $s0, $s1
lw $v0, 0($s0)
move $s1, $v0
lw $v0, 0($s1)
move $s1, $v0
li $s2, 10
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
.globl	BBS_Start
BBS_Start:
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
move $s2, $a0
move $s0, $a1
move $s1, $s2
lw $v0, 0($s1)
move $s3, $v0
lw $v0, 12($s3)
move $s3, $v0
move $a0, $s1
move $a1, $s0
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
move $v1, $s0
move $s0, $s2
lw $v0, 0($s0)
move $s1, $v0
lw $v0, 8($s1)
move $s1, $v0
move $a0, $s0
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
move $v1, $s0
li $s0, 99999
move $a0, $s0
jal _print
move $s0, $s2
lw $v0, 0($s0)
move $s1, $v0
lw $v0, 4($s1)
move $s1, $v0
move $a0, $s0
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
move $v1, $s0
move $s0, $s2
lw $v0, 0($s0)
move $s1, $v0
lw $v0, 8($s1)
move $s1, $v0
move $a0, $s0
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
move $v1, $s0
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
addu $sp, $sp, 80
j $ra

.text
.globl	BBS_Sort
BBS_Sort:
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
move $s1, $a0
lw $v0, 8($s1)
move $s0, $v0
li $s2, 1
sub $s0, $s0, $s2
move $s0, $s0
li $s2, 0
li $s3, 1
sub $s2, $s2, $s3
move $s2, $s2
BBS_Sort_L2:
li $s3, 1
sub $s3, $s0, $s3
sle $s3, $s2, $s3
beqz $s3, BBS_Sort_L3
li $s3, 1
move $s3, $s3
BBS_Sort_L4:
sle $s4, $s3, $s0
beqz $s4, BBS_Sort_L5
li $s4, 1
sub $s4, $s3, $s4
move $s4, $s4
lw $v0, 4($s1)
move $v1, $v0
li $s5, 4
mul $s4, $s4, $s5
move $s4, $s4
lw $v0, 4($s1)
move $s5, $v0
lw $v0, 0($s5)
move $s6, $v0
li $s7, 1
li $t0, 1
sub $s6, $s6, $t0
sle $s6, $s4, $s6
sub $s6, $s7, $s6
beqz $s6, BBS_Sort_L6
li $v0, 4
la $a0, str_er
syscall
li $v0, 10
syscall
BBS_Sort_L6:
nop
li $s6, 4
add $s4, $s4, $s6
add $s4, $s5, $s4
lw $v0, 0($s4)
move $s4, $v0
move $s4, $s4
lw $v0, 4($s1)
move $v1, $v0
li $s5, 4
mul $s5, $s3, $s5
move $s5, $s5
lw $v0, 4($s1)
move $s6, $v0
lw $v0, 0($s6)
move $s7, $v0
li $t0, 1
li $t1, 1
sub $s7, $s7, $t1
sle $s7, $s5, $s7
sub $s7, $t0, $s7
beqz $s7, BBS_Sort_L7
li $v0, 4
la $a0, str_er
syscall
li $v0, 10
syscall
BBS_Sort_L7:
nop
li $s7, 4
add $s5, $s5, $s7
add $s5, $s6, $s5
lw $v0, 0($s5)
move $s5, $v0
move $s5, $s5
li $s6, 1
sub $s4, $s4, $s6
sle $s4, $s5, $s4
beqz $s4, BBS_Sort_L8
li $s4, 1
sub $s4, $s3, $s4
move $s4, $s4
lw $v0, 4($s1)
move $v1, $v0
li $s5, 4
mul $s5, $s4, $s5
move $s5, $s5
lw $v0, 4($s1)
move $s6, $v0
lw $v0, 0($s6)
move $s7, $v0
li $t0, 1
li $t1, 1
sub $s7, $s7, $t1
sle $s7, $s5, $s7
sub $s7, $t0, $s7
beqz $s7, BBS_Sort_L10
li $v0, 4
la $a0, str_er
syscall
li $v0, 10
syscall
BBS_Sort_L10:
nop
li $s7, 4
add $s5, $s5, $s7
add $s5, $s6, $s5
lw $v0, 0($s5)
move $s5, $v0
move $s5, $s5
li $s6, 1
li $s7, 4
mul $s6, $s6, $s7
move $s6, $s6
add $s7, $s1, $s6
lw $v0, 0($s7)
move $v1, $v0
li $s7, 4
mul $s4, $s4, $s7
move $s4, $s4
li $s7, 1
li $t0, 4
mul $s7, $s7, $t0
move $s6, $s7
add $s6, $s1, $s6
lw $v0, 0($s6)
move $s6, $v0
lw $v0, 0($s6)
move $s7, $v0
li $t0, 1
li $t1, 1
sub $s7, $s7, $t1
sle $s7, $s4, $s7
sub $s7, $t0, $s7
beqz $s7, BBS_Sort_L11
li $v0, 4
la $a0, str_er
syscall
li $v0, 10
syscall
BBS_Sort_L11:
nop
li $s7, 4
add $s4, $s4, $s7
add $s4, $s6, $s4
lw $v0, 4($s1)
move $v1, $v0
li $s6, 4
mul $s6, $s3, $s6
move $s6, $s6
lw $v0, 4($s1)
move $s7, $v0
lw $v0, 0($s7)
move $t0, $v0
li $t1, 1
li $t2, 1
sub $t0, $t0, $t2
sle $t0, $s6, $t0
sub $t0, $t1, $t0
beqz $t0, BBS_Sort_L12
li $v0, 4
la $a0, str_er
syscall
li $v0, 10
syscall
BBS_Sort_L12:
nop
li $t0, 4
add $s6, $s6, $t0
add $s6, $s7, $s6
lw $v0, 0($s6)
move $s6, $v0
sw $s6, 0($s4)
li $s4, 1
li $s6, 4
mul $s4, $s4, $s6
move $s4, $s4
add $s6, $s1, $s4
lw $v0, 0($s6)
move $v1, $v0
li $s6, 4
mul $s6, $s3, $s6
move $s6, $s6
li $s7, 1
li $t0, 4
mul $s7, $s7, $t0
move $s4, $s7
add $s4, $s1, $s4
lw $v0, 0($s4)
move $s4, $v0
lw $v0, 0($s4)
move $s7, $v0
li $t0, 1
li $t1, 1
sub $s7, $s7, $t1
sle $s7, $s6, $s7
sub $s7, $t0, $s7
beqz $s7, BBS_Sort_L13
li $v0, 4
la $a0, str_er
syscall
li $v0, 10
syscall
BBS_Sort_L13:
nop
li $s7, 4
add $s6, $s6, $s7
add $s4, $s4, $s6
sw $s5, 0($s4)
b BBS_Sort_L9
BBS_Sort_L8:
li $s4, 0
move $v1, $s4
BBS_Sort_L9:
nop
li $s4, 1
add $s4, $s3, $s4
move $s3, $s4
b BBS_Sort_L4
BBS_Sort_L5:
nop
li $s3, 1
sub $s3, $s0, $s3
move $s0, $s3
b BBS_Sort_L2
BBS_Sort_L3:
nop
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
.globl	BBS_Print
BBS_Print:
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
move $s1, $a0
li $s0, 0
move $s0, $s0
BBS_Print_L14:
lw $v0, 8($s1)
move $s2, $v0
li $s3, 1
sub $s2, $s2, $s3
move $s2, $s2
sle $s2, $s0, $s2
beqz $s2, BBS_Print_L15
lw $v0, 4($s1)
move $v1, $v0
li $s2, 4
mul $s2, $s0, $s2
move $s2, $s2
lw $v0, 4($s1)
move $s3, $v0
lw $v0, 0($s3)
move $s4, $v0
li $s5, 1
li $s6, 1
sub $s4, $s4, $s6
sle $s4, $s2, $s4
sub $s4, $s5, $s4
beqz $s4, BBS_Print_L16
li $v0, 4
la $a0, str_er
syscall
li $v0, 10
syscall
BBS_Print_L16:
nop
li $s4, 4
add $s2, $s2, $s4
add $s2, $s3, $s2
lw $v0, 0($s2)
move $s2, $v0
move $a0, $s2
jal _print
li $s2, 1
add $s2, $s0, $s2
move $s0, $s2
b BBS_Print_L14
BBS_Print_L15:
nop
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
.globl	BBS_Init
BBS_Init:
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
move $s1, $a0
move $s0, $a1
sw $s0, 8($s1)
li $s2, 1
add $s2, $s0, $s2
li $s3, 4
mul $s2, $s2, $s3
move $a0, $s2
jal _halloc
move $s2, $v0
move $s2, $s2
li $s3, 4
move $s3, $s3
BBS_Init_L17:
li $s4, 1
add $s4, $s0, $s4
li $s5, 4
mul $s4, $s4, $s5
li $s5, 1
sub $s4, $s4, $s5
sle $s4, $s3, $s4
beqz $s4, BBS_Init_L18
add $s4, $s2, $s3
li $s5, 0
sw $s5, 0($s4)
li $s4, 4
add $s4, $s3, $s4
move $s3, $s4
b BBS_Init_L17
BBS_Init_L18:
li $s3, 4
mul $s0, $s0, $s3
sw $s0, 0($s2)
sw $s2, 4($s1)
li $s0, 1
li $s2, 4
mul $s0, $s0, $s2
move $s0, $s0
add $s2, $s1, $s0
lw $v0, 0($s2)
move $v1, $v0
li $s2, 0
li $s3, 4
mul $s2, $s2, $s3
move $s2, $s2
li $s3, 1
li $s4, 4
mul $s3, $s3, $s4
move $s0, $s3
add $s0, $s1, $s0
lw $v0, 0($s0)
move $s0, $v0
lw $v0, 0($s0)
move $s3, $v0
li $s4, 1
li $s5, 1
sub $s3, $s3, $s5
sle $s3, $s2, $s3
sub $s3, $s4, $s3
beqz $s3, BBS_Init_L19
li $v0, 4
la $a0, str_er
syscall
li $v0, 10
syscall
BBS_Init_L19:
nop
li $s3, 4
add $s2, $s2, $s3
add $s0, $s0, $s2
li $s2, 20
sw $s2, 0($s0)
li $s0, 1
li $s2, 4
mul $s0, $s0, $s2
move $s0, $s0
add $s2, $s1, $s0
lw $v0, 0($s2)
move $v1, $v0
li $s2, 1
li $s3, 4
mul $s2, $s2, $s3
move $s2, $s2
li $s3, 1
li $s4, 4
mul $s3, $s3, $s4
move $s0, $s3
add $s0, $s1, $s0
lw $v0, 0($s0)
move $s0, $v0
lw $v0, 0($s0)
move $s3, $v0
li $s4, 1
li $s5, 1
sub $s3, $s3, $s5
sle $s3, $s2, $s3
sub $s3, $s4, $s3
beqz $s3, BBS_Init_L20
li $v0, 4
la $a0, str_er
syscall
li $v0, 10
syscall
BBS_Init_L20:
nop
li $s3, 4
add $s2, $s2, $s3
add $s0, $s0, $s2
li $s2, 7
sw $s2, 0($s0)
li $s0, 1
li $s2, 4
mul $s0, $s0, $s2
move $s0, $s0
add $s2, $s1, $s0
lw $v0, 0($s2)
move $v1, $v0
li $s2, 2
li $s3, 4
mul $s2, $s2, $s3
move $s2, $s2
li $s3, 1
li $s4, 4
mul $s3, $s3, $s4
move $s0, $s3
add $s0, $s1, $s0
lw $v0, 0($s0)
move $s0, $v0
lw $v0, 0($s0)
move $s3, $v0
li $s4, 1
li $s5, 1
sub $s3, $s3, $s5
sle $s3, $s2, $s3
sub $s3, $s4, $s3
beqz $s3, BBS_Init_L21
li $v0, 4
la $a0, str_er
syscall
li $v0, 10
syscall
BBS_Init_L21:
nop
li $s3, 4
add $s2, $s2, $s3
add $s0, $s0, $s2
li $s2, 12
sw $s2, 0($s0)
li $s0, 1
li $s2, 4
mul $s0, $s0, $s2
move $s0, $s0
add $s2, $s1, $s0
lw $v0, 0($s2)
move $v1, $v0
li $s2, 3
li $s3, 4
mul $s2, $s2, $s3
move $s2, $s2
li $s3, 1
li $s4, 4
mul $s3, $s3, $s4
move $s0, $s3
add $s0, $s1, $s0
lw $v0, 0($s0)
move $s0, $v0
lw $v0, 0($s0)
move $s3, $v0
li $s4, 1
li $s5, 1
sub $s3, $s3, $s5
sle $s3, $s2, $s3
sub $s3, $s4, $s3
beqz $s3, BBS_Init_L22
li $v0, 4
la $a0, str_er
syscall
li $v0, 10
syscall
BBS_Init_L22:
nop
li $s3, 4
add $s2, $s2, $s3
add $s0, $s0, $s2
li $s2, 18
sw $s2, 0($s0)
li $s0, 1
li $s2, 4
mul $s0, $s0, $s2
move $s0, $s0
add $s2, $s1, $s0
lw $v0, 0($s2)
move $v1, $v0
li $s2, 4
li $s3, 4
mul $s2, $s2, $s3
move $s2, $s2
li $s3, 1
li $s4, 4
mul $s3, $s3, $s4
move $s0, $s3
add $s0, $s1, $s0
lw $v0, 0($s0)
move $s0, $v0
lw $v0, 0($s0)
move $s3, $v0
li $s4, 1
li $s5, 1
sub $s3, $s3, $s5
sle $s3, $s2, $s3
sub $s3, $s4, $s3
beqz $s3, BBS_Init_L23
li $v0, 4
la $a0, str_er
syscall
li $v0, 10
syscall
BBS_Init_L23:
nop
li $s3, 4
add $s2, $s2, $s3
add $s0, $s0, $s2
li $s2, 2
sw $s2, 0($s0)
li $s0, 1
li $s2, 4
mul $s0, $s0, $s2
move $s0, $s0
add $s2, $s1, $s0
lw $v0, 0($s2)
move $v1, $v0
li $s2, 5
li $s3, 4
mul $s2, $s2, $s3
move $s2, $s2
li $s3, 1
li $s4, 4
mul $s3, $s3, $s4
move $s0, $s3
add $s0, $s1, $s0
lw $v0, 0($s0)
move $s0, $v0
lw $v0, 0($s0)
move $s3, $v0
li $s4, 1
li $s5, 1
sub $s3, $s3, $s5
sle $s3, $s2, $s3
sub $s3, $s4, $s3
beqz $s3, BBS_Init_L24
li $v0, 4
la $a0, str_er
syscall
li $v0, 10
syscall
BBS_Init_L24:
nop
li $s3, 4
add $s2, $s2, $s3
add $s0, $s0, $s2
li $s2, 11
sw $s2, 0($s0)
li $s0, 1
li $s2, 4
mul $s0, $s0, $s2
move $s0, $s0
add $s2, $s1, $s0
lw $v0, 0($s2)
move $v1, $v0
li $s2, 6
li $s3, 4
mul $s2, $s2, $s3
move $s2, $s2
li $s3, 1
li $s4, 4
mul $s3, $s3, $s4
move $s0, $s3
add $s0, $s1, $s0
lw $v0, 0($s0)
move $s0, $v0
lw $v0, 0($s0)
move $s3, $v0
li $s4, 1
li $s5, 1
sub $s3, $s3, $s5
sle $s3, $s2, $s3
sub $s3, $s4, $s3
beqz $s3, BBS_Init_L25
li $v0, 4
la $a0, str_er
syscall
li $v0, 10
syscall
BBS_Init_L25:
nop
li $s3, 4
add $s2, $s2, $s3
add $s0, $s0, $s2
li $s2, 6
sw $s2, 0($s0)
li $s0, 1
li $s2, 4
mul $s0, $s0, $s2
move $s0, $s0
add $s2, $s1, $s0
lw $v0, 0($s2)
move $v1, $v0
li $s2, 7
li $s3, 4
mul $s2, $s2, $s3
move $s2, $s2
li $s3, 1
li $s4, 4
mul $s3, $s3, $s4
move $s0, $s3
add $s0, $s1, $s0
lw $v0, 0($s0)
move $s0, $v0
lw $v0, 0($s0)
move $s3, $v0
li $s4, 1
li $s5, 1
sub $s3, $s3, $s5
sle $s3, $s2, $s3
sub $s3, $s4, $s3
beqz $s3, BBS_Init_L26
li $v0, 4
la $a0, str_er
syscall
li $v0, 10
syscall
BBS_Init_L26:
nop
li $s3, 4
add $s2, $s2, $s3
add $s0, $s0, $s2
li $s2, 9
sw $s2, 0($s0)
li $s0, 1
li $s2, 4
mul $s0, $s0, $s2
move $s0, $s0
add $s2, $s1, $s0
lw $v0, 0($s2)
move $v1, $v0
li $s2, 8
li $s3, 4
mul $s2, $s2, $s3
move $s2, $s2
li $s3, 1
li $s4, 4
mul $s3, $s3, $s4
move $s0, $s3
add $s0, $s1, $s0
lw $v0, 0($s0)
move $s0, $v0
lw $v0, 0($s0)
move $s3, $v0
li $s4, 1
li $s5, 1
sub $s3, $s3, $s5
sle $s3, $s2, $s3
sub $s3, $s4, $s3
beqz $s3, BBS_Init_L27
li $v0, 4
la $a0, str_er
syscall
li $v0, 10
syscall
BBS_Init_L27:
nop
li $s3, 4
add $s2, $s2, $s3
add $s0, $s0, $s2
li $s2, 19
sw $s2, 0($s0)
li $s0, 1
li $s2, 4
mul $s0, $s0, $s2
move $s0, $s0
add $s2, $s1, $s0
lw $v0, 0($s2)
move $v1, $v0
li $s2, 9
li $s3, 4
mul $s2, $s2, $s3
move $s2, $s2
li $s3, 1
li $s4, 4
mul $s3, $s3, $s4
move $s0, $s3
add $s0, $s1, $s0
lw $v0, 0($s0)
move $s0, $v0
lw $v0, 0($s0)
move $s1, $v0
li $s3, 1
li $s4, 1
sub $s1, $s1, $s4
sle $s1, $s2, $s1
sub $s1, $s3, $s1
beqz $s1, BBS_Init_L28
li $v0, 4
la $a0, str_er
syscall
li $v0, 10
syscall
BBS_Init_L28:
nop
li $s1, 4
add $s1, $s2, $s1
add $s0, $s0, $s1
li $s1, 5
sw $s1, 0($s0)
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

