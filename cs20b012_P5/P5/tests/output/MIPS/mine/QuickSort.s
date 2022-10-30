
	.text
	.globl main
main:
		sw $fp, 0($sp)
		sw $ra, -4($sp)
		move $fp, $sp
		subu $sp, $sp, 48
		li $v1, 16
		move $s0, $v1
		move $a0, $s0
		jal _halloc
		move $s0, $v0
		move $s0, $s0
		li $v1, 12
		move $s1, $v1
		move $a0, $s1
		jal _halloc
		move $s1, $v0
		move $s1, $s1
		la $s2, QS_Init
		sw $s2, 12($s0)
		la $s2, QS_Print
		sw $s2, 8($s0)
		la $s2, QS_Sort
		sw $s2, 4($s0)
		la $s2, QS_Start
		sw $s2, 0($s0)
		li $v1, 4
		move $s2, $v1
		move $s2, $s2
L0:
		li $v1, 11
		move $s3, $v1
		sle $v0, $s2, $s3
		move $s3, $v0
		beqz $s3, L1
		add $v0, $s1, $s2
		move $s3, $v0
		li $v1, 0
		move $s4, $v1
		sw $s4, 0($s3)
		li $v1, 4
		move $s4, $v1
		add $v0, $s2, $s4
		move $s4, $v0
		move $s2, $s4
		b L0
L1:
		sw $s0, 0($s1)
		move $s1, $s1
		lw $s2, 0($s1)
		lw $s2, 0($s2)
		li $v1, 10
		move $s0, $v1
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
		move $a0, $s1
		move $a1, $s0
		move $v0, $s2
		jalr $v0
		lw $t0, -8($fp)
		lw $t1, -12($fp)
		lw $t2, -16($fp)
		lw $t3, -20($fp)
		lw $t4, -24($fp)
		lw $t5, -28($fp)
		lw $t6, -32($fp)
		lw $t7, -36($fp)
		lw $t8, -40($fp)
		lw $t9, -44($fp)
		move $s0, $v0
		move $a0, $s0
		jal _print
		lw $ra, -4($fp)
		addu $sp, $sp, 48
		j $ra

	.text
	.globl QS_Start
QS_Start:
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
		move $s0, $a1
		move $s2, $s1
		lw $s3, 0($s2)
		lw $s3, 12($s3)
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
		move $a0, $s2
		move $a1, $s0
		move $v0, $s3
		jalr $v0
		lw $t0, -40($fp)
		lw $t1, -44($fp)
		lw $t2, -48($fp)
		lw $t3, -52($fp)
		lw $t4, -56($fp)
		lw $t5, -60($fp)
		lw $t6, -64($fp)
		lw $t7, -68($fp)
		lw $t8, -72($fp)
		lw $t9, -76($fp)
		move $s3, $v0
		move $v1, $s3
		move $s3, $s1
		lw $s2, 0($s3)
		lw $s2, 8($s2)
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
		move $a0, $s3
		move $v0, $s2
		jalr $v0
		lw $t0, -40($fp)
		lw $t1, -44($fp)
		lw $t2, -48($fp)
		lw $t3, -52($fp)
		lw $t4, -56($fp)
		lw $t5, -60($fp)
		lw $t6, -64($fp)
		lw $t7, -68($fp)
		lw $t8, -72($fp)
		lw $t9, -76($fp)
		move $s2, $v0
		move $v1, $s2
		li $v1, 9999
		move $s2, $v1
		move $a0, $s2
		jal _print
		lw $s2, 8($s1)
		li $v1, 1
		move $s3, $v1
		sub $v0, $s2, $s3
		move $s3, $v0
		move $s3, $s3
		move $s2, $s1
		lw $s0, 0($s2)
		lw $s0, 4($s0)
		li $v1, 0
		move $s4, $v1
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
		move $a0, $s2
		move $a1, $s4
		move $a2, $s3
		move $v0, $s0
		jalr $v0
		lw $t0, -40($fp)
		lw $t1, -44($fp)
		lw $t2, -48($fp)
		lw $t3, -52($fp)
		lw $t4, -56($fp)
		lw $t5, -60($fp)
		lw $t6, -64($fp)
		lw $t7, -68($fp)
		lw $t8, -72($fp)
		lw $t9, -76($fp)
		move $s4, $v0
		move $s3, $s4
		move $s1, $s1
		lw $s4, 0($s1)
		lw $s4, 8($s4)
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
		move $a0, $s1
		move $v0, $s4
		jalr $v0
		lw $t0, -40($fp)
		lw $t1, -44($fp)
		lw $t2, -48($fp)
		lw $t3, -52($fp)
		lw $t4, -56($fp)
		lw $t5, -60($fp)
		lw $t6, -64($fp)
		lw $t7, -68($fp)
		lw $t8, -72($fp)
		lw $t9, -76($fp)
		move $s4, $v0
		move $s3, $s4
		li $v1, 0
		move $s4, $v1
		move $v0, $s4
		lw $s0, -8($fp)
		lw $s1, -12($fp)
		lw $s2, -16($fp)
		lw $s3, -20($fp)
		lw $s4, -24($fp)
		lw $s5, -28($fp)
		lw $s6, -32($fp)
		lw $s7, -36($fp)
		lw $ra, -4($fp)
		lw $fp, 0($fp)
		addu $sp, $sp, 80
		j $ra

	.text
	.globl QS_Sort
