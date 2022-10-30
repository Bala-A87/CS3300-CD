
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
		li $s0, 4
		move $a0, $s0
		jal _halloc
		move $s2, $v0
		la $s3, Test_start
		sw $s3, 0($s2)
		sw $s2, 0($s1)
		lw $v0, 0($s1)
		move $s3, $v0
		lw $v0, 0($s3)
		move $s3, $v0
		li $s0, 10
		move $a0, $s1
		move $a1, $s0
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
		move $v0, $s3
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
		move $s2, $v0
		move $a0, $s2
		jal _print
		lw $ra, -4($fp)
		addu $sp, $sp, 48
		j $ra

	.text
	.globl Test_start
Test_start:
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
		move $s0, $a1
		add $v0, $s0, 1
		move $s1, $v0
		mul $v0, $s1, 4
		move $s0, $v0
		move $a0, $s0
		jal _halloc
		move $s2, $v0
		sw $s1, 0($s2)
		li $s3, 0
		li $s4, 4
		sub $v0, $s0, 4
		move $s0, $v0
Test_start_L1:
		sle $v0, $s4, $s0
		move $s1, $v0
		beqz $s1, Test_start_L2
		add $v0, $s2, $s4
		move $s5, $v0
		sw $s3, 0($s5)
		add $v0, $s4, 4
		move $s4, $v0
		b Test_start_L1
Test_start_L2:
		move $s0, $s2
		lw $v0, 0($s0)
		move $s1, $v0
		sub $v0, $s1, 1
		move $s1, $v0
		move $s1, $s1
		li $s4, 0
		move $s2, $s4
Test_start_L3:
		li $s3, 1
		sub $v0, $s1, $s3
		move $s3, $v0
		sle $v0, $s2, $s3
		move $s5, $v0
		beqz $s5, Test_start_L4
		mul $v0, $s2, 4
		move $s3, $v0
		add $v0, $s3, 4
		move $s3, $v0
		add $v0, $s3, $s0
		move $s3, $v0
		sw $s2, 0($s3)
		mul $v0, $s2, 4
		move $s3, $v0
		add $v0, $s3, 4
		move $s3, $v0
		add $v0, $s0, $s3
		move $s3, $v0
		lw $v0, 0($s3)
		move $s4, $v0
		move $a0, $s4
		jal _print
		li $s4, 1
		add $v0, $s2, $s4
		move $s3, $v0
		move $s2, $s3
		b Test_start_L3
Test_start_L4:
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
