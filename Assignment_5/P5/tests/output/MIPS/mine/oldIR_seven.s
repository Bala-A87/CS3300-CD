.text
.globl	main
main:
move $fp, $sp
subu $sp, $sp, 60
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
la $s4, huh_lol
sw $s4, 0($s3)
sw $s3, 0($s1)
lw $v0, 0($s1)
move $s4, $v0
lw $v0, 0($s4)
move $s4, $v0
li $s0, 1
li $s2, 2
li $s5, 3
li $s6, 4
li $s7, 5
li $t0, 6
li $t1, 7
move $a0, $s1
move $a1, $s0
move $a2, $s2
move $a3, $s5
sw $s6, 0($sp)
sw $s7, 4($sp)
sw $t0, 8($sp)
sw $t1, 12($sp)
sw $t0, 16($sp)
sw $t1, 20($sp)
sw $t2, 24($sp)
sw $t3, 28($sp)
sw $t4, 32($sp)
sw $t5, 36($sp)
sw $t6, 40($sp)
sw $t7, 44($sp)
sw $t8, 48($sp)
sw $t9, 52($sp)
jalr $s4
lw $t9, 52($sp)
lw $t8, 48($sp)
lw $t7, 44($sp)
lw $t6, 40($sp)
lw $t5, 36($sp)
lw $t4, 32($sp)
lw $t3, 28($sp)
lw $t2, 24($sp)
lw $t1, 20($sp)
lw $t0, 16($sp)
move $s3, $v0
move $a0, $s3
jal _print
lw $ra, -4($fp)
addu $sp, $sp, 60
j $ra

.text
.globl	huh_lol
huh_lol:
sw $fp, -8($sp)
move $fp, $sp
sw $ra, -4($fp)
subu $sp, $sp, 112
sw $s0, 32($sp)
sw $s1, 36($sp)
sw $s2, 40($sp)
sw $s3, 44($sp)
sw $s4, 48($sp)
sw $s5, 52($sp)
sw $s6, 56($sp)
sw $s7, 60($sp)
move $s1, $a0
move $s2, $a1
move $t0, $a2
move $s6, $a3
lw $v0, 0($fp)
move $s7, $v0
lw $v0, 4($fp)
move $s3, $v0
lw $v0, 8($fp)
move $s4, $v0
lw $v0, 12($fp)
move $s5, $v0
li $s0, 7
sne $s0, $s2, $s0
beqz $s0, huh_lol_L1
lw $v0, 0($s1)
move $s0, $v0
lw $v0, 0($s0)
move $s0, $v0
move $a0, $s1
move $a1, $t0
move $a2, $s6
move $a3, $s7
sw $s3, 0($sp)
sw $s4, 4($sp)
sw $s5, 8($sp)
sw $s2, 12($sp)
sw $t0, 64($sp)
sw $t1, 68($sp)
sw $t2, 72($sp)
sw $t3, 76($sp)
sw $t4, 80($sp)
sw $t5, 84($sp)
sw $t6, 88($sp)
sw $t7, 92($sp)
sw $t8, 96($sp)
sw $t9, 100($sp)
jalr $s0
lw $t9, 100($sp)
lw $t8, 96($sp)
lw $t7, 92($sp)
lw $t6, 88($sp)
lw $t5, 84($sp)
lw $t4, 80($sp)
lw $t3, 76($sp)
lw $t2, 72($sp)
lw $t1, 68($sp)
lw $t0, 64($sp)
move $s0, $v0
move $s0, $s0
b huh_lol_L2
huh_lol_L1:
add $s1, $s6, $s7
add $s1, $t0, $s1
move $s0, $s1
huh_lol_L2:
nop
move $v0, $s0
lw $s7, 60($sp)
lw $s6, 56($sp)
lw $s5, 52($sp)
lw $s4, 48($sp)
lw $s3, 44($sp)
lw $s2, 40($sp)
lw $s1, 36($sp)
lw $s0, 32($sp)
lw $ra, -4($fp)
lw $fp, -8($fp)
addu $sp, $sp, 112
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