QS_Sort:
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
		move $s0, $a1
		move $s2, $a2
		li $v1, 0
		move $s3, $v1
		move $s3, $s3
		li $v1, 1
		move $s4, $v1
		sub $v0, $s2, $s4
		move $s4, $v0
		move $s4, $s4
		sle $v0, $s0, $s4
		move $s4, $v0
		beqz $s4, L2
		lw $v1, 4($s1)
		li $v1, 4
		move $s4, $v1
		mul $v0, $s2, $s4
		move $s4, $v0
		move $s4, $s4
		lw $s5, 4($s1)
		lw $s6, 0($s5)
		li $v1, 1
		move $s7, $v1
		sub $v0, $s6, $s7
		move $s7, $v0
		move $s7, $s7
		li $v1, 1
		move $s6, $v1
		sle $v0, $s4, $s7
		move $s7, $v0
		sub $v0, $s6, $s7
		move $s7, $v0
		beqz $s7, L4
L4:
		li $v1, 4
		move $s7, $v1
		add $v0, $s4, $s7
		move $s7, $v0
		add $v0, $s5, $s7
		move $s7, $v0
		lw $s7, 0($s7)
		move $s7, $s7
		li $v1, 1
		move $s5, $v1
		sub $v0, $s0, $s5
		move $s5, $v0
		move $s5, $s5
		move $s4, $s2
		li $v1, 1
		move $s6, $v1
		move $s6, $s6
L5:
		beqz $s6, L6
		li $v1, 1
		move $t0, $v1
		move $t0, $t0
L7:
		beqz $t0, L8
		li $v1, 1
		move $t1, $v1
		add $v0, $s5, $t1
		move $t1, $v0
		move $s5, $t1
		lw $v1, 4($s1)
		li $v1, 4
		move $t1, $v1
		mul $v0, $s5, $t1
		move $t1, $v0
		move $t1, $t1
		lw $t2, 4($s1)
		lw $t3, 0($t2)
		li $v1, 1
		move $t4, $v1
		sub $v0, $t3, $t4
		move $t4, $v0
		move $t4, $t4
		li $v1, 1
		move $t3, $v1
		sle $v0, $t1, $t4
		move $t4, $v0
		sub $v0, $t3, $t4
		move $t4, $v0
		beqz $t4, L9
L9:
		li $v1, 4
		move $t4, $v1
		add $v0, $t1, $t4
		move $t4, $v0
		add $v0, $t2, $t4
		move $t4, $v0
		lw $t4, 0($t4)
		move $t4, $t4
		li $v1, 1
		move $t2, $v1
		sub $v0, $s7, $t2
		move $t2, $v0
		move $t2, $t2
		li $v1, 1
		move $t1, $v1
		sle $v0, $t4, $t2
		move $t2, $v0
		sub $v0, $t1, $t2
		move $t2, $v0
		beqz $t2, L10
		li $v1, 0
		move $t2, $v1
		move $t0, $t2
		b L11
L10:
		li $v1, 1
		move $t2, $v1
		move $t0, $t2
L11:
		b L7
L8:
		li $v1, 1
		move $t2, $v1
		move $t0, $t2
L12:
		beqz $t0, L13
		li $v1, 1
		move $t2, $v1
		sub $v0, $s4, $t2
		move $t2, $v0
		move $s4, $t2
		lw $v1, 4($s1)
		li $v1, 4
		move $t2, $v1
		mul $v0, $s4, $t2
		move $t2, $v0
		move $t2, $t2
		lw $t1, 4($s1)
		lw $t3, 0($t1)
		li $v1, 1
		move $t5, $v1
		sub $v0, $t3, $t5
		move $t5, $v0
		move $t5, $t5
		li $v1, 1
		move $t3, $v1
		sle $v0, $t2, $t5
		move $t5, $v0
		sub $v0, $t3, $t5
		move $t5, $v0
		beqz $t5, L14
L14:
		li $v1, 4
		move $t5, $v1
		add $v0, $t2, $t5
		move $t5, $v0
		add $v0, $t1, $t5
		move $t5, $v0
		lw $t5, 0($t5)
		move $t4, $t5
		li $v1, 1
		move $t5, $v1
		sub $v0, $t4, $t5
		move $t5, $v0
		move $t5, $t5
		li $v1, 1
		move $t4, $v1
		sle $v0, $s7, $t5
		move $t5, $v0
		sub $v0, $t4, $t5
		move $t5, $v0
		beqz $t5, L15
		li $v1, 0
		move $t5, $v1
		move $t0, $t5
		b L16
