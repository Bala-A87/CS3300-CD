
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
		la $s2, BBS_Init
		sw $s2, 12($s0)
		la $s2, BBS_Print
		sw $s2, 8($s0)
		la $s2, BBS_Sort
		sw $s2, 4($s0)
		la $s2, BBS_Start
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
	.globl BBS_Start
BBS_Start:
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
		li $v1, 99999
		move $s2, $v1
		move $a0, $s2
		jal _print
		move $s2, $s1
		lw $s3, 0($s2)
		lw $s3, 4($s3)
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
		move $s1, $s1
		lw $s3, 0($s1)
		lw $s3, 8($s3)
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
	.globl BBS_Sort
BBS_Sort:
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
		lw $s1, 8($s0)
		li $v1, 1
		move $s2, $v1
		sub $v0, $s1, $s2
		move $s2, $v0
		move $s2, $s2
		li $v1, 0
		move $s1, $v1
		li $v1, 1
		move $s3, $v1
		sub $v0, $s1, $s3
		move $s3, $v0
		move $s3, $s3
L2:
		li $v1, 1
		move $s1, $v1
		sub $v0, $s2, $s1
		move $s1, $v0
		sle $v0, $s3, $s1
		move $s1, $v0
		beqz $s1, L3
		li $v1, 1
		move $s1, $v1
		move $s1, $s1
L4:
		sle $v0, $s1, $s2
		move $s4, $v0
		beqz $s4, L5
		li $v1, 1
		move $s4, $v1
		sub $v0, $s1, $s4
		move $s4, $v0
		move $s4, $s4
		lw $v1, 4($s0)
		li $v1, 4
		move $s5, $v1
		mul $v0, $s4, $s5
		move $s5, $v0
		move $s5, $s5
		lw $s4, 4($s0)
		lw $s6, 0($s4)
		li $v1, 1
		move $s7, $v1
		li $v1, 1
		move $t0, $v1
		sub $v0, $s6, $t0
		move $t0, $v0
		sle $v0, $s5, $t0
		move $t0, $v0
		sub $v0, $s7, $t0
		move $t0, $v0
		beqz $t0, L6
L6:
		li $v1, 4
		move $t0, $v1
		add $v0, $s5, $t0
		move $t0, $v0
		add $v0, $s4, $t0
		move $t0, $v0
		lw $t0, 0($t0)
		move $t0, $t0
		lw $v1, 4($s0)
		li $v1, 4
		move $s4, $v1
		mul $v0, $s1, $s4
		move $s4, $v0
		move $s4, $s4
		lw $s5, 4($s0)
		lw $s7, 0($s5)
		li $v1, 1
		move $s6, $v1
		li $v1, 1
		move $t1, $v1
		sub $v0, $s7, $t1
		move $t1, $v0
		sle $v0, $s4, $t1
		move $t1, $v0
		sub $v0, $s6, $t1
		move $t1, $v0
		beqz $t1, L7
L7:
		li $v1, 4
		move $t1, $v1
		add $v0, $s4, $t1
		move $t1, $v0
		add $v0, $s5, $t1
		move $t1, $v0
		lw $t1, 0($t1)
		move $t1, $t1
		li $v1, 1
		move $s5, $v1
		sub $v0, $t0, $s5
		move $s5, $v0
		sle $v0, $t1, $s5
		move $s5, $v0
		beqz $s5, L8
		li $v1, 1
		move $s5, $v1
		sub $v0, $s1, $s5
		move $s5, $v0
		move $s5, $s5
		lw $v1, 4($s0)
		li $v1, 4
		move $t1, $v1
		mul $v0, $s5, $t1
		move $t1, $v0
		move $t1, $t1
		lw $t0, 4($s0)
		lw $s4, 0($t0)
		li $v1, 1
		move $s6, $v1
		li $v1, 1
		move $s7, $v1
		sub $v0, $s4, $s7
		move $s7, $v0
		sle $v0, $t1, $s7
		move $s7, $v0
		sub $v0, $s6, $s7
		move $s7, $v0
		beqz $s7, L10
L10:
		li $v1, 4
		move $s7, $v1
		add $v0, $t1, $s7
		move $s7, $v0
		add $v0, $t0, $s7
		move $s7, $v0
		lw $s7, 0($s7)
		move $s7, $s7
		li $v1, 1
		move $t0, $v1
		li $v1, 4
		move $t1, $v1
		mul $v0, $t0, $t1
		move $t1, $v0
		move $t1, $t1
		add $v0, $s0, $t1
		move $t0, $v0
		lw $v1, 0($t0)
		li $v1, 4
		move $t0, $v1
		mul $v0, $s5, $t0
		move $t0, $v0
		move $t0, $t0
		li $v1, 1
		move $s5, $v1
		li $v1, 4
		move $s6, $v1
		mul $v0, $s5, $s6
		move $s6, $v0
		move $t1, $s6
		add $v0, $s0, $t1
		move $t1, $v0
		lw $t1, 0($t1)
		lw $s6, 0($t1)
		li $v1, 1
		move $s5, $v1
		li $v1, 1
		move $s4, $v1
		sub $v0, $s6, $s4
		move $s4, $v0
		sle $v0, $t0, $s4
		move $s4, $v0
		sub $v0, $s5, $s4
		move $s4, $v0
		beqz $s4, L11
