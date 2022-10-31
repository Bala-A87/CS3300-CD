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
move $s3, $v0
la $s4, Base_loop
sw $s4, 0($s3)
sw $s3, 0($s1)
lw $v0, 0($s1)
move $s4, $v0
lw $v0, 0($s4)
move $s4, $v0
li $s0, 1
li $s2, 2
move $a0, $s1
move $a1, $s0
move $a2, $s2
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
jalr $s4
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
move $s3, $v0
move $a0, $s3
jal _print
lw $ra, -4($fp)
addu $sp, $sp, 44
j $ra

.text
.globl	Base_loop
Base_loop:
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
move $s2, $a1
move $s1, $a2
li $s0, 0
move $s0, $s0
li $s3, 0
move $s3, $s3
Base_loop_L1:
li $s4, 1
sle $s4, $s3, $s4
beqz $s4, Base_loop_L2
li $s4, 1
add $s4, $s3, $s4
move $s3, $s4
li $s4, 1
add $s4, $s2, $s4
move $s0, $s4
li $s4, 1
add $s4, $s1, $s4
move $s2, $s4
li $s4, 0
move $s4, $s4
Base_loop_L3:
li $s5, 1
sle $s5, $s4, $s5
beqz $s5, Base_loop_L4
li $s5, 1
add $s5, $s4, $s5
move $s4, $s5
add $s5, $s0, $s1
move $s0, $s5
b Base_loop_L3
Base_loop_L4:
nop
li $s4, 2
mul $s4, $s1, $s4
move $s1, $s4
b Base_loop_L1
Base_loop_L2:
nop
add $s0, $s2, $s0
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