L15:
		li $v1, 1
		move $t5, $v1
		move $t0, $t5
L16:
		b L12
L13:
		lw $v1, 4($s1)
		li $v1, 4
		move $t0, $v1
		mul $v0, $s5, $t0
		move $t0, $v0
		move $t0, $t0
		lw $t5, 4($s1)
		lw $t4, 0($t5)
		li $v1, 1
		move $t1, $v1
		sub $v0, $t4, $t1
		move $t1, $v0
		move $t1, $t1
		li $v1, 1
		move $t4, $v1
		sle $v0, $t0, $t1
		move $t1, $v0
		sub $v0, $t4, $t1
		move $t1, $v0
		beqz $t1, L17
L17:
		li $v1, 4
		move $t1, $v1
		add $v0, $t0, $t1
		move $t1, $v0
		add $v0, $t5, $t1
		move $t1, $v0
		lw $t1, 0($t1)
		move $s3, $t1
		li $v1, 1
		move $t1, $v1
		li $v1, 4
		move $t5, $v1
		mul $v0, $t1, $t5
		move $t5, $v0
		move $t5, $t5
		add $v0, $s1, $t5
		move $t1, $v0
		lw $v1, 0($t1)
		li $v1, 4
		move $t1, $v1
		mul $v0, $s5, $t1
		move $t1, $v0
		move $t1, $t1
		li $v1, 1
		move $t0, $v1
		li $v1, 4
		move $t4, $v1
		mul $v0, $t0, $t4
		move $t4, $v0
		move $t5, $t4
		add $v0, $s1, $t5
		move $t5, $v0
		lw $t5, 0($t5)
		lw $t4, 0($t5)
		li $v1, 1
		move $t0, $v1
		sub $v0, $t4, $t0
		move $t0, $v0
		move $t0, $t0
		li $v1, 1
		move $t4, $v1
		sle $v0, $t1, $t0
		move $t0, $v0
		sub $v0, $t4, $t0
		move $t0, $v0
		beqz $t0, L18
L18:
		li $v1, 4
		move $t0, $v1
		add $v0, $t1, $t0
		move $t0, $v0
		add $v0, $t5, $t0
		move $t0, $v0
		lw $v1, 4($s1)
		li $v1, 4
		move $t5, $v1
		mul $v0, $s4, $t5
		move $t5, $v0
		move $t5, $t5
		lw $t1, 4($s1)
		lw $t4, 0($t1)
		li $v1, 1
		move $t2, $v1
		sub $v0, $t4, $t2
		move $t2, $v0
		move $t2, $t2
		li $v1, 1
		move $t4, $v1
		sle $v0, $t5, $t2
		move $t2, $v0
		sub $v0, $t4, $t2
		move $t2, $v0
		beqz $t2, L19
L19:
		li $v1, 4
		move $t2, $v1
		add $v0, $t5, $t2
		move $t2, $v0
		add $v0, $t1, $t2
		move $t2, $v0
		lw $t2, 0($t2)
		sw $t2, 0($t0)
		li $v1, 1
		move $t2, $v1
		li $v1, 4
		move $t0, $v1
		mul $v0, $t2, $t0
		move $t0, $v0
		move $t0, $t0
		add $v0, $s1, $t0
		move $t2, $v0
		lw $v1, 0($t2)
		li $v1, 4
		move $t2, $v1
		mul $v0, $s4, $t2
		move $t2, $v0
		move $t2, $t2
		li $v1, 1
		move $t1, $v1
		li $v1, 4
		move $t5, $v1
		mul $v0, $t1, $t5
		move $t5, $v0
		move $t0, $t5
		add $v0, $s1, $t0
		move $t0, $v0
		lw $t0, 0($t0)
		lw $t5, 0($t0)
		li $v1, 1
		move $t1, $v1
		sub $v0, $t5, $t1
		move $t1, $v0
		move $t1, $t1
		li $v1, 1
		move $t5, $v1
		sle $v0, $t2, $t1
		move $t1, $v0
		sub $v0, $t5, $t1
		move $t1, $v0
		beqz $t1, L20
L20:
		li $v1, 4
		move $t1, $v1
		add $v0, $t2, $t1
		move $t1, $v0
		add $v0, $t0, $t1
		move $t1, $v0
		sw $s3, 0($t1)
		sle $v0, $s4, $s5
		move $t1, $v0
		beqz $t1, L21
		li $v1, 0
		move $t1, $v1
		move $s6, $t1
		b L22
L21:
		li $v1, 1
		move $t1, $v1
		move $s6, $t1
L22:
		b L5
