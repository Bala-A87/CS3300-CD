
	.text
	.globl main
main:
		sw $fp, 0($sp)
		sw $ra, -4($sp)
		move $fp, $sp
		subu $sp, $sp, 48
		li $s0, 4
		move $a0, $s0
		jal _halloc
		move $s1, $v0
		li $s2, 0
		sw $s2, 0($s1)
		li $s0, 8
		move $a0, $s0
		jal _halloc
		move $s3, $v0
		la $s4, MT4_Start
		sw $s4, 4($s3)
		la $s4, MT4_Change
		sw $s4, 0($s3)
		sw $s3, 0($s1)
		lw $v0, 0($s1)
		move $s4, $v0
		lw $v0, 4($s4)
		move $s4, $v0
		li $s0, 1
		li $s2, 2
		li $s5, 3
		li $s6, 4
		li $s7, 5
		li $t0, 6
		move $a0, $s1
		move $a1, $s0
		move $a2, $s2
		move $a3, $s5
		sw $s6, -8($sp)
		sw $s7, -12($sp)
		sw $t0, -16($sp)
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
		move $v0, $s4
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
		move $s3, $v0
		move $a0, $s3
		jal _print
		lw $ra, -4($fp)
		addu $sp, $sp, 48
		j $ra

	.text
	.globl MT4_Start
MT4_Start:
		sw $fp, 0($sp)
		sw $ra, -4($sp)
		move $fp, $sp
		subu $sp, $sp, 92
		sw $s0, -20($fp)
		sw $s1, -24($fp)
		sw $s2, -28($fp)
		sw $s3, -32($fp)
		sw $s4, -36($fp)
		sw $s5, -40($fp)
		sw $s6, -44($fp)
		sw $s7, -48($fp)
		move $s0, $a0
		move $s1, $a1
		move $s2, $a2
		move $s3, $a3
		lw $v0, -8($fp)
		move $s4, $v0
		lw $v0, -12($fp)
		move $s5, $v0
		lw $v0, -16($fp)
		move $s6, $v0
		move $a0, $s1
		jal _print
		move $a0, $s2
		jal _print
		move $a0, $s3
		jal _print
		move $a0, $s4
		jal _print
		move $a0, $s5
		jal _print
		move $a0, $s6
		jal _print
		lw $v0, 0($s0)
		move $s7, $v0
		lw $v0, 0($s7)
		move $s7, $v0
		move $a0, $s0
		move $a1, $s6
		move $a2, $s5
		move $a3, $s4
		sw $s3, -8($sp)
		sw $s2, -12($sp)
		sw $s1, -16($sp)
		sw $t0, -52($fp)
		sw $t1, -56($fp)
		sw $t2, -60($fp)
		sw $t3, -64($fp)
		sw $t4, -68($fp)
		sw $t5, -72($fp)
		sw $t6, -76($fp)
		sw $t7, -80($fp)
		sw $t8, -84($fp)
		sw $t9, -88($fp)
		move $v0, $s7
		jalr $v0
		lw $t9, -88($fp)
		lw $t8, -84($fp)
		lw $t7, -80($fp)
		lw $t6, -76($fp)
		lw $t5, -72($fp)
		lw $t4, -68($fp)
		lw $t3, -64($fp)
		lw $t2, -60($fp)
		lw $t1, -56($fp)
		lw $t0, -52($fp)
		move $s0, $v0
		move $s0, $s0
		move $v0, $s0
		lw $s7, -48($fp)
		lw $s6, -44($fp)
		lw $s5, -40($fp)
		lw $s4, -36($fp)
		lw $s3, -32($fp)
		lw $s2, -28($fp)
		lw $s1, -24($fp)
		lw $s0, -20($fp)
		lw $ra, -4($fp)
		lw $fp, 0($fp)
		addu $sp, $sp, 92
		j $ra

	.text
	.globl MT4_Change
MT4_Change:
		sw $fp, 0($sp)
		sw $ra, -4($sp)
		move $fp, $sp
		subu $sp, $sp, 52
		sw $s0, -20($fp)
		sw $s1, -24($fp)
		sw $s2, -28($fp)
		sw $s3, -32($fp)
		sw $s4, -36($fp)
		sw $s5, -40($fp)
		sw $s6, -44($fp)
		sw $s7, -48($fp)
		move $v1, $a0
		move $s0, $a1
		move $s1, $a2
		move $s2, $a3
		lw $v0, -8($fp)
		move $s3, $v0
		lw $v0, -12($fp)
		move $s4, $v0
		lw $v0, -16($fp)
		move $s5, $v0
		move $a0, $s0
		jal _print
		move $a0, $s1
		jal _print
		move $a0, $s2
		jal _print
		move $a0, $s3
		jal _print
		move $a0, $s4
		jal _print
		move $a0, $s5
		jal _print
		li $s0, 0
		move $v0, $s0
		lw $s7, -48($fp)
		lw $s6, -44($fp)
		lw $s5, -40($fp)
		lw $s4, -36($fp)
		lw $s3, -32($fp)
		lw $s2, -28($fp)
		lw $s1, -24($fp)
		lw $s0, -20($fp)
		lw $ra, -4($fp)
		lw $fp, 0($fp)
		addu $sp, $sp, 52
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
