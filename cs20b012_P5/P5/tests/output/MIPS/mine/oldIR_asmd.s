
	.text
	.globl main
main:
		sw $fp, 0($sp)
		sw $ra, -4($sp)
		move $fp, $sp
		subu $sp, $sp, 48
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
		li $s0, 4
		move $a0, $s0
		jal _halloc
		move $s0, $v0
		la $s2, Fac_fn
		sw $s2, 0($s0)
		sw $s0, 0($s1)
		lw $v0, 0($s1)
		move $s2, $v0
		lw $v0, 0($s2)
		move $s2, $v0
		move $a0, $s1
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
		move $v0, $s2
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
	.globl Fac_fn
Fac_fn:
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
		move $s1, $a0
		li $s0, 5
		sw $s0, 16($s1)
		li $s0, 83
		sw $s0, 12($s1)
		li $s0, 5934
		sw $s0, 8($s1)
		li $s0, 183
		sw $s0, 4($s1)
		lw $v0, 16($s1)
		move $s0, $v0
		lw $v0, 12($s1)
		move $s2, $v0
		add $v0, $s0, $s2
		move $s0, $v0
		move $s0, $s0
		move $a0, $s0
		jal _print
		lw $v0, 16($s1)
		move $s2, $v0
		lw $v0, 12($s1)
		move $s3, $v0
		sub $v0, $s2, $s3
		move $s2, $v0
		move $s0, $s2
		move $a0, $s0
		jal _print
		lw $v0, 16($s1)
		move $s2, $v0
		lw $v0, 12($s1)
		move $s3, $v0
		mul $v0, $s2, $s3
		move $s2, $v0
		move $s0, $s2
		move $a0, $s0
		jal _print
		lw $v0, 16($s1)
		move $s2, $v0
		lw $v0, 12($s1)
		move $s3, $v0
		div $v0, $s2, $s3
		move $s2, $v0
		move $s0, $s2
		move $a0, $s0
		jal _print
		lw $v0, 16($s1)
		move $s2, $v0
		lw $v0, 12($s1)
		move $s3, $v0
		lw $v0, 8($s1)
		move $s4, $v0
		div $v0, $s3, $s4
		move $s3, $v0
		mul $v0, $s2, $s3
		move $s2, $v0
		move $s0, $s2
		move $a0, $s0
		jal _print
		lw $v0, 16($s1)
		move $s2, $v0
		lw $v0, 12($s1)
		move $s3, $v0
		lw $v0, 8($s1)
		move $s4, $v0
		div $v0, $s3, $s4
		move $s3, $v0
		lw $v0, 4($s1)
		move $s4, $v0
		add $v0, $s3, $s4
		move $s3, $v0
		mul $v0, $s2, $s3
		move $s2, $v0
		move $s0, $s2
		move $a0, $s0
		jal _print
		lw $v0, 16($s1)
		move $s2, $v0
		lw $v0, 12($s1)
		move $s3, $v0
		lw $v0, 8($s1)
		move $s4, $v0
		lw $v0, 4($s1)
		move $s1, $v0
		add $v0, $s4, $s1
		move $s1, $v0
		div $v0, $s3, $s1
		move $s1, $v0
		mul $v0, $s2, $s1
		move $s1, $v0
		move $s0, $s1
		move $a0, $s0
		jal _print
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