L6:
		li $v1, 1
		move $s6, $v1
		li $v1, 4
		move $s7, $v1
		mul $v0, $s6, $s7
		move $s7, $v0
		move $s7, $s7
		add $v0, $s1, $s7
		move $s6, $v0
		lw $v1, 0($s6)
		li $v1, 4
		move $s6, $v1
		mul $v0, $s4, $s6
		move $s6, $v0
		move $s6, $s6
		li $v1, 1
		move $s4, $v1
		li $v1, 4
		move $t1, $v1
		mul $v0, $s4, $t1
		move $t1, $v0
		move $s7, $t1
		add $v0, $s1, $s7
		move $s7, $v0
		lw $s7, 0($s7)
		lw $t1, 0($s7)
		li $v1, 1
		move $s4, $v1
		sub $v0, $t1, $s4
		move $s4, $v0
		move $s4, $s4
		li $v1, 1
		move $t1, $v1
		sle $v0, $s6, $s4
		move $s4, $v0
		sub $v0, $t1, $s4
		move $s4, $v0
		beqz $s4, L23
L23:
		li $v1, 4
		move $s4, $v1
		add $v0, $s6, $s4
		move $s4, $v0
		add $v0, $s7, $s4
		move $s4, $v0
		lw $v1, 4($s1)
		li $v1, 4
		move $s7, $v1
		mul $v0, $s5, $s7
		move $s7, $v0
		move $s7, $s7
		lw $s6, 4($s1)
		lw $t1, 0($s6)
		li $v1, 1
		move $t0, $v1
		sub $v0, $t1, $t0
		move $t0, $v0
		move $t0, $t0
		li $v1, 1
		move $t1, $v1
		sle $v0, $s7, $t0
		move $t0, $v0
		sub $v0, $t1, $t0
		move $t0, $v0
		beqz $t0, L24
L24:
		li $v1, 4
		move $t0, $v1
		add $v0, $s7, $t0
		move $t0, $v0
		add $v0, $s6, $t0
		move $t0, $v0
		lw $t0, 0($t0)
		sw $t0, 0($s4)
		li $v1, 1
		move $t0, $v1
		li $v1, 4
		move $s4, $v1
		mul $v0, $t0, $s4
		move $s4, $v0
		move $s4, $s4
		add $v0, $s1, $s4
		move $t0, $v0
		lw $v1, 0($t0)
		li $v1, 4
		move $t0, $v1
		mul $v0, $s5, $t0
		move $t0, $v0
		move $t0, $t0
		li $v1, 1
		move $s6, $v1
		li $v1, 4
		move $s7, $v1
		mul $v0, $s6, $s7
		move $s7, $v0
		move $s4, $s7
		add $v0, $s1, $s4
		move $s4, $v0
		lw $s4, 0($s4)
		lw $s7, 0($s4)
		li $v1, 1
		move $s6, $v1
		sub $v0, $s7, $s6
		move $s6, $v0
		move $s6, $s6
		li $v1, 1
		move $s7, $v1
		sle $v0, $t0, $s6
		move $s6, $v0
		sub $v0, $s7, $s6
		move $s6, $v0
		beqz $s6, L25
L25:
		li $v1, 4
		move $s6, $v1
		add $v0, $t0, $s6
		move $s6, $v0
		add $v0, $s4, $s6
		move $s6, $v0
		lw $v1, 4($s1)
		li $v1, 4
		move $s4, $v1
		mul $v0, $s2, $s4
		move $s4, $v0
		move $s4, $s4
		lw $t0, 4($s1)
		lw $s7, 0($t0)
		li $v1, 1
		move $t1, $v1
		sub $v0, $s7, $t1
		move $t1, $v0
		move $t1, $t1
		li $v1, 1
		move $s7, $v1
		sle $v0, $s4, $t1
		move $t1, $v0
		sub $v0, $s7, $t1
		move $t1, $v0
		beqz $t1, L26
L26:
		li $v1, 4
		move $t1, $v1
		add $v0, $s4, $t1
		move $t1, $v0
		add $v0, $t0, $t1
		move $t1, $v0
		lw $t1, 0($t1)
		sw $t1, 0($s6)
		li $v1, 1
		move $t1, $v1
		li $v1, 4
		move $s6, $v1
		mul $v0, $t1, $s6
		move $s6, $v0
		move $s6, $s6
		add $v0, $s1, $s6
		move $t1, $v0
		lw $v1, 0($t1)
		li $v1, 4
		move $t1, $v1
		mul $v0, $s2, $t1
		move $t1, $v0
		move $t1, $t1
		li $v1, 1
		move $t0, $v1
		li $v1, 4
		move $s4, $v1
		mul $v0, $t0, $s4
		move $s4, $v0
		move $s6, $s4
		add $v0, $s1, $s6
		move $s6, $v0
		lw $s6, 0($s6)
		lw $s4, 0($s6)
		li $v1, 1
		move $t0, $v1
		sub $v0, $s4, $t0
		move $t0, $v0
		move $t0, $t0
		li $v1, 1
		move $s4, $v1
		sle $v0, $t1, $t0
		move $t0, $v0
		sub $v0, $s4, $t0
		move $t0, $v0
		beqz $t0, L27
