
	.text
	.globl main
main:
		sw $fp, 0($sp)
		sw $ra, -4($sp)
		move $fp, $sp
		subu $sp, $sp, 48
		li $s0, 8
		move $a0, $s0
		jal _halloc
		move $s0, $v0
		move $s0, $s0
		li $s1, 20
		move $a0, $s1
		jal _halloc
		move $s1, $v0
		move $s1, $s1
		la $s2, yeaboi_foo
		sw $s2, 4($s0)
		la $s2, yeaboi_fn
		sw $s2, 0($s0)
		li $s2, 8
		move $s2, $s2
MAIN_L0:
		li $s3, 19
		sle $v0, $s2, $s3
		move $s3, $v0
		beqz $s3, MAIN_L1
		add $v0, $s1, $s2
		move $s3, $v0
		li $s4, 0
		sw $s4, 0($s3)
		li $s3, 4
		add $v0, $s2, $s3
		move $s3, $v0
		move $s2, $s3
		b MAIN_L0
MAIN_L1:
		sw $s0, 0($s1)
		move $s0, $s1
		lw $v0, 0($s0)
		move $s1, $v0
		lw $v0, 0($s1)
		move $s1, $v0
		move $a0, $s0
		sw $t0, -8($fp)
		sw $t1, -12($fp)
		sw $t2, -16($fp)
		sw $t3, -20($fp)
		sw $t4, -24($fp)
		sw $t5, -28($fp)
		sw $t6, -32($fp)
		sw $t7, -36($fp)
		sw $t8, -40($fp)
		sw $t9, -44($fp)
		move $v0, $s1
		jalr $v0
		lw $t9, -44($fp)
		lw $t8, -40($fp)
		lw $t7, -36($fp)
		lw $t6, -32($fp)
		lw $t5, -28($fp)
		lw $t4, -24($fp)
		lw $t3, -20($fp)
		lw $t2, -16($fp)
		lw $t1, -12($fp)
		lw $t0, -8($fp)
		move $s0, $v0
		move $a0, $s0
		jal _print
		lw $ra, -4($fp)
		addu $sp, $sp, 48
		j $ra

	.text
	.globl yeaboi_fn
yeaboi_fn:
		sw $fp, 0($sp)
		sw $ra, -4($sp)
		move $fp, $sp
		subu $sp, $sp, 80
		sw $s0, -8($fp)
		sw $s1, -12($fp)
		sw $s2, -16($fp)
		sw $s3, -20($fp)
		sw $s4, -24($fp)
		sw $s5, -28($fp)
		sw $s6, -32($fp)
		sw $s7, -36($fp)
		move $s1, $a0
		li $s0, 1
		sw $s0, 16($s1)
		li $s0, 1
		sw $s0, 4($s1)
		li $s0, 0
		sw $s0, 8($s1)
		li $s0, 0
		move $s0, $s0
		lw $v0, 4($s1)
		move $s2, $v0
		beqz $s2, yeaboi_fn_L2
		lw $v0, 8($s1)
		move $s2, $v0
		beqz $s2, yeaboi_fn_L2
		li $s2, 1
		move $s0, $s2
yeaboi_fn_L2:
		sw $s0, 12($s1)
		li $s0, 1
		move $s0, $s0
		lw $v0, 4($s1)
		move $s2, $v0
		li $s3, 1
		sub $v0, $s3, $s2
		move $s2, $v0
		beqz $s2, yeaboi_fn_L4
		move $s2, $s1
		lw $v0, 0($s2)
		move $s3, $v0
		lw $v0, 4($s3)
		move $s3, $v0
		move $a0, $s2
		sw $t0, -40($fp)
		sw $t1, -44($fp)
		sw $t2, -48($fp)
		sw $t3, -52($fp)
		sw $t4, -56($fp)
		sw $t5, -60($fp)
		sw $t6, -64($fp)
		sw $t7, -68($fp)
		sw $t8, -72($fp)
		sw $t9, -76($fp)
		move $v0, $s3
		jalr $v0
		lw $t9, -76($fp)
		lw $t8, -72($fp)
		lw $t7, -68($fp)
		lw $t6, -64($fp)
		lw $t5, -60($fp)
		lw $t4, -56($fp)
		lw $t3, -52($fp)
		lw $t2, -48($fp)
		lw $t1, -44($fp)
		lw $t0, -40($fp)
		move $s2, $v0
		li $s3, 1
		sub $v0, $s3, $s2
		move $s2, $v0
		beqz $s2, yeaboi_fn_L4
		li $s2, 0
		move $s0, $s2
