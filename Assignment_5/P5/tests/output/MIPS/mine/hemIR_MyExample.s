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
.globl	Base_set
Base_set:
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
move $s0, $s1
add $s0, $s1, $s0
sw $s0, 12($s2)
lw $v0, 12($s2)
move $s0, $v0
li $s1, 2
add $s0, $s0, $s1
move $v1, $s0
lw $v0, 12($s2)
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
.globl	Base_get
Base_get:
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
sw $s0, 12($s1)
lw $v0, 12($s1)
move $s0, $v0
li $s1, 30
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
.globl	Derived_set
Derived_set:
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
li $s0, 1
move $s0, $s0
Derived_set_L2:
li $s3, 3
sle $s3, $s0, $s3
beqz $s3, Derived_set_L3
move $a0, $s0
jal _print
li $s3, 1
add $s3, $s0, $s3
move $s0, $s3
li $s3, 1
sub $s3, $s1, $s3
move $s1, $s3
b Derived_set_L2
Derived_set_L3:
nop
move $a0, $s1
jal _print
li $s0, 4
mul $s0, $s1, $s0
sw $s0, 12($s2)
lw $v0, 12($s2)
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
.globl	Derived_shortCircuit
Derived_shortCircuit:
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
li $s0, 20
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
Derived_shortCircuit_L4:
li $s4, 1
add $s4, $s0, $s4
li $s5, 4
mul $s4, $s4, $s5
li $s5, 1
sub $s4, $s4, $s5
sle $s4, $s3, $s4
beqz $s4, Derived_shortCircuit_L5
add $s4, $s2, $s3
li $s5, 0
sw $s5, 0($s4)
li $s4, 4
add $s4, $s3, $s4
move $s3, $s4
b Derived_shortCircuit_L4
Derived_shortCircuit_L5:
li $s3, 4
mul $s0, $s0, $s3
sw $s0, 0($s2)
move $s0, $s2
li $s2, 2
li $s3, 11
li $s4, 4
mul $s2, $s2, $s4
lw $v0, 0($s0)
move $s4, $v0
li $s5, 1
li $s6, 1
sub $s4, $s4, $s6
sle $s4, $s2, $s4
sub $s4, $s5, $s4
beqz $s4, Derived_shortCircuit_L6
li $v0, 4
la $a0, str_er
syscall
li $v0, 10
syscall
Derived_shortCircuit_L6:
nop
li $s4, 4
add $s2, $s2, $s4
add $s2, $s0, $s2
sw $s3, 0($s2)
li $s2, 0
move $s2, $s2
li $s3, 0
beqz $s3, Derived_shortCircuit_L9
li $s3, 1
move $s1, $s1
lw $v0, 0($s1)
move $s4, $v0
lw $v0, 16($s4)
move $s4, $v0
li $s5, 99
move $a0, $s1
move $a1, $s5
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
move $s1, $v0
sub $s1, $s3, $s1
beqz $s1, Derived_shortCircuit_L9
li $s1, 1
move $s2, $s1
Derived_shortCircuit_L9:
nop
beqz $s2, Derived_shortCircuit_L7
li $s1, 999
move $a0, $s1
jal _print
b Derived_shortCircuit_L8
Derived_shortCircuit_L7:
li $s1, 2
li $s2, 4
mul $s2, $s1, $s2
lw $v0, 0($s0)
move $s3, $v0
li $s4, 1
li $s5, 1
sub $s3, $s3, $s5
sle $s1, $s1, $s3
sub $s1, $s4, $s1
beqz $s1, Derived_shortCircuit_L10
li $v0, 4
la $a0, str_er
syscall
li $v0, 10
syscall
Derived_shortCircuit_L10:
nop
li $s1, 4
add $s1, $s2, $s1
add $s1, $s0, $s1
lw $v0, 0($s1)
move $s1, $v0
move $a0, $s1
jal _print
lw $v0, 0($s0)
move $s0, $v0
li $s1, 4
div$s0, $s0, $s1
move $a0, $s0
jal _print
Derived_shortCircuit_L8:
nop
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
.globl	Derived_printInt
Derived_printInt:
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
move $s0, $a1
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
li $s0, 0
move $v1, $s0
li $s0, 0
move $v1, $s0
li $s0, 20
move $a0, $s0
jal _halloc
move $s0, $v0
move $s0, $s0
li $s1, 20
move $a0, $s1
jal _halloc
move $s1, $v0
move $s1, $s1
la $s2, Derived_set
sw $s2, 0($s0)
la $s2, Base_get
sw $s2, 4($s0)
la $s2, Derived_set
sw $s2, 8($s0)
la $s2, Derived_printInt
sw $s2, 16($s0)
la $s2, Derived_shortCircuit
sw $s2, 12($s0)
li $s2, 8
move $s2, $s2
Test_Start_L11:
li $s3, 19
sle $s3, $s2, $s3
beqz $s3, Test_Start_L12
add $s3, $s1, $s2
li $s4, 0
sw $s4, 0($s3)
li $s3, 4
add $s3, $s2, $s3
move $s2, $s3
b Test_Start_L11
Test_Start_L12:
sw $s0, 0($s1)
move $s0, $s1
move $s1, $s0
move $s1, $s1
lw $v0, 0($s1)
move $s2, $v0
lw $v0, 0($s2)
move $s2, $v0
li $s3, 8
move $a0, $s3
jal _halloc
move $s3, $v0
move $s3, $s3
li $s4, 16
move $a0, $s4
jal _halloc
move $s4, $v0
move $s4, $s4
la $s5, Base_set
sw $s5, 0($s3)
la $s5, Base_get
sw $s5, 4($s3)
li $s5, 8
move $s5, $s5
Test_Start_L13:
li $s6, 15
sle $s6, $s5, $s6
beqz $s6, Test_Start_L14
add $s6, $s4, $s5
li $s7, 0
sw $s7, 0($s6)
li $s6, 4
add $s6, $s5, $s6
move $s5, $s6
b Test_Start_L13
Test_Start_L14:
sw $s3, 0($s4)
move $s3, $s4
lw $v0, 0($s3)
move $s4, $v0
lw $v0, 4($s4)
move $s4, $v0
move $a0, $s3
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
move $s3, $v0
move $a0, $s1
move $a1, $s3
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
move $s1, $v0
move $a0, $s1
jal _print
move $s0, $s0
lw $v0, 0($s0)
move $s1, $v0
lw $v0, 12($s1)
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