L27:
		li $v1, 4
		move $t0, $v1
		add $v0, $t1, $t0
		move $t0, $v0
		add $v0, $s6, $t0
		move $t0, $v0
		sw $s3, 0($t0)
		move $t0, $s1
		lw $s3, 0($t0)
		lw $s3, 4($s3)
		li $v1, 1
		move $s6, $v1
		sub $v0, $s5, $s6
		move $s6, $v0
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
		move $a0, $t0
		move $a1, $s0
		move $a2, $s6
		move $v0, $s3
		jalr $v0
		lw $t0, -40($fp)
		lw $t1, -44($fp)
		lw $t2, -48($fp)
		lw $t3, -52($fp)
		lw $t4, -56($fp)
		lw $t5, -60($fp)
		lw $t6, -64($fp)
		lw $t7, -68($fp)
		lw $t8, -72($fp)
		lw $t9, -76($fp)
		move $s6, $v0
		move $v1, $s6
		move $s1, $s1
		lw $s6, 0($s1)
		lw $s6, 4($s6)
		li $v1, 1
		move $s3, $v1
		add $v0, $s5, $s3
		move $s3, $v0
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
		move $a0, $s1
		move $a1, $s3
		move $a2, $s2
		move $v0, $s6
		jalr $v0
		lw $t0, -40($fp)
		lw $t1, -44($fp)
		lw $t2, -48($fp)
		lw $t3, -52($fp)
		lw $t4, -56($fp)
		lw $t5, -60($fp)
		lw $t6, -64($fp)
		lw $t7, -68($fp)
		lw $t8, -72($fp)
		lw $t9, -76($fp)
		move $s3, $v0
		move $v1, $s3
		b L3
L2:
		li $v1, 0
		move $s3, $v1
		move $v1, $s3
L3:
		li $v1, 0
		move $s3, $v1
		move $v0, $s3
		lw $s0, -8($fp)
		lw $s1, -12($fp)
		lw $s2, -16($fp)
		lw $s3, -20($fp)
		lw $s4, -24($fp)
		lw $s5, -28($fp)
		lw $s6, -32($fp)
		lw $s7, -36($fp)
		lw $ra, -4($fp)
		lw $fp, 0($fp)
		addu $sp, $sp, 80
		j $ra

	.text
	.globl QS_Print
QS_Print:
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
		li $v1, 0
		move $s1, $v1
		move $s1, $s1
L28:
		lw $s2, 8($s0)
		li $v1, 1
		move $s3, $v1
		sub $v0, $s2, $s3
		move $s3, $v0
		move $s3, $s3
		sle $v0, $s1, $s3
		move $s3, $v0
		beqz $s3, L29
		lw $v1, 4($s0)
		li $v1, 4
		move $s3, $v1
		mul $v0, $s1, $s3
		move $s3, $v0
		move $s3, $s3
		lw $s2, 4($s0)
		lw $s4, 0($s2)
		li $v1, 1
		move $s5, $v1
		sub $v0, $s4, $s5
		move $s5, $v0
		move $s5, $s5
		li $v1, 1
		move $s4, $v1
		sle $v0, $s3, $s5
		move $s5, $v0
		sub $v0, $s4, $s5
		move $s5, $v0
		beqz $s5, L30
L30:
		li $v1, 4
		move $s5, $v1
		add $v0, $s3, $s5
		move $s5, $v0
		add $v0, $s2, $s5
		move $s5, $v0
		lw $s5, 0($s5)
		move $a0, $s5
		jal _print
		li $v1, 1
		move $s5, $v1
		add $v0, $s1, $s5
		move $s5, $v0
		move $s1, $s5
		b L28
L29:
		li $v1, 0
		move $s1, $v1
		move $v0, $s1
		lw $s0, -8($fp)
		lw $s1, -12($fp)
		lw $s2, -16($fp)
		lw $s3, -20($fp)
		lw $s4, -24($fp)
		lw $s5, -28($fp)
		lw $s6, -32($fp)
		lw $s7, -36($fp)
		lw $ra, -4($fp)
		lw $fp, 0($fp)
		addu $sp, $sp, 40
		j $ra

	.text
	.globl QS_Init
QS_Init:
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
		move $s0, $a1
		sw $s0, 8($s1)
		li $v1, 1
		move $s2, $v1
		add $v0, $s0, $s2
		move $s2, $v0
		li $v1, 4
		move $s3, $v1
		mul $v0, $s2, $s3
		move $s3, $v0
		move $a0, $s3
		jal _halloc
		move $s3, $v0
		move $s3, $s3
		li $v1, 4
		move $s2, $v1
		move $s2, $s2
