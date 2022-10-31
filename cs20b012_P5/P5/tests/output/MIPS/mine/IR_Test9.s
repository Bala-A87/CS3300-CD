.text
.globl	main
main:
move $fp, $sp
subu $sp, $sp, 44
sw $ra, -4($fp)
li $s0, 4
move $a0, $s0
jal _halloc
move $s1, $v0
li $s2, 0
sw $s2, 0($s1)
li $s0, 4
move $a0, $s0
jal _halloc
move $s0, $v0
la $s2, Test_Start
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
.globl	ArrayTest_test
ArrayTest_test:
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
add $s1, $s0, 1
mul $s0, $s1, 4
move $a0, $s0
jal _halloc
move $s3, $v0
sw $s1, 0($s3)
li $s4, 0
li $s5, 4
sub $s0, $s0, 4
ArrayTest_test_L1:
sle $s1, $s5, $s0
beqz $s1, ArrayTest_test_L2
add $s6, $s3, $s5
sw $s4, 0($s6)
add $s5, $s5, 4
b ArrayTest_test_L1
ArrayTest_test_L2:
nop
move $s3, $s3
li $s1, 0
sw $s1, 4($s2)
lw $v0, 4($s2)
move $s0, $v0
move $a0, $s0
jal _print
lw $v0, 0($s3)
move $s5, $v0
sub $s5, $s5, 1
move $a0, $s5
jal _print
li $s4, 0
move $s0, $s4
li $s1, 111
move $a0, $s1
jal _print
ArrayTest_test_L3:
lw $v0, 0($s3)
move $s1, $v0
sub $s1, $s1, 1
li $s2, 1
sub $s1, $s1, $s2
sle $s1, $s0, $s1
beqz $s1, ArrayTest_test_L4
li $s1, 1
add $s1, $s0, $s1
move $a0, $s1
jal _print
mul $s1, $s0, 4
add $s1, $s1, 4
add $s1, $s1, $s3
li $s2, 1
add $s2, $s0, $s2
sw $s2, 0($s1)
li $s1, 1
add $s1, $s0, $s1
move $s0, $s1
b ArrayTest_test_L3
ArrayTest_test_L4:
nop
li $s1, 222
move $a0, $s1
jal _print
li $s1, 0
move $s0, $s1
ArrayTest_test_L5:
lw $v0, 0($s3)
move $s1, $v0
sub $s1, $s1, 1
li $s2, 1
sub $s1, $s1, $s2
sle $s1, $s0, $s1
beqz $s1, ArrayTest_test_L6
mul $s1, $s0, 4
add $s1, $s1, 4
add $s1, $s3, $s1
lw $v0, 0($s1)
move $s2, $v0
move $a0, $s2
jal _print
li $s2, 1
add $s1, $s0, $s2
move $s0, $s1
b ArrayTest_test_L5
ArrayTest_test_L6:
nop
li $s0, 333
move $a0, $s0
jal _print
lw $v0, 0($s3)
move $s0, $v0
sub $s0, $s0, 1
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
.globl	B_test
B_test:
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
add $s1, $s0, 1
mul $s0, $s1, 4
move $a0, $s0
jal _halloc
move $s3, $v0
sw $s1, 0($s3)
li $s4, 0
li $s5, 4
sub $s0, $s0, 4
B_test_L1:
sle $s1, $s5, $s0
beqz $s1, B_test_L2
add $s6, $s3, $s5
sw $s4, 0($s6)
add $s5, $s5, 4
b B_test_L1
B_test_L2:
nop
move $s3, $s3
li $s1, 12
sw $s1, 20($s2)
lw $v0, 20($s2)
move $s0, $v0
move $a0, $s0
jal _print
lw $v0, 0($s3)
move $s5, $v0
sub $s5, $s5, 1
move $a0, $s5
jal _print
li $s4, 0
move $s0, $s4
li $s1, 111
move $a0, $s1
jal _print
B_test_L3:
lw $v0, 0($s3)
move $s1, $v0
sub $s1, $s1, 1
li $s2, 1
sub $s1, $s1, $s2
sle $s1, $s0, $s1
beqz $s1, B_test_L4
li $s1, 1
add $s1, $s0, $s1
move $a0, $s1
jal _print
mul $s1, $s0, 4
add $s1, $s1, 4
add $s1, $s1, $s3
li $s2, 1
add $s2, $s0, $s2
sw $s2, 0($s1)
li $s1, 1
add $s1, $s0, $s1
move $s0, $s1
b B_test_L3
B_test_L4:
nop
li $s1, 222
move $a0, $s1
jal _print
li $s1, 0
move $s0, $s1
B_test_L5:
lw $v0, 0($s3)
move $s1, $v0
sub $s1, $s1, 1
li $s2, 1
sub $s1, $s1, $s2
sle $s1, $s0, $s1
beqz $s1, B_test_L6
mul $s1, $s0, 4
add $s1, $s1, 4
add $s1, $s3, $s1
lw $v0, 0($s1)
move $s2, $v0
move $a0, $s2
jal _print
li $s2, 1
add $s1, $s0, $s2
move $s0, $s1
b B_test_L5
B_test_L6:
nop
li $s0, 333
move $a0, $s0
jal _print
lw $v0, 0($s3)
move $s0, $v0
sub $s0, $s0, 1
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
.globl	Test_Start
Test_Start:
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
li $s0, 16
move $a0, $s0
jal _halloc
move $s1, $v0
li $s2, 0
sw $s2, 0($s1)
sw $s2, 4($s1)
sw $s2, 8($s1)
sw $s2, 12($s1)
li $s0, 4
move $a0, $s0
jal _halloc
move $s3, $v0
la $s4, ArrayTest_test
sw $s4, 0($s3)
sw $s3, 0($s1)
move $s1, $s1
lw $v0, 0($s1)
move $s0, $v0
lw $v0, 0($s0)
move $s0, $v0
li $s2, 3
move $a0, $s1
move $a1, $s2
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
move $s4, $v0
move $a0, $s4
jal _print
li $s2, 0
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

