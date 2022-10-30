
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
		move $s0, $v0
		la $s2, Test_Start
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
	.globl ArrayTest_test
ArrayTest_test:
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
		move $s2, $a0
		move $s0, $a1
		add $v0, $s0, 1
		move $s1, $v0
		mul $v0, $s1, 4
		move $s0, $v0
		move $a0, $s0
		jal _halloc
		move $s3, $v0
		sw $s1, 0($s3)
		li $s4, 0
		li $s5, 4
		sub $v0, $s0, 4
		move $s0, $v0
ArrayTest_test_L1:
		sle $v0, $s5, $s0
		move $s1, $v0
		beqz $s1, ArrayTest_test_L2
		add $v0, $s3, $s5
		move $s6, $v0
		sw $s4, 0($s6)
		add $v0, $s5, 4
		move $s5, $v0
		b ArrayTest_test_L1
ArrayTest_test_L2:
		move $s3, $s3
		li $s1, 0
		sw $s1, 4($s2)
		lw $v0, 4($s2)
		move $s0, $v0
		move $a0, $s0
		jal _print
		lw $v0, 0($s3)
		move $s5, $v0
		sub $v0, $s5, 1
		move $s5, $v0
		move $a0, $s5
		jal _print
		li $s4, 0
		move $s0, $s4
		li $s1, 111
		move $a0, $s1
		jal _print
ArrayTest_test_L3:
		lw $v0, 0($s3)
		move $s1, $v0
		sub $v0, $s1, 1
		move $s1, $v0
		li $s2, 1
		sub $v0, $s1, $s2
		move $s1, $v0
		sle $v0, $s0, $s1
		move $s1, $v0
		beqz $s1, ArrayTest_test_L4
		li $s1, 1
		add $v0, $s0, $s1
		move $s1, $v0
		move $a0, $s1
		jal _print
		mul $v0, $s0, 4
		move $s1, $v0
		add $v0, $s1, 4
		move $s1, $v0
		add $v0, $s1, $s3
		move $s1, $v0
		li $s2, 1
		add $v0, $s0, $s2
		move $s2, $v0
		sw $s2, 0($s1)
		li $s1, 1
		add $v0, $s0, $s1
		move $s1, $v0
		move $s0, $s1
		b ArrayTest_test_L3
ArrayTest_test_L4:
		li $s1, 222
		move $a0, $s1
		jal _print
		li $s1, 0
		move $s0, $s1
ArrayTest_test_L5:
		lw $v0, 0($s3)
		move $s1, $v0
		sub $v0, $s1, 1
		move $s1, $v0
		li $s2, 1
		sub $v0, $s1, $s2
		move $s1, $v0
		sle $v0, $s0, $s1
		move $s1, $v0
		beqz $s1, ArrayTest_test_L6
		mul $v0, $s0, 4
		move $s1, $v0
		add $v0, $s1, 4
		move $s1, $v0
		add $v0, $s3, $s1
		move $s1, $v0
		lw $v0, 0($s1)
		move $s2, $v0
		move $a0, $s2
		jal _print
		li $s2, 1
		add $v0, $s0, $s2
		move $s1, $v0
		move $s0, $s1
		b ArrayTest_test_L5
ArrayTest_test_L6:
		li $s0, 333
		move $a0, $s0
		jal _print
		lw $v0, 0($s3)
		move $s0, $v0
		sub $v0, $s0, 1
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
	.globl B_test
B_test:
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
		move $s2, $a0
		move $s0, $a1
		add $v0, $s0, 1
		move $s1, $v0
		mul $v0, $s1, 4
		move $s0, $v0
		move $a0, $s0
		jal _halloc
		move $s3, $v0
		sw $s1, 0($s3)
		li $s4, 0
		li $s5, 4
		sub $v0, $s0, 4
		move $s0, $v0
B_test_L7:
		sle $v0, $s5, $s0
		move $s1, $v0
		beqz $s1, B_test_L8
		add $v0, $s3, $s5
		move $s6, $v0
		sw $s4, 0($s6)
		add $v0, $s5, 4
		move $s5, $v0
		b B_test_L7
B_test_L8:
		move $s3, $s3
		li $s1, 12
		sw $s1, 20($s2)
		lw $v0, 20($s2)
		move $s0, $v0
		move $a0, $s0
		jal _print
		lw $v0, 0($s3)
		move $s5, $v0
		sub $v0, $s5, 1
		move $s5, $v0
		move $a0, $s5
		jal _print
		li $s4, 0
		move $s0, $s4
		li $s1, 111
		move $a0, $s1
		jal _print
B_test_L9:
		lw $v0, 0($s3)
		move $s1, $v0
		sub $v0, $s1, 1
		move $s1, $v0
		li $s2, 1
		sub $v0, $s1, $s2
		move $s1, $v0
		sle $v0, $s0, $s1
		move $s1, $v0
		beqz $s1, B_test_L10
		li $s1, 1
		add $v0, $s0, $s1
		move $s1, $v0
		move $a0, $s1
		jal _print
		mul $v0, $s0, 4
		move $s1, $v0
		add $v0, $s1, 4
		move $s1, $v0
		add $v0, $s1, $s3
		move $s1, $v0
		li $s2, 1
		add $v0, $s0, $s2
		move $s2, $v0
		sw $s2, 0($s1)
		li $s1, 1
		add $v0, $s0, $s1
		move $s1, $v0
		move $s0, $s1
		b B_test_L9
B_test_L10:
		li $s1, 222
		move $a0, $s1
		jal _print
		li $s1, 0
		move $s0, $s1
B_test_L11:
		lw $v0, 0($s3)
		move $s1, $v0
		sub $v0, $s1, 1
		move $s1, $v0
		li $s2, 1
		sub $v0, $s1, $s2
		move $s1, $v0
		sle $v0, $s0, $s1
		move $s1, $v0
		beqz $s1, B_test_L12
		mul $v0, $s0, 4
		move $s1, $v0
		add $v0, $s1, 4
		move $s1, $v0
		add $v0, $s3, $s1
		move $s1, $v0
		lw $v0, 0($s1)
		move $s2, $v0
		move $a0, $s2
		jal _print
		li $s2, 1
		add $v0, $s0, $s2
		move $s1, $v0
		move $s0, $s1
		b B_test_L11
B_test_L12:
		li $s0, 333
		move $a0, $s0
		jal _print
		lw $v0, 0($s3)
		move $s0, $v0
		sub $v0, $s0, 1
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
	.globl Test_Start
Test_Start:
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
		li $s0, 16
		move $a0, $s0
		jal _halloc
		move $s1, $v0
		li $s2, 0
		sw $s2, 0($s1)
		sw $s2, 4($s1)
		sw $s2, 8($s1)
		sw $s2, 12($s1)
		li $s0, 4
		move $a0, $s0
		jal _halloc
		move $s3, $v0
		la $s4, ArrayTest_test
		sw $s4, 0($s3)
		sw $s3, 0($s1)
		move $s1, $s1
		lw $v0, 0($s1)
		move $s0, $v0
		lw $v0, 0($s0)
		move $s0, $v0
		li $s2, 3
		move $a0, $s1
		move $a1, $s2
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
		move $s4, $v0
		move $a0, $s4
		jal _print
		li $s2, 0
		move $v0, $s2
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