L31:
		li $v1, 1
		move $s4, $v1
		add $v0, $s0, $s4
		move $s4, $v0
		li $v1, 4
		move $s5, $v1
		mul $v0, $s4, $s5
		move $s5, $v0
		li $v1, 1
		move $s4, $v1
		sub $v0, $s5, $s4
		move $s4, $v0
		sle $v0, $s2, $s4
		move $s4, $v0
		beqz $s4, L32
		add $v0, $s3, $s2
		move $s4, $v0
		li $v1, 0
		move $s5, $v1
		sw $s5, 0($s4)
		li $v1, 4
		move $s5, $v1
		add $v0, $s2, $s5
		move $s5, $v0
		move $s2, $s5
		b L31
L32:
		li $v1, 4
		move $s2, $v1
		mul $v0, $s0, $s2
		move $s2, $v0
		sw $s2, 0($s3)
		sw $s3, 4($s1)
		li $v1, 1
		move $s3, $v1
		li $v1, 4
		move $s2, $v1
		mul $v0, $s3, $s2
		move $s2, $v0
		move $s2, $s2
		add $v0, $s1, $s2
		move $s3, $v0
		lw $v1, 0($s3)
		li $v1, 0
		move $s3, $v1
		li $v1, 4
		move $s0, $v1
		mul $v0, $s3, $s0
		move $s0, $v0
		move $s0, $s0
		li $v1, 1
		move $s3, $v1
		li $v1, 4
		move $s5, $v1
		mul $v0, $s3, $s5
		move $s5, $v0
		move $s2, $s5
		add $v0, $s1, $s2
		move $s2, $v0
		lw $s2, 0($s2)
		lw $s5, 0($s2)
		li $v1, 1
		move $s3, $v1
		sub $v0, $s5, $s3
		move $s3, $v0
		move $s3, $s3
		li $v1, 1
		move $s5, $v1
		sle $v0, $s0, $s3
		move $s3, $v0
		sub $v0, $s5, $s3
		move $s3, $v0
		beqz $s3, L33
L33:
		li $v1, 4
		move $s3, $v1
		add $v0, $s0, $s3
		move $s3, $v0
		add $v0, $s2, $s3
		move $s3, $v0
		li $v1, 20
		move $s2, $v1
		sw $s2, 0($s3)
		li $v1, 1
		move $s2, $v1
		li $v1, 4
		move $s3, $v1
		mul $v0, $s2, $s3
		move $s3, $v0
		move $s3, $s3
		add $v0, $s1, $s3
		move $s2, $v0
		lw $v1, 0($s2)
		li $v1, 1
		move $s2, $v1
		li $v1, 4
		move $s0, $v1
		mul $v0, $s2, $s0
		move $s0, $v0
		move $s0, $s0
		li $v1, 1
		move $s2, $v1
		li $v1, 4
		move $s5, $v1
		mul $v0, $s2, $s5
		move $s5, $v0
		move $s3, $s5
		add $v0, $s1, $s3
		move $s3, $v0
		lw $s3, 0($s3)
		lw $s5, 0($s3)
		li $v1, 1
		move $s2, $v1
		sub $v0, $s5, $s2
		move $s2, $v0
		move $s2, $s2
		li $v1, 1
		move $s5, $v1
		sle $v0, $s0, $s2
		move $s2, $v0
		sub $v0, $s5, $s2
		move $s2, $v0
		beqz $s2, L34
L34:
		li $v1, 4
		move $s2, $v1
		add $v0, $s0, $s2
		move $s2, $v0
		add $v0, $s3, $s2
		move $s2, $v0
		li $v1, 7
		move $s3, $v1
		sw $s3, 0($s2)
		li $v1, 1
		move $s3, $v1
		li $v1, 4
		move $s2, $v1
		mul $v0, $s3, $s2
		move $s2, $v0
		move $s2, $s2
		add $v0, $s1, $s2
		move $s3, $v0
		lw $v1, 0($s3)
		li $v1, 2
		move $s3, $v1
		li $v1, 4
		move $s0, $v1
		mul $v0, $s3, $s0
		move $s0, $v0
		move $s0, $s0
		li $v1, 1
		move $s3, $v1
		li $v1, 4
		move $s5, $v1
		mul $v0, $s3, $s5
		move $s5, $v0
		move $s2, $s5
		add $v0, $s1, $s2
		move $s2, $v0
		lw $s2, 0($s2)
		lw $s5, 0($s2)
		li $v1, 1
		move $s3, $v1
		sub $v0, $s5, $s3
		move $s3, $v0
		move $s3, $s3
		li $v1, 1
		move $s5, $v1
		sle $v0, $s0, $s3
		move $s3, $v0
		sub $v0, $s5, $s3
		move $s3, $v0
		beqz $s3, L35