yeaboi_fn_L4:
		beqz $s0, yeaboi_fn_L3
		lw $v0, 16($s1)
		move $s0, $v0
		move $a0, $s0
		jal _print
yeaboi_fn_L3:
		li $s0, 1
		sw $s0, 16($s1)
		li $s0, 1
		move $s0, $s0
		lw $v0, 8($s1)
		move $s2, $v0
		li $s3, 1
		sub $v0, $s3, $s2
		move $s2, $v0
		beqz $s2, yeaboi_fn_L6
		move $s2, $s1
		lw $v0, 0($s2)
		move $s3, $v0
		lw $v0, 4($s3)
		move $s3, $v0
		move $a0, $s2
		sw $t0, -40($fp)
		sw $t1, -44($fp)
		sw $t2, -48($fp)
		sw $t3, -52($fp)
		sw $t4, -56($fp)
		sw $t5, -60($fp)
		sw $t6, -64($fp)
		sw $t7, -68($fp)
		sw $t8, -72($fp)
		sw $t9, -76($fp)
		move $v0, $s3
		jalr $v0
		lw $t9, -76($fp)
		lw $t8, -72($fp)
		lw $t7, -68($fp)
		lw $t6, -64($fp)
		lw $t5, -60($fp)
		lw $t4, -56($fp)
		lw $t3, -52($fp)
		lw $t2, -48($fp)
		lw $t1, -44($fp)
		lw $t0, -40($fp)
		move $s2, $v0
		li $s3, 1
		sub $v0, $s3, $s2
		move $s2, $v0
		beqz $s2, yeaboi_fn_L6
		li $s2, 0
		move $s0, $s2
yeaboi_fn_L6:
		beqz $s0, yeaboi_fn_L5
		lw $v0, 16($s1)
		move $s0, $v0
		move $a0, $s0
		jal _print
yeaboi_fn_L5:
		li $s0, 1
		sw $s0, 16($s1)
		li $s0, 0
		move $s0, $s0
		lw $v0, 8($s1)
		move $s2, $v0
		beqz $s2, yeaboi_fn_L8
		move $s2, $s1
		lw $v0, 0($s2)
		move $s3, $v0
		lw $v0, 4($s3)
		move $s3, $v0
		move $a0, $s2
		sw $t0, -40($fp)
		sw $t1, -44($fp)
		sw $t2, -48($fp)
		sw $t3, -52($fp)
		sw $t4, -56($fp)
		sw $t5, -60($fp)
		sw $t6, -64($fp)
		sw $t7, -68($fp)
		sw $t8, -72($fp)
		sw $t9, -76($fp)
		move $v0, $s3
		jalr $v0
		lw $t9, -76($fp)
		lw $t8, -72($fp)
		lw $t7, -68($fp)
		lw $t6, -64($fp)
		lw $t5, -60($fp)
		lw $t4, -56($fp)
		lw $t3, -52($fp)
		lw $t2, -48($fp)
		lw $t1, -44($fp)
		lw $t0, -40($fp)
		move $s2, $v0
		beqz $s2, yeaboi_fn_L8
		li $s2, 1
		move $s0, $s2
yeaboi_fn_L8:
		beqz $s0, yeaboi_fn_L7
		lw $v0, 16($s1)
		move $s0, $v0
		move $a0, $s0
		jal _print
yeaboi_fn_L7:
		li $s0, 1
		sw $s0, 16($s1)
		li $s0, 0
		move $s0, $s0
		lw $v0, 4($s1)
		move $s2, $v0
		beqz $s2, yeaboi_fn_L10
		move $s2, $s1
		lw $v0, 0($s2)
		move $s3, $v0
		lw $v0, 4($s3)
		move $s3, $v0
		move $a0, $s2
		sw $t0, -40($fp)
		sw $t1, -44($fp)
		sw $t2, -48($fp)
		sw $t3, -52($fp)
		sw $t4, -56($fp)
		sw $t5, -60($fp)
		sw $t6, -64($fp)
		sw $t7, -68($fp)
		sw $t8, -72($fp)
		sw $t9, -76($fp)
		move $v0, $s3
		jalr $v0
		lw $t9, -76($fp)
		lw $t8, -72($fp)
		lw $t7, -68($fp)
		lw $t6, -64($fp)
		lw $t5, -60($fp)
		lw $t4, -56($fp)
		lw $t3, -52($fp)
		lw $t2, -48($fp)
		lw $t1, -44($fp)
		lw $t0, -40($fp)
		move $s2, $v0
		beqz $s2, yeaboi_fn_L10
		li $s2, 1
		move $s0, $s2
