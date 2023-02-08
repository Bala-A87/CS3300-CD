
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
	.globl Base_set
Base_set:
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
		move $s1, $s0
		add $v0, $s0, $s1
		move $s0, $v0
		sw $s0, 4($s2)
		lw $v0, 4($s2)
		move $s0, $v0
		li $s1, 2
		add $v0, $s0, $s1
		move $s0, $v0
		move $v1, $s0
		lw $v0, 4($s2)
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
	.globl Base_get
Base_get:
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
		li $s0, 0
		sw $s0, 4($s1)
		lw $v0, 4($s1)
		move $s0, $v0
		li $s1, 30
		add $v0, $s0, $s1
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
	.globl Derived_set
Derived_set:
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
		move $s1, $a1
		li $s0, 1
		move $s0, $s0
Derived_set_L1:
		li $s3, 3
		sle $v0, $s0, $s3
		move $s3, $v0
		beqz $s3, Derived_set_L2
		move $a0, $s0
		jal _print
		li $s3, 1
		add $v0, $s0, $s3
		move $s3, $v0
		move $s0, $s3
		li $s3, 1
		sub $v0, $s1, $s3
		move $s3, $v0
		move $s1, $s3
		b Derived_set_L1
Derived_set_L2:
		move $a0, $s1
		jal _print
		li $s0, 4
		mul $v0, $s1, $s0
		move $s0, $v0
		sw $s0, 4($s2)
		lw $v0, 4($s2)
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
	.globl Derived_shortCircuit
Derived_shortCircuit:
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
		li $s0, 20
		add $v0, $s0, 1
		move $s0, $v0
		mul $v0, $s0, 4
		move $s2, $v0
		move $a0, $s2
		jal _halloc
		move $s3, $v0
		sw $s0, 0($s3)
		li $s4, 0
		li $s5, 4
		sub $v0, $s2, 4
		move $s2, $v0
Derived_shortCircuit_L1:
		sle $v0, $s5, $s2
		move $s0, $v0
		beqz $s0, Derived_shortCircuit_L2
		add $v0, $s3, $s5
		move $s0, $v0
		sw $s4, 0($s0)
		add $v0, $s5, 4
		move $s5, $v0
		b Derived_shortCircuit_L1
Derived_shortCircuit_L2:
		move $s3, $s3
		li $s5, 2
		mul $v0, $s5, 4
		move $s2, $v0
		add $v0, $s2, 4
		move $s2, $v0
		add $v0, $s2, $s3
		move $s2, $v0
		li $s0, 11
		sw $s0, 0($s2)
		li $s0, 0
		beqz $s0, Derived_shortCircuit_L5
		li $s2, 1
		lw $v0, 0($s1)
		move $s6, $v0
		lw $v0, 8($s6)
		move $s6, $v0
		li $s7, 99
		move $a0, $s1
		move $a1, $s7
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
		move $v0, $s6
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
		move $s1, $v0
		sub $v0, $s2, $s1
		move $s4, $v0
		move $s5, $s4
		b Derived_shortCircuit_L6
Derived_shortCircuit_L5:
		move $s5, $s0
Derived_shortCircuit_L6:
		beqz $s5, Derived_shortCircuit_L3
		li $s6, 999
		move $a0, $s6
		jal _print
		b Derived_shortCircuit_L4
Derived_shortCircuit_L3:
		li $s0, 2
		mul $v0, $s0, 4
		move $s0, $v0
		add $v0, $s0, 4
		move $s0, $v0
		add $v0, $s3, $s0
		move $s0, $v0
		lw $v0, 0($s0)
		move $s7, $v0
		move $a0, $s7
		jal _print
		lw $v0, 0($s3)
		move $s0, $v0
		sub $v0, $s0, 1
		move $s0, $v0
		move $a0, $s0
		jal _print
Derived_shortCircuit_L4:
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
	.globl Derived_printInt
Derived_printInt:
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
		li $s0, 20
		move $a0, $s0
		jal _halloc
		move $s3, $v0
		la $s4, Derived_set
		sw $s4, 16($s3)
		la $s4, Derived_shortCircuit
		sw $s4, 12($s3)
		la $s4, Derived_printInt
		sw $s4, 8($s3)
		la $s4, Derived_set
		sw $s4, 4($s3)
		la $s4, Base_get
		sw $s4, 0($s3)
		sw $s3, 0($s1)
		move $s1, $s1
		move $s3, $s1
		lw $v0, 0($s3)
		move $s2, $v0
		lw $v0, 4($s2)
		move $s2, $v0
		li $s4, 16
		move $a0, $s4
		jal _halloc
		move $s5, $v0
		li $s6, 0
		sw $s6, 0($s5)
		sw $s6, 4($s5)
		sw $s6, 8($s5)
		sw $s6, 12($s5)
		li $s4, 8
		move $a0, $s4
		jal _halloc
		move $s6, $v0
		la $s7, Base_set
		sw $s7, 4($s6)
		la $s7, Base_get
		sw $s7, 0($s6)
		sw $s6, 0($s5)
		lw $v0, 0($s5)
		move $s7, $v0
		lw $v0, 0($s7)
		move $s7, $v0
		move $a0, $s5
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
		move $v0, $s7
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
		move $s6, $v0
		move $a0, $s3
		move $a1, $s6
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
		move $a0, $s0
		jal _print
		lw $v0, 0($s1)
		move $s4, $v0
		lw $v0, 12($s4)
		move $s4, $v0
		move $a0, $s1
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
		move $s7, $v0
		move $v1, $s7
		li $s4, 1
		move $v0, $s4
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