L35:
		li $v1, 4
		move $s3, $v1
		add $v0, $s0, $s3
		move $s3, $v0
		add $v0, $s2, $s3
		move $s3, $v0
		li $v1, 12
		move $s2, $v1
		sw $s2, 0($s3)
		li $v1, 1
		move $s2, $v1
		li $v1, 4
		move $s3, $v1
		mul $v0, $s2, $s3
		move $s3, $v0
		move $s3, $s3
		add $v0, $s1, $s3
		move $s2, $v0
		lw $v1, 0($s2)
		li $v1, 3
		move $s2, $v1
		li $v1, 4
		move $s0, $v1
		mul $v0, $s2, $s0
		move $s0, $v0
		move $s0, $s0
		li $v1, 1
		move $s2, $v1
		li $v1, 4
		move $s5, $v1
		mul $v0, $s2, $s5
		move $s5, $v0
		move $s3, $s5
		add $v0, $s1, $s3
		move $s3, $v0
		lw $s3, 0($s3)
		lw $s5, 0($s3)
		li $v1, 1
		move $s2, $v1
		sub $v0, $s5, $s2
		move $s2, $v0
		move $s2, $s2
		li $v1, 1
		move $s5, $v1
		sle $v0, $s0, $s2
		move $s2, $v0
		sub $v0, $s5, $s2
		move $s2, $v0
		beqz $s2, L36
L36:
		li $v1, 4
		move $s2, $v1
		add $v0, $s0, $s2
		move $s2, $v0
		add $v0, $s3, $s2
		move $s2, $v0
		li $v1, 18
		move $s3, $v1
		sw $s3, 0($s2)
		li $v1, 1
		move $s3, $v1
		li $v1, 4
		move $s2, $v1
		mul $v0, $s3, $s2
		move $s2, $v0
		move $s2, $s2
		add $v0, $s1, $s2
		move $s3, $v0
		lw $v1, 0($s3)
		li $v1, 4
		move $s3, $v1
		li $v1, 4
		move $s0, $v1
		mul $v0, $s3, $s0
		move $s0, $v0
		move $s0, $s0
		li $v1, 1
		move $s3, $v1
		li $v1, 4
		move $s5, $v1
		mul $v0, $s3, $s5
		move $s5, $v0
		move $s2, $s5
		add $v0, $s1, $s2
		move $s2, $v0
		lw $s2, 0($s2)
		lw $s5, 0($s2)
		li $v1, 1
		move $s3, $v1
		sub $v0, $s5, $s3
		move $s3, $v0
		move $s3, $s3
		li $v1, 1
		move $s5, $v1
		sle $v0, $s0, $s3
		move $s3, $v0
		sub $v0, $s5, $s3
		move $s3, $v0
		beqz $s3, L37
L37:
		li $v1, 4
		move $s3, $v1
		add $v0, $s0, $s3
		move $s3, $v0
		add $v0, $s2, $s3
		move $s3, $v0
		li $v1, 2
		move $s2, $v1
		sw $s2, 0($s3)
		li $v1, 1
		move $s2, $v1
		li $v1, 4
		move $s3, $v1
		mul $v0, $s2, $s3
		move $s3, $v0
		move $s3, $s3
		add $v0, $s1, $s3
		move $s2, $v0
		lw $v1, 0($s2)
		li $v1, 5
		move $s2, $v1
		li $v1, 4
		move $s0, $v1
		mul $v0, $s2, $s0
		move $s0, $v0
		move $s0, $s0
		li $v1, 1
		move $s2, $v1
		li $v1, 4
		move $s5, $v1
		mul $v0, $s2, $s5
		move $s5, $v0
		move $s3, $s5
		add $v0, $s1, $s3
		move $s3, $v0
		lw $s3, 0($s3)
		lw $s5, 0($s3)
		li $v1, 1
		move $s2, $v1
		sub $v0, $s5, $s2
		move $s2, $v0
		move $s2, $s2
		li $v1, 1
		move $s5, $v1
		sle $v0, $s0, $s2
		move $s2, $v0
		sub $v0, $s5, $s2
		move $s2, $v0
		beqz $s2, L38
L38:
		li $v1, 4
		move $s2, $v1
		add $v0, $s0, $s2
		move $s2, $v0
		add $v0, $s3, $s2
		move $s2, $v0
		li $v1, 11
		move $s3, $v1
		sw $s3, 0($s2)
		li $v1, 1
		move $s3, $v1
		li $v1, 4
		move $s2, $v1
		mul $v0, $s3, $s2
		move $s2, $v0
		move $s2, $s2
		add $v0, $s1, $s2
		move $s3, $v0
		lw $v1, 0($s3)
		li $v1, 6
		move $s3, $v1
		li $v1, 4
		move $s0, $v1
		mul $v0, $s3, $s0
		move $s0, $v0
		move $s0, $s0
		li $v1, 1
		move $s3, $v1
		li $v1, 4
		move $s5, $v1
		mul $v0, $s3, $s5
		move $s5, $v0
		move $s2, $s5
		add $v0, $s1, $s2
		move $s2, $v0
		lw $s2, 0($s2)
		lw $s5, 0($s2)
		li $v1, 1
		move $s3, $v1
		sub $v0, $s5, $s3
		move $s3, $v0
		move $s3, $s3
		li $v1, 1
		move $s5, $v1
		sle $v0, $s0, $s3
		move $s3, $v0
		sub $v0, $s5, $s3
		move $s3, $v0
		beqz $s3, L39
