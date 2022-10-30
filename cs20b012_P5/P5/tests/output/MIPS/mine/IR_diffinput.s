
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
		move $s1, $v0
		li $s2, 0
		sw $s2, 0($s1)
		sw $s2, 4($s1)
		li $s0, 4
		move $a0, $s0
		jal _halloc
		move $s0, $v0
		la $s2, A_b
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
	.globl A_b
A_b:
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
		li $s0, 4
		move $a0, $s0
		jal _halloc
		move $s2, $v0
		li $s3, 0
		sw $s3, 0($s2)
		li $s0, 4
		move $a0, $s0
		jal _halloc
		move $s4, $v0
		la $s5, B_c
		sw $s5, 0($s4)
		sw $s4, 0($s2)
		move $s2, $s2
		li $s3, 4
		move $a0, $s3
		jal _halloc
		move $s4, $v0
		li $s6, 0
		sw $s6, 0($s4)
		li $s3, 8
		move $a0, $s3
		jal _halloc
		move $s5, $v0
		la $s0, C_c
		sw $s0, 4($s5)
		la $s0, C_c
		sw $s0, 0($s5)
		sw $s5, 0($s4)
		move $s4, $s4
		li $s6, 4
		move $a0, $s6
		jal _halloc
		move $s5, $v0
		li $s7, 0
		sw $s7, 0($s5)
		li $s6, 4
		move $a0, $s6
		jal _halloc
		move $s0, $v0
		la $s3, D_exec
		sw $s3, 0($s0)
		sw $s0, 0($s5)
		move $s5, $s5
		li $s3, 5
		add $v0, $s3, 1
		move $s6, $v0
		mul $v0, $s6, 4
		move $s7, $v0
		move $a0, $s7
		jal _halloc
		move $s0, $v0
		sw $s6, 0($s0)
		li $s3, 0
		li $t0, 4
		sub $v0, $s7, 4
		move $s7, $v0
A_b_L1:
		sle $v0, $t0, $s7
		move $s6, $v0
		beqz $s6, A_b_L2
		add $v0, $s0, $t0
		move $t1, $v0
		sw $s3, 0($t1)
		add $v0, $t0, 4
		move $t0, $v0
		b A_b_L1
A_b_L2:
		sw $s0, 4($s1)
		lw $v0, 4($s1)
		move $s6, $v0
		li $t0, 0
		mul $v0, $t0, 4
		move $s7, $v0
		add $v0, $s7, 4
		move $s7, $v0
		add $v0, $s7, $s6
		move $s7, $v0
		li $t1, 1
		sw $t1, 0($s7)
		lw $v0, 4($s1)
		move $t0, $v0
		li $s3, 1
		mul $v0, $s3, 4
		move $t1, $v0
		add $v0, $t1, 4
		move $t1, $v0
		add $v0, $t1, $t0
		move $t1, $v0
		li $s0, 2
		sw $s0, 0($t1)
		lw $v0, 4($s1)
		move $s3, $v0
		li $s6, 2
		mul $v0, $s6, 4
		move $s0, $v0
		add $v0, $s0, 4
		move $s0, $v0
		add $v0, $s0, $s3
		move $s0, $v0
		li $s3, 3
		sw $s3, 0($s0)
		lw $v0, 4($s1)
		move $s6, $v0
		li $s0, 3
		mul $v0, $s0, 4
		move $s3, $v0
		add $v0, $s3, 4
		move $s3, $v0
		add $v0, $s3, $s6
		move $s3, $v0
		li $s6, 4
		sw $s6, 0($s3)
		lw $v0, 4($s1)
		move $s0, $v0
		li $s3, 4
		mul $v0, $s3, 4
		move $s6, $v0
		add $v0, $s6, 4
		move $s6, $v0
		add $v0, $s6, $s0
		move $s6, $v0
		li $s0, 5
		sw $s0, 0($s6)
		lw $v0, 4($s1)
		move $s0, $v0
		li $s6, 0
		mul $v0, $s6, 4
		move $s7, $v0
		add $v0, $s7, 4
		move $s7, $v0
		add $v0, $s0, $s7
		move $s0, $v0
		lw $v0, 0($s0)
		move $s3, $v0
		move $a0, $s3
		jal _print
		lw $v0, 4($s1)
		move $s0, $v0
		li $s3, 4
		mul $v0, $s3, 4
		move $s6, $v0
		add $v0, $s6, 4
		move $s6, $v0
		add $v0, $s6, $s0
		move $s6, $v0
		lw $v0, 0($s5)
		move $s0, $v0
		lw $v0, 0($s0)
		move $s0, $v0
		lw $v0, 4($s1)
		move $s3, $v0
		move $a0, $s5
		move $a1, $s2
		move $a2, $s3
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
		move $v0, $s0
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
		sw $s2, 0($s6)
		lw $v0, 4($s1)
		move $s2, $v0
		li $s6, 0
		mul $v0, $s6, 4
		move $s3, $v0
		add $v0, $s3, 4
		move $s3, $v0
		add $v0, $s2, $s3
		move $s2, $v0
		lw $v0, 0($s2)
		move $s0, $v0
		move $a0, $s0
		jal _print
		lw $v0, 4($s1)
		move $s2, $v0
		li $s0, 4
		mul $v0, $s0, 4
		move $s6, $v0
		add $v0, $s6, 4
		move $s6, $v0
		add $v0, $s6, $s2
		move $s6, $v0
		lw $v0, 0($s5)
		move $s0, $v0
		lw $v0, 0($s0)
		move $s0, $v0
		lw $v0, 4($s1)
		move $s2, $v0
		move $a0, $s5
		move $a1, $s4
		move $a2, $s2
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
		move $v0, $s0
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
		sw $s3, 0($s6)
		lw $v0, 4($s1)
		move $s1, $v0
		li $s3, 0
		mul $v0, $s3, 4
		move $s2, $v0
		add $v0, $s2, 4
		move $s2, $v0
		add $v0, $s1, $s2
		move $s1, $v0
		lw $v0, 0($s1)
		move $s0, $v0
		move $a0, $s0
		jal _print
		li $s1, 1
		move $v0, $s1
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
	.globl B_c