L11:
		li $v1, 4
		move $s4, $v1
		add $v0, $t0, $s4
		move $s4, $v0
		add $v0, $t1, $s4
		move $s4, $v0
		lw $v1, 4($s0)
		li $v1, 4
		move $t1, $v1
		mul $v0, $s1, $t1
		move $t1, $v0
		move $t1, $t1
		lw $t0, 4($s0)
		lw $s5, 0($t0)
		li $v1, 1
		move $s6, $v1
		li $v1, 1
		move $t2, $v1
		sub $v0, $s5, $t2
		move $t2, $v0
		sle $v0, $t1, $t2
		move $t2, $v0
		sub $v0, $s6, $t2
		move $t2, $v0
		beqz $t2, L12
L12:
		li $v1, 4
		move $t2, $v1
		add $v0, $t1, $t2
		move $t2, $v0
		add $v0, $t0, $t2
		move $t2, $v0
		lw $t2, 0($t2)
		sw $t2, 0($s4)
		li $v1, 1
		move $t2, $v1
		li $v1, 4
		move $s4, $v1
		mul $v0, $t2, $s4
		move $s4, $v0
		move $s4, $s4
		add $v0, $s0, $s4
		move $t2, $v0
		lw $v1, 0($t2)
		li $v1, 4
		move $t2, $v1
		mul $v0, $s1, $t2
		move $t2, $v0
		move $t2, $t2
		li $v1, 1
		move $t0, $v1
		li $v1, 4
		move $t1, $v1
		mul $v0, $t0, $t1
		move $t1, $v0
		move $s4, $t1
		add $v0, $s0, $s4
		move $s4, $v0
		lw $s4, 0($s4)
		lw $t1, 0($s4)
		li $v1, 1
		move $t0, $v1
		li $v1, 1
		move $s6, $v1
		sub $v0, $t1, $s6
		move $s6, $v0
		sle $v0, $t2, $s6
		move $s6, $v0
		sub $v0, $t0, $s6
		move $s6, $v0
		beqz $s6, L13
L13:
		li $v1, 4
		move $s6, $v1
		add $v0, $t2, $s6
		move $s6, $v0
		add $v0, $s4, $s6
		move $s6, $v0
		sw $s7, 0($s6)
		b L9
L8:
		li $v1, 0
		move $s6, $v1
		move $v1, $s6
L9:
		li $v1, 1
		move $s6, $v1
		add $v0, $s1, $s6
		move $s6, $v0
		move $s1, $s6
		b L4
L5:
		li $v1, 1
		move $s1, $v1
		sub $v0, $s2, $s1
		move $s1, $v0
		move $s2, $s1
		b L2
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
		addu $sp, $sp, 40
		j $ra

	.text
	.globl BBS_Print
BBS_Print:
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
L14:
		lw $s2, 8($s0)
		li $v1, 1
		move $s3, $v1
		sub $v0, $s2, $s3
		move $s3, $v0
		move $s3, $s3
		sle $v0, $s1, $s3
		move $s3, $v0
		beqz $s3, L15
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
		li $v1, 1
		move $s6, $v1
		sub $v0, $s4, $s6
		move $s6, $v0
		sle $v0, $s3, $s6
		move $s6, $v0
		sub $v0, $s5, $s6
		move $s6, $v0
		beqz $s6, L16
L16:
		li $v1, 4
		move $s6, $v1
		add $v0, $s3, $s6
		move $s6, $v0
		add $v0, $s2, $s6
		move $s6, $v0
		lw $s6, 0($s6)
		move $a0, $s6
		jal _print
		li $v1, 1
		move $s6, $v1
		add $v0, $s1, $s6
		move $s6, $v0
		move $s1, $s6
		b L14
L15:
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
	.globl BBS_Init
BBS_Init:
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
L17:
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
		beqz $s4, L18
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
		b L17
L18:
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
		li $v1, 1
		move $s4, $v1
		sub $v0, $s5, $s4
		move $s4, $v0
		sle $v0, $s0, $s4
		move $s4, $v0
		sub $v0, $s3, $s4
		move $s4, $v0
		beqz $s4, L19
