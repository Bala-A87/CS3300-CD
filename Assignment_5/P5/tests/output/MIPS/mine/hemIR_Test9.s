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
li $s1, 4
move $a0, $s1
jal _halloc
move $s1, $v0
move $s1, $s1
la $s2, Test_Start
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
move $s1, $a1
li $s0, 0
move $v1, $s0
li $s0, 0
move $v1, $s0
li $s0, 1
add $s0, $s1, $s0
li $s3, 4
mul $s0, $s0, $s3
move $a0, $s0
jal _halloc
move $s0, $v0
move $s0, $s0
li $s3, 4
move $s3, $s3
ArrayTest_test_L2:
li $s4, 1
add $s4, $s1, $s4
li $s5, 4
mul $s4, $s4, $s5
li $s5, 1
sub $s4, $s4, $s5
sle $s4, $s3, $s4
beqz $s4, ArrayTest_test_L3
add $s4, $s0, $s3
li $s5, 0
sw $s5, 0($s4)
li $s4, 4
add $s4, $s3, $s4
move $s3, $s4
b ArrayTest_test_L2
ArrayTest_test_L3:
li $s3, 4
mul $s1, $s1, $s3
sw $s1, 0($s0)
move $s0, $s0
li $s1, 0
sw $s1, 12($s2)
lw $v0, 12($s2)
move $s1, $v0
move $a0, $s1
jal _print
lw $v0, 0($s0)
move $s1, $v0
li $s2, 4
div$s1, $s1, $s2
move $a0, $s1
jal _print
li $s1, 0
move $s1, $s1
li $s2, 111
move $a0, $s2
jal _print
ArrayTest_test_L4:
lw $v0, 0($s0)
move $s2, $v0
li $s3, 4
div$s2, $s2, $s3
li $s3, 1
sub $s2, $s2, $s3
sle $s2, $s1, $s2
beqz $s2, ArrayTest_test_L5
li $s2, 1
add $s2, $s1, $s2
move $a0, $s2
jal _print
li $s2, 1
add $s2, $s1, $s2
li $s3, 4
mul $s3, $s1, $s3
lw $v0, 0($s0)
move $s4, $v0
li $s5, 1
li $s6, 1
sub $s4, $s4, $s6
sle $s4, $s3, $s4
sub $s4, $s5, $s4
beqz $s4, ArrayTest_test_L6
li $v0, 4
la $a0, str_er
syscall
li $v0, 10
syscall
ArrayTest_test_L6:
nop
li $s4, 4
add $s3, $s3, $s4
add $s3, $s0, $s3
sw $s2, 0($s3)
li $s2, 1
add $s2, $s1, $s2
move $s1, $s2
b ArrayTest_test_L4
ArrayTest_test_L5:
nop
li $s2, 222
move $a0, $s2
jal _print
li $s2, 0
move $s1, $s2
ArrayTest_test_L7:
lw $v0, 0($s0)
move $s2, $v0
li $s3, 4
div$s2, $s2, $s3
li $s3, 1
sub $s2, $s2, $s3
sle $s2, $s1, $s2
beqz $s2, ArrayTest_test_L8
li $s2, 4
mul $s2, $s1, $s2
lw $v0, 0($s0)
move $s3, $v0
li $s4, 1
li $s5, 1
sub $s3, $s3, $s5
sle $s3, $s1, $s3
sub $s3, $s4, $s3
beqz $s3, ArrayTest_test_L9
li $v0, 4
la $a0, str_er
syscall
li $v0, 10
syscall
ArrayTest_test_L9:
nop
li $s3, 4
add $s2, $s2, $s3
add $s2, $s0, $s2
lw $v0, 0($s2)
move $s2, $v0
move $a0, $s2
jal _print
li $s2, 1
add $s2, $s1, $s2
move $s1, $s2
b ArrayTest_test_L7
ArrayTest_test_L8:
nop
li $s1, 333
move $a0, $s1
jal _print
lw $v0, 0($s0)
move $s0, $v0
li $s1, 4
div$s0, $s0, $s1
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
move $s1, $a1
li $s0, 0
move $v1, $s0
li $s0, 0
move $v1, $s0
li $s0, 1
add $s0, $s1, $s0
li $s3, 4
mul $s0, $s0, $s3
move $a0, $s0
jal _halloc
move $s0, $v0
move $s0, $s0
li $s3, 4
move $s3, $s3
B_test_L10:
li $s4, 1
add $s4, $s1, $s4
li $s5, 4
mul $s4, $s4, $s5
li $s5, 1
sub $s4, $s4, $s5
sle $s4, $s3, $s4
beqz $s4, B_test_L11
add $s4, $s0, $s3
li $s5, 0
sw $s5, 0($s4)
li $s4, 4
add $s4, $s3, $s4
move $s3, $s4
b B_test_L10
B_test_L11:
li $s3, 4
mul $s1, $s1, $s3
sw $s1, 0($s0)
move $s0, $s0
li $s1, 12
sw $s1, 16($s2)
lw $v0, 16($s2)
move $s1, $v0
move $a0, $s1
jal _print
lw $v0, 0($s0)
move $s1, $v0
li $s2, 4
div$s1, $s1, $s2
move $a0, $s1
jal _print
li $s1, 0
move $s1, $s1
li $s2, 111
move $a0, $s2
jal _print
B_test_L12:
lw $v0, 0($s0)
move $s2, $v0
li $s3, 4
div$s2, $s2, $s3
li $s3, 1
sub $s2, $s2, $s3
sle $s2, $s1, $s2
beqz $s2, B_test_L13
li $s2, 1
add $s2, $s1, $s2
move $a0, $s2
jal _print
li $s2, 1
add $s2, $s1, $s2
li $s3, 4
mul $s3, $s1, $s3
lw $v0, 0($s0)
move $s4, $v0
li $s5, 1
li $s6, 1
sub $s4, $s4, $s6
sle $s4, $s3, $s4
sub $s4, $s5, $s4
beqz $s4, B_test_L14
li $v0, 4
la $a0, str_er
syscall
li $v0, 10
syscall
B_test_L14:
nop
li $s4, 4
add $s3, $s3, $s4
add $s3, $s0, $s3
sw $s2, 0($s3)
li $s2, 1
add $s2, $s1, $s2
move $s1, $s2
b B_test_L12
B_test_L13:
nop
li $s2, 222
move $a0, $s2
jal _print
li $s2, 0
move $s1, $s2
B_test_L15:
lw $v0, 0($s0)
move $s2, $v0
li $s3, 4
div$s2, $s2, $s3
li $s3, 1
sub $s2, $s2, $s3
sle $s2, $s1, $s2
beqz $s2, B_test_L16
li $s2, 4
mul $s2, $s1, $s2
lw $v0, 0($s0)
move $s3, $v0
li $s4, 1
li $s5, 1
sub $s3, $s3, $s5
sle $s3, $s1, $s3
sub $s3, $s4, $s3
beqz $s3, B_test_L17
li $v0, 4
la $a0, str_er
syscall
li $v0, 10
syscall
B_test_L17:
nop
li $s3, 4
add $s2, $s2, $s3
add $s2, $s0, $s2
lw $v0, 0($s2)
move $s2, $v0
move $a0, $s2
jal _print
li $s2, 1
add $s2, $s1, $s2
move $s1, $s2
b B_test_L15
B_test_L16:
nop
li $s1, 333
move $a0, $s1
jal _print
lw $v0, 0($s0)
move $s0, $v0
li $s1, 4
div$s0, $s0, $s1
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
li $s0, 0
move $v1, $s0
li $s0, 4
move $a0, $s0
jal _halloc
move $s0, $v0
move $s0, $s0
li $s1, 16
move $a0, $s1
jal _halloc
move $s1, $v0
move $s1, $s1
la $s2, ArrayTest_test
sw $s2, 0($s0)
li $s2, 8
move $s2, $s2
Test_Start_L18:
li $s3, 15
sle $s3, $s2, $s3
beqz $s3, Test_Start_L19
add $s3, $s1, $s2
li $s4, 0
sw $s4, 0($s3)
li $s3, 4
add $s3, $s2, $s3
move $s2, $s3
b Test_Start_L18
Test_Start_L19:
sw $s0, 0($s1)
move $s0, $s1
move $s0, $s0
lw $v0, 0($s0)
move $s1, $v0
lw $v0, 0($s1)
move $s1, $v0
li $s2, 3
move $a0, $s0
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

