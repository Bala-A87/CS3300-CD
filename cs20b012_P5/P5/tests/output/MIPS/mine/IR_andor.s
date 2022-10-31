.text
.globl	main
main:
move $fp, $sp
subu $sp, $sp, 44
sw $ra, -4($fp)
li $s0, 20
move $a0, $s0
jal _halloc
move $s1, $v0
li $s2, 0
sw $s2, 0($s1)
sw $s2, 4($s1)
sw $s2, 8($s1)
sw $s2, 12($s1)
sw $s2, 16($s1)
li $s0, 8
move $a0, $s0
jal _halloc
move $s0, $v0
la $s2, yeaboi_fn
sw $s2, 4($s0)
la $s2, yeaboi_foo
sw $s2, 0($s0)
sw $s0, 0($s1)
lw $v0, 0($s1)
move $s2, $v0
lw $v0, 4($s2)
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
.globl	yeaboi_fn
yeaboi_fn:
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
li $s0, 1
sw $s0, 4($s1)
li $s0, 1
sw $s0, 16($s1)
li $s0, 0
sw $s0, 12($s1)
lw $v0, 16($s1)
move $s0, $v0
beqz $s0, yeaboi_fn_L1
lw $v0, 12($s1)
move $s2, $v0
move $s2, $s2
b yeaboi_fn_L2
yeaboi_fn_L1:
move $s2, $s0
yeaboi_fn_L2:
nop
sw $s2, 8($s1)
lw $v0, 16($s1)
move $s0, $v0
beqz $s0, yeaboi_fn_L4
move $s0, $s0
b yeaboi_fn_L5
yeaboi_fn_L4:
lw $v0, 0($s1)
move $s2, $v0
lw $v0, 0($s2)
move $s2, $v0
move $a0, $s1
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
move $s3, $v0
move $s0, $s3
yeaboi_fn_L5:
nop
beqz $s0, yeaboi_fn_L3
lw $v0, 4($s1)
move $s2, $v0
move $a0, $s2
jal _print
yeaboi_fn_L3:
nop
li $s0, 1
sw $s0, 4($s1)
lw $v0, 12($s1)
move $s0, $v0
beqz $s0, yeaboi_fn_L7
move $s0, $s0
b yeaboi_fn_L8
yeaboi_fn_L7:
lw $v0, 0($s1)
move $s2, $v0
lw $v0, 0($s2)
move $s2, $v0
move $a0, $s1
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
move $s3, $v0
move $s0, $s3
yeaboi_fn_L8:
nop
beqz $s0, yeaboi_fn_L6
lw $v0, 4($s1)
move $s2, $v0
move $a0, $s2
jal _print
yeaboi_fn_L6:
nop
li $s0, 1
sw $s0, 4($s1)
lw $v0, 12($s1)
move $s0, $v0
beqz $s0, yeaboi_fn_L10
lw $v0, 0($s1)
move $s2, $v0
lw $v0, 0($s2)
move $s2, $v0
move $a0, $s1
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
move $s3, $v0
move $s3, $s3
b yeaboi_fn_L11
yeaboi_fn_L10:
move $s3, $s0
yeaboi_fn_L11:
nop
beqz $s3, yeaboi_fn_L9
lw $v0, 4($s1)
move $s2, $v0
move $a0, $s2
jal _print
yeaboi_fn_L9:
nop
li $s0, 1
sw $s0, 4($s1)
lw $v0, 16($s1)
move $s0, $v0
beqz $s0, yeaboi_fn_L13
lw $v0, 0($s1)
move $s2, $v0
lw $v0, 0($s2)
move $s2, $v0
move $a0, $s1
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
move $s3, $v0
move $s3, $s3
b yeaboi_fn_L14
yeaboi_fn_L13:
move $s3, $s0
yeaboi_fn_L14:
nop
beqz $s3, yeaboi_fn_L12
lw $v0, 4($s1)
move $s2, $v0
move $a0, $s2
jal _print
yeaboi_fn_L12:
nop
li $s0, 1
sw $s0, 4($s1)
lw $v0, 12($s1)
move $s0, $v0
beqz $s0, yeaboi_fn_L16
move $s0, $s0
b yeaboi_fn_L17
yeaboi_fn_L16:
lw $v0, 16($s1)
move $s2, $v0
beqz $s2, yeaboi_fn_L18
move $s2, $s2
b yeaboi_fn_L19
yeaboi_fn_L18:
lw $v0, 0($s1)
move $s3, $v0
lw $v0, 0($s3)
move $s3, $v0
move $a0, $s1
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
move $s4, $v0
move $s2, $s4
yeaboi_fn_L19:
nop
move $s0, $s2
yeaboi_fn_L17:
nop
beqz $s0, yeaboi_fn_L15
lw $v0, 4($s1)
move $s3, $v0
move $a0, $s3
jal _print
yeaboi_fn_L15:
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
.globl	yeaboi_foo
yeaboi_foo:
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
li $s1, 5
sw $s1, 4($s0)
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