L19:
		li $v1, 4
		move $s4, $v1
		add $v0, $s0, $s4
		move $s4, $v0
		add $v0, $s2, $s4
		move $s4, $v0
		li $v1, 20
		move $s2, $v1
		sw $s2, 0($s4)
		li $v1, 1
		move $s2, $v1
		li $v1, 4
		move $s4, $v1
		mul $v0, $s2, $s4
		move $s4, $v0
		move $s4, $s4
		add $v0, $s1, $s4
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
		move $s3, $v1
		mul $v0, $s2, $s3
		move $s3, $v0
		move $s4, $s3
		add $v0, $s1, $s4
		move $s4, $v0
		lw $s4, 0($s4)
		lw $s3, 0($s4)
		li $v1, 1
		move $s2, $v1
		li $v1, 1
		move $s5, $v1
		sub $v0, $s3, $s5
		move $s5, $v0
		sle $v0, $s0, $s5
		move $s5, $v0
		sub $v0, $s2, $s5
		move $s5, $v0
		beqz $s5, L20
L20:
		li $v1, 4
		move $s5, $v1
		add $v0, $s0, $s5
		move $s5, $v0
		add $v0, $s4, $s5
		move $s5, $v0
		li $v1, 7
		move $s4, $v1
		sw $s4, 0($s5)
		li $v1, 1
		move $s4, $v1
		li $v1, 4
		move $s5, $v1
		mul $v0, $s4, $s5
		move $s5, $v0
		move $s5, $s5
		add $v0, $s1, $s5
		move $s4, $v0
		lw $v1, 0($s4)
		li $v1, 2
		move $s4, $v1
		li $v1, 4
		move $s0, $v1
		mul $v0, $s4, $s0
		move $s0, $v0
		move $s0, $s0
		li $v1, 1
		move $s4, $v1
		li $v1, 4
		move $s2, $v1
		mul $v0, $s4, $s2
		move $s2, $v0
		move $s5, $s2
		add $v0, $s1, $s5
		move $s5, $v0
		lw $s5, 0($s5)
		lw $s2, 0($s5)
		li $v1, 1
		move $s4, $v1
		li $v1, 1
		move $s3, $v1
		sub $v0, $s2, $s3
		move $s3, $v0
		sle $v0, $s0, $s3
		move $s3, $v0
		sub $v0, $s4, $s3
		move $s3, $v0
		beqz $s3, L21
L21:
		li $v1, 4
		move $s3, $v1
		add $v0, $s0, $s3
		move $s3, $v0
		add $v0, $s5, $s3
		move $s3, $v0
		li $v1, 12
		move $s5, $v1
		sw $s5, 0($s3)
		li $v1, 1
		move $s5, $v1
		li $v1, 4
		move $s3, $v1
		mul $v0, $s5, $s3
		move $s3, $v0
		move $s3, $s3
		add $v0, $s1, $s3
		move $s5, $v0
		lw $v1, 0($s5)
		li $v1, 3
		move $s5, $v1
		li $v1, 4
		move $s0, $v1
		mul $v0, $s5, $s0
		move $s0, $v0
		move $s0, $s0
		li $v1, 1
		move $s5, $v1
		li $v1, 4
		move $s4, $v1
		mul $v0, $s5, $s4
		move $s4, $v0
		move $s3, $s4
		add $v0, $s1, $s3
		move $s3, $v0
		lw $s3, 0($s3)
		lw $s4, 0($s3)
		li $v1, 1
		move $s5, $v1
		li $v1, 1
		move $s2, $v1
		sub $v0, $s4, $s2
		move $s2, $v0
		sle $v0, $s0, $s2
		move $s2, $v0
		sub $v0, $s5, $s2
		move $s2, $v0
		beqz $s2, L22
L22:
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
		li $v1, 1
		move $s4, $v1
		sub $v0, $s5, $s4
		move $s4, $v0
		sle $v0, $s0, $s4
		move $s4, $v0
		sub $v0, $s3, $s4
		move $s4, $v0
		beqz $s4, L23
L23:
		li $v1, 4
		move $s4, $v1
		add $v0, $s0, $s4
		move $s4, $v0
		add $v0, $s2, $s4
		move $s4, $v0
		li $v1, 2
		move $s2, $v1
		sw $s2, 0($s4)
		li $v1, 1
		move $s2, $v1
		li $v1, 4
		move $s4, $v1
		mul $v0, $s2, $s4
		move $s4, $v0
		move $s4, $s4
		add $v0, $s1, $s4
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
		move $s3, $v1
		mul $v0, $s2, $s3
		move $s3, $v0
		move $s4, $s3
		add $v0, $s1, $s4
		move $s4, $v0
		lw $s4, 0($s4)
		lw $s3, 0($s4)
		li $v1, 1
		move $s2, $v1
		li $v1, 1
		move $s5, $v1
		sub $v0, $s3, $s5
		move $s5, $v0
		sle $v0, $s0, $s5
		move $s5, $v0
		sub $v0, $s2, $s5
		move $s5, $v0
		beqz $s5, L24