yeaboi_fn_L10:
		beqz $s0, yeaboi_fn_L9
		lw $v0, 16($s1)
		move $s0, $v0
		move $a0, $s0
		jal _print
yeaboi_fn_L9:
		li $s0, 1
		sw $s0, 16($s1)
		li $s0, 1
		move $s0, $s0
		lw $v0, 8($s1)
		move $s2, $v0
		li $s3, 1
		sub $v0, $s3, $s2
		move $s2, $v0
		beqz $s2, yeaboi_fn_L12
		li $s2, 1
		move $s2, $s2
		lw $v0, 4($s1)
		move $s3, $v0
		li $s4, 1
		sub $v0, $s4, $s3
		move $s3, $v0
		beqz $s3, yeaboi_fn_L13
		move $s3, $s1
		lw $v0, 0($s3)
		move $s4, $v0
		lw $v0, 4($s4)
		move $s4, $v0
		move $a0, $s3
		sw $t0, -40($fp)
		sw $t1, -44($fp)
		sw $t2, -48($fp)
		sw $t3, -52($fp)
		sw $t4, -56($fp)
		sw $t5, -60($fp)
		sw $t6, -64($fp)
		sw $t7, -68($fp)
		sw $t8, -72($fp)
		sw $t9, -76($fp)
		move $v0, $s4
		jalr $v0
		lw $t9, -76($fp)
		lw $t8, -72($fp)
		lw $t7, -68($fp)
		lw $t6, -64($fp)
		lw $t5, -60($fp)
		lw $t4, -56($fp)
		lw $t3, -52($fp)
		lw $t2, -48($fp)
		lw $t1, -44($fp)
		lw $t0, -40($fp)
		move $s3, $v0
		li $s4, 1
		sub $v0, $s4, $s3
		move $s3, $v0
		beqz $s3, yeaboi_fn_L13
		li $s3, 0
		move $s2, $s3
yeaboi_fn_L13:
		li $s3, 1
		sub $v0, $s3, $s2
		move $s2, $v0
		beqz $s2, yeaboi_fn_L12
		li $s2, 0
		move $s0, $s2
yeaboi_fn_L12:
		beqz $s0, yeaboi_fn_L11
		lw $v0, 16($s1)
		move $s0, $v0
		move $a0, $s0
		jal _print
yeaboi_fn_L11:
		li $s0, 1
		move $v0, $s0
		lw $s7, -36($fp)
		lw $s6, -32($fp)
		lw $s5, -28($fp)
		lw $s4, -24($fp)
		lw $s3, -20($fp)
		lw $s2, -16($fp)
		lw $s1, -12($fp)
		lw $s0, -8($fp)
		lw $ra, -4($fp)
		lw $fp, 0($fp)
		addu $sp, $sp, 80
		j $ra

	.text
	.globl yeaboi_foo
yeaboi_foo:
		sw $fp, 0($sp)
		sw $ra, -4($sp)
		move $fp, $sp
		subu $sp, $sp, 40
		sw $s0, -8($fp)
		sw $s1, -12($fp)
		sw $s2, -16($fp)
		sw $s3, -20($fp)
		sw $s4, -24($fp)
		sw $s5, -28($fp)
		sw $s6, -32($fp)
		sw $s7, -36($fp)
		move $s0, $a0
		li $s1, 5
		sw $s1, 16($s0)
		li $s0, 1
		move $v0, $s0
		lw $s7, -36($fp)
		lw $s6, -32($fp)
		lw $s5, -28($fp)
		lw $s4, -24($fp)
		lw $s3, -20($fp)
		lw $s2, -16($fp)
		lw $s1, -12($fp)
		lw $s0, -8($fp)
		lw $ra, -4($fp)
		lw $fp, 0($fp)
		addu $sp, $sp, 40
		j $ra

	.text
	.globl _halloc
_halloc:
		li $v0, 9
		syscall
		j $ra

	.text
	.globl _print
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