B_c:
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
		move $v1, $a0
		move $s1, $a1
		li $s0, 1
		mul $v0, $s0, 4
		move $s0, $v0
		add $v0, $s0, 4
		move $s0, $v0
		add $v0, $s1, $s0
		move $s0, $v0
		lw $v0, 0($s0)
		move $s2, $v0
		move $s2, $s2
		li $s3, 2
		mul $v0, $s3, 4
		move $s4, $v0
		add $v0, $s4, 4
		move $s4, $v0
		add $v0, $s1, $s4
		move $s4, $v0
		lw $v0, 0($s4)
		move $s0, $v0
		move $s0, $s0
		li $s4, 0
		mul $v0, $s4, 4
		move $s3, $v0
		add $v0, $s3, 4
		move $s3, $v0
		add $v0, $s3, $s1
		move $s3, $v0
		add $v0, $s2, $s0
		move $s0, $v0
		sw $s0, 0($s3)
		li $s0, 0
		mul $v0, $s0, 4
		move $s0, $v0
		add $v0, $s0, 4
		move $s0, $v0
		add $v0, $s1, $s0
		move $s0, $v0
		lw $v0, 0($s0)
		move $s0, $v0
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
	.globl C_c
C_c:
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
		move $v1, $a0
		move $s1, $a1
		li $s0, 2
		mul $v0, $s0, 4
		move $s0, $v0
		add $v0, $s0, 4
		move $s0, $v0
		add $v0, $s1, $s0
		move $s0, $v0
		lw $v0, 0($s0)
		move $s2, $v0
		move $s2, $s2
		li $s3, 3
		mul $v0, $s3, 4
		move $s4, $v0
		add $v0, $s4, 4
		move $s4, $v0
		add $v0, $s1, $s4
		move $s4, $v0
		lw $v0, 0($s4)
		move $s0, $v0
		move $s0, $s0
		li $s4, 0
		mul $v0, $s4, 4
		move $s3, $v0
		add $v0, $s3, 4
		move $s3, $v0
		add $v0, $s3, $s1
		move $s3, $v0
		add $v0, $s2, $s0
		move $s0, $v0
		sw $s0, 0($s3)
		li $s0, 0
		mul $v0, $s0, 4
		move $s0, $v0
		add $v0, $s0, 4
		move $s0, $v0
		add $v0, $s1, $s0
		move $s0, $v0
		lw $v0, 0($s0)
		move $s0, $v0
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
	.globl D_exec
D_exec:
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
		move $v1, $a0
		move $s0, $a1
		move $s1, $a2
		lw $v0, 0($s0)
		move $s2, $v0
		lw $v0, 0($s2)
		move $s2, $v0
		move $a0, $s0
		move $a1, $s1
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
		move $v0, $s2
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
		move $s0, $v0
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
