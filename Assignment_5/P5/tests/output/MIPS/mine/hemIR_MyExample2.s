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
la $s2, Test1_Start
sw $s2, 0($s0)
sw $s0, 0($s1)
move $s0, $s1
lw $v0, 0($s0)
move $s1, $v0
lw $v0, 0($s1)
move $s1, $v0
li $s2, 5
li $s3, 1
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
.globl	Test1_Start
Test1_Start:
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
move $v1, $a2
li $s0, 0
move $v1, $s0
li $s0, 0
move $v1, $s0
li $s0, 0
move $v1, $s0
li $s0, 1
add $s0, $s1, $s0
li $s2, 4
mul $s0, $s0, $s2
move $a0, $s0
jal _halloc
move $s0, $v0
move $s0, $s0
li $s2, 4
move $s2, $s2
Test1_Start_L2:
li $s3, 1
add $s3, $s1, $s3
li $s4, 4
mul $s3, $s3, $s4
li $s4, 1
sub $s3, $s3, $s4
sle $s3, $s2, $s3
beqz $s3, Test1_Start_L3
add $s3, $s0, $s2
li $s4, 0
sw $s4, 0($s3)
li $s3, 4
add $s3, $s2, $s3
move $s2, $s3
b Test1_Start_L2
Test1_Start_L3:
li $s2, 4
mul $s1, $s1, $s2
sw $s1, 0($s0)
move $s0, $s0
li $s1, 0
li $s2, 0
li $s3, 4
mul $s1, $s1, $s3
lw $v0, 0($s0)
move $s3, $v0
li $s4, 1
li $s5, 1
sub $s3, $s3, $s5
sle $s3, $s1, $s3
sub $s3, $s4, $s3
beqz $s3, Test1_Start_L4
li $v0, 4
la $a0, str_er
syscall
li $v0, 10
syscall
Test1_Start_L4:
nop
li $s3, 4
add $s1, $s1, $s3
add $s1, $s0, $s1
sw $s2, 0($s1)
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
beqz $s1, Test1_Start_L5
li $v0, 4
la $a0, str_er
syscall
li $v0, 10
syscall
Test1_Start_L5:
nop
li $s1, 4
add $s1, $s2, $s1
add $s1, $s0, $s1
lw $v0, 0($s1)
move $s1, $v0
move $s1, $s1
move $a0, $s1
jal _print
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
beqz $s1, Test1_Start_L6
li $v0, 4
la $a0, str_er
syscall
li $v0, 10
syscall
Test1_Start_L6:
nop
li $s1, 4
add $s1, $s2, $s1
add $s0, $s0, $s1
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