L24:
		li $v1, 4
		move $s5, $v1
		add $v0, $s0, $s5
		move $s5, $v0
		add $v0, $s4, $s5
		move $s5, $v0
		li $v1, 11
		move $s4, $v1
		sw $s4, 0($s5)
		li $v1, 1
		move $s4, $v1
		li $v1, 4
		move $s5, $v1
		mul $v0, $s4, $s5
		move $s5, $v0
		move $s5, $s5
		add $v0, $s1, $s5
		move $s4, $v0
		lw $v1, 0($s4)
		li $v1, 6
		move $s4, $v1
		li $v1, 4
		move $s0, $v1
		mul $v0, $s4, $s0
		move $s0, $v0
		move $s0, $s0
		li $v1, 1
		move $s4, $v1
		li $v1, 4
		move $s2, $v1
		mul $v0, $s4, $s2
		move $s2, $v0
		move $s5, $s2
		add $v0, $s1, $s5
		move $s5, $v0
		lw $s5, 0($s5)
		lw $s2, 0($s5)
		li $v1, 1
		move $s4, $v1
		li $v1, 1
		move $s3, $v1
		sub $v0, $s2, $s3
		move $s3, $v0
		sle $v0, $s0, $s3
		move $s3, $v0
		sub $v0, $s4, $s3
		move $s3, $v0
		beqz $s3, L25
L25:
		li $v1, 4
		move $s3, $v1
		add $v0, $s0, $s3
		move $s3, $v0
		add $v0, $s5, $s3
		move $s3, $v0
		li $v1, 6
		move $s5, $v1
		sw $s5, 0($s3)
		li $v1, 1
		move $s5, $v1
		li $v1, 4
		move $s3, $v1
		mul $v0, $s5, $s3
		move $s3, $v0
		move $s3, $s3
		add $v0, $s1, $s3
		move $s5, $v0
		lw $v1, 0($s5)
		li $v1, 7
		move $s5, $v1
		li $v1, 4
		move $s0, $v1
		mul $v0, $s5, $s0
		move $s0, $v0
		move $s0, $s0
		li $v1, 1
		move $s5, $v1
		li $v1, 4
		move $s4, $v1
		mul $v0, $s5, $s4
		move $s4, $v0
		move $s3, $s4
		add $v0, $s1, $s3
		move $s3, $v0
		lw $s3, 0($s3)
		lw $s4, 0($s3)
		li $v1, 1
		move $s5, $v1
		li $v1, 1
		move $s2, $v1
		sub $v0, $s4, $s2
		move $s2, $v0
		sle $v0, $s0, $s2
		move $s2, $v0
		sub $v0, $s5, $s2
		move $s2, $v0
		beqz $s2, L26
L26:
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
		li $v1, 1
		move $s4, $v1
		sub $v0, $s5, $s4
		move $s4, $v0
		sle $v0, $s0, $s4
		move $s4, $v0
		sub $v0, $s3, $s4
		move $s4, $v0
		beqz $s4, L27
L27:
		li $v1, 4
		move $s4, $v1
		add $v0, $s0, $s4
		move $s4, $v0
		add $v0, $s2, $s4
		move $s4, $v0
		li $v1, 19
		move $s2, $v1
		sw $s2, 0($s4)
		li $v1, 1
		move $s2, $v1
		li $v1, 4
		move $s4, $v1
		mul $v0, $s2, $s4
		move $s4, $v0
		move $s4, $s4
		add $v0, $s1, $s4
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
		move $s3, $v1
		mul $v0, $s2, $s3
		move $s3, $v0
		move $s4, $s3
		add $v0, $s1, $s4
		move $s4, $v0
		lw $s4, 0($s4)
		lw $s1, 0($s4)
		li $v1, 1
		move $s3, $v1
		li $v1, 1
		move $s2, $v1
		sub $v0, $s1, $s2
		move $s2, $v0
		sle $v0, $s0, $s2
		move $s2, $v0
		sub $v0, $s3, $s2
		move $s2, $v0
		beqz $s2, L28
L28:
		li $v1, 4
		move $s2, $v1
		add $v0, $s0, $s2
		move $s2, $v0
		add $v0, $s4, $s2
		move $s2, $v0
		li $v1, 5
		move $s4, $v1
		sw $s4, 0($s2)
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