L39:
		li $v1, 4
		move $s3, $v1
		add $v0, $s0, $s3
		move $s3, $v0
		add $v0, $s2, $s3
		move $s3, $v0
		li $v1, 6
		move $s2, $v1
		sw $s2, 0($s3)
		li $v1, 1
		move $s2, $v1
		li $v1, 4
		move $s3, $v1
		mul $v0, $s2, $s3
		move $s3, $v0
		move $s3, $s3
		add $v0, $s1, $s3
		move $s2, $v0
		lw $v1, 0($s2)
		li $v1, 7
		move $s2, $v1
		li $v1, 4
		move $s0, $v1
		mul $v0, $s2, $s0
		move $s0, $v0
		move $s0, $s0
		li $v1, 1
		move $s2, $v1
		li $v1, 4
		move $s5, $v1
		mul $v0, $s2, $s5
		move $s5, $v0
		move $s3, $s5
		add $v0, $s1, $s3
		move $s3, $v0
		lw $s3, 0($s3)
		lw $s5, 0($s3)
		li $v1, 1
		move $s2, $v1
		sub $v0, $s5, $s2
		move $s2, $v0
		move $s2, $s2
		li $v1, 1
		move $s5, $v1
		sle $v0, $s0, $s2
		move $s2, $v0
		sub $v0, $s5, $s2
		move $s2, $v0
		beqz $s2, L40
L40:
		li $v1, 4
		move $s2, $v1
		add $v0, $s0, $s2
		move $s2, $v0
		add $v0, $s3, $s2
		move $s2, $v0
		li $v1, 9
		move $s3, $v1
		sw $s3, 0($s2)
		li $v1, 1
		move $s3, $v1
		li $v1, 4
		move $s2, $v1
		mul $v0, $s3, $s2
		move $s2, $v0
		move $s2, $s2
		add $v0, $s1, $s2
		move $s3, $v0
		lw $v1, 0($s3)
		li $v1, 8
		move $s3, $v1
		li $v1, 4
		move $s0, $v1
		mul $v0, $s3, $s0
		move $s0, $v0
		move $s0, $s0
		li $v1, 1
		move $s3, $v1
		li $v1, 4
		move $s5, $v1
		mul $v0, $s3, $s5
		move $s5, $v0
		move $s2, $s5
		add $v0, $s1, $s2
		move $s2, $v0
		lw $s2, 0($s2)
		lw $s5, 0($s2)
		li $v1, 1
		move $s3, $v1
		sub $v0, $s5, $s3
		move $s3, $v0
		move $s3, $s3
		li $v1, 1
		move $s5, $v1
		sle $v0, $s0, $s3
		move $s3, $v0
		sub $v0, $s5, $s3
		move $s3, $v0
		beqz $s3, L41
L41:
		li $v1, 4
		move $s3, $v1
		add $v0, $s0, $s3
		move $s3, $v0
		add $v0, $s2, $s3
		move $s3, $v0
		li $v1, 19
		move $s2, $v1
		sw $s2, 0($s3)
		li $v1, 1
		move $s2, $v1
		li $v1, 4
		move $s3, $v1
		mul $v0, $s2, $s3
		move $s3, $v0
		move $s3, $s3
		add $v0, $s1, $s3
		move $s2, $v0
		lw $v1, 0($s2)
		li $v1, 9
		move $s2, $v1
		li $v1, 4
		move $s0, $v1
		mul $v0, $s2, $s0
		move $s0, $v0
		move $s0, $s0
		li $v1, 1
		move $s2, $v1
		li $v1, 4
		move $s5, $v1
		mul $v0, $s2, $s5
		move $s5, $v0
		move $s3, $s5
		add $v0, $s1, $s3
		move $s3, $v0
		lw $s3, 0($s3)
		lw $s1, 0($s3)
		li $v1, 1
		move $s5, $v1
		sub $v0, $s1, $s5
		move $s5, $v0
		move $s5, $s5
		li $v1, 1
		move $s1, $v1
		sle $v0, $s0, $s5
		move $s5, $v0
		sub $v0, $s1, $s5
		move $s5, $v0
		beqz $s5, L42
L42:
		li $v1, 4
		move $s5, $v1
		add $v0, $s0, $s5
		move $s5, $v0
		add $v0, $s3, $s5
		move $s5, $v0
		li $v1, 5
		move $s3, $v1
		sw $s3, 0($s5)
		li $v1, 0
		move $s3, $v1
		move $v0, $s3
		lw $s0, -8($fp)
		lw $s1, -12($fp)
		lw $s2, -16($fp)
		lw $s3, -20($fp)
		lw $s4, -24($fp)
		lw $s5, -28($fp)
		lw $s6, -32($fp)
		lw $s7, -36($fp)
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
