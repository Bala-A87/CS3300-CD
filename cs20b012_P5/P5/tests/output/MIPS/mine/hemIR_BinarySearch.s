
	.text
	.globl main
main:
		sw $fp, 0($sp)
		sw $ra, -4($sp)
		move $fp, $sp
		subu $sp, $sp, 48
		li $s0, 24
		move $a0, $s0
		jal _halloc
		move $s0, $v0
		move $s0, $s0
		li $s1, 12
		move $a0, $s1
		jal _halloc
		move $s1, $v0
		move $s1, $s1
		la $s2, BS_Div
		sw $s2, 8($s0)
		la $s2, BS_Print
		sw $s2, 16($s0)
		la $s2, BS_Init
		sw $s2, 20($s0)
		la $s2, BS_Start
		sw $s2, 0($s0)
		la $s2, BS_Search
		sw $s2, 4($s0)
		la $s2, BS_Compare
		sw $s2, 12($s0)
		li $s2, 8
		move $s2, $s2
MAIN_L0:
		li $s3, 11
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
		li $s2, 20
		li $s3, 0
		add $v0, $s2, $s3
		move $s2, $v0
		move $a0, $s0
		move $a1, $s2
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
	.globl BS_Start
BS_Start:
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
		move $s2, $a0
		move $s1, $a1
		li $s0, 0
		move $v1, $s0
		li $s0, 0
		move $v1, $s0
		move $s0, $s2
		lw $v0, 0($s0)
		move $s3, $v0
		lw $v0, 20($s3)
		move $s3, $v0
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
		move $s0, $v0
		move $v1, $s0
		move $s0, $s2
		lw $v0, 0($s0)
		move $s1, $v0
		lw $v0, 16($s1)
		move $s1, $v0
		move $a0, $s0
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
		move $v0, $s1
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
		move $v1, $s0
		move $s0, $s2
		lw $v0, 0($s0)
		move $s1, $v0
		lw $v0, 4($s1)
		move $s1, $v0
		li $s3, 8
		move $a0, $s0
		move $a1, $s3
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
		move $v0, $s1
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
		beqz $s0, BS_Start_L2
		li $s0, 1
		li $s1, 0
		add $v0, $s0, $s1
		move $s0, $v0
		move $a0, $s0
		jal _print
		b BS_Start_L3
BS_Start_L2:
		li $s0, 0
		li $s1, 0
		add $v0, $s0, $s1
		move $s0, $v0
		move $a0, $s0
		jal _print
BS_Start_L3:
		move $s0, $s2
		lw $v0, 0($s0)
		move $s1, $v0
		lw $v0, 4($s1)
		move $s1, $v0
		li $s3, 19
		move $a0, $s0
		move $a1, $s3
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
		move $v0, $s1
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
		beqz $s0, BS_Start_L4
		li $s0, 1
		li $s1, 0
		add $v0, $s0, $s1
		move $s0, $v0
		move $a0, $s0
		jal _print
		b BS_Start_L5
BS_Start_L4:
		li $s0, 0
		li $s1, 0
		add $v0, $s0, $s1
		move $s0, $v0
		move $a0, $s0
		jal _print
BS_Start_L5:
		move $s0, $s2
		lw $v0, 0($s0)
		move $s1, $v0
		lw $v0, 4($s1)
		move $s1, $v0
		li $s3, 20
		move $a0, $s0
		move $a1, $s3
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
		move $v0, $s1
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
		beqz $s0, BS_Start_L6
		li $s0, 1
		li $s1, 0
		add $v0, $s0, $s1
		move $s0, $v0
		move $a0, $s0
		jal _print
		b BS_Start_L7
BS_Start_L6:
		li $s0, 0
		li $s1, 0
		add $v0, $s0, $s1
		move $s0, $v0
		move $a0, $s0
		jal _print
BS_Start_L7:
		move $s0, $s2
		lw $v0, 0($s0)
		move $s1, $v0
		lw $v0, 4($s1)
		move $s1, $v0
		li $s3, 21
		move $a0, $s0
		move $a1, $s3
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
		move $v0, $s1
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
		beqz $s0, BS_Start_L8
		li $s0, 1
		li $s1, 0
		add $v0, $s0, $s1
		move $s0, $v0
		move $a0, $s0
		jal _print
		b BS_Start_L9
BS_Start_L8:
		li $s0, 0
		li $s1, 0
		add $v0, $s0, $s1
		move $s0, $v0
		move $a0, $s0
		jal _print
BS_Start_L9:
		move $s0, $s2
		lw $v0, 0($s0)
		move $s1, $v0
		lw $v0, 4($s1)
		move $s1, $v0
		li $s3, 37
		move $a0, $s0
		move $a1, $s3
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
		move $v0, $s1
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
		beqz $s0, BS_Start_L10
		li $s0, 1
		li $s1, 0
		add $v0, $s0, $s1
		move $s0, $v0
		move $a0, $s0
		jal _print
		b BS_Start_L11
BS_Start_L10:
		li $s0, 0
		li $s1, 0
		add $v0, $s0, $s1
		move $s0, $v0
		move $a0, $s0
		jal _print
BS_Start_L11:
		move $s0, $s2
		lw $v0, 0($s0)
		move $s1, $v0
		lw $v0, 4($s1)
		move $s1, $v0
		li $s3, 38
		move $a0, $s0
		move $a1, $s3
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
		move $v0, $s1
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
		beqz $s0, BS_Start_L12
		li $s0, 1
		li $s1, 0
		add $v0, $s0, $s1
		move $s0, $v0
		move $a0, $s0
		jal _print
		b BS_Start_L13
BS_Start_L12:
		li $s0, 0
		li $s1, 0
		add $v0, $s0, $s1
		move $s0, $v0
		move $a0, $s0
		jal _print
BS_Start_L13:
		move $s0, $s2
		lw $v0, 0($s0)
		move $s1, $v0
		lw $v0, 4($s1)
		move $s1, $v0
		li $s3, 39
		move $a0, $s0
		move $a1, $s3
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
		move $v0, $s1
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
		beqz $s0, BS_Start_L14
		li $s0, 1
		li $s1, 0
		add $v0, $s0, $s1
		move $s0, $v0
		move $a0, $s0
		jal _print
		b BS_Start_L15
BS_Start_L14:
		li $s0, 0
		li $s1, 0
		add $v0, $s0, $s1
		move $s0, $v0
		move $a0, $s0
		jal _print
BS_Start_L15:
		move $s0, $s2
		lw $v0, 0($s0)
		move $s1, $v0
		lw $v0, 4($s1)
		move $s1, $v0
		li $s2, 50
		move $a0, $s0
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
		move $v0, $s1
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
		beqz $s0, BS_Start_L16
		li $s0, 1
		li $s1, 0
		add $v0, $s0, $s1
		move $s0, $v0
		move $a0, $s0
		jal _print
		b BS_Start_L17
BS_Start_L16:
		li $s0, 0
		li $s1, 0
		add $v0, $s0, $s1
		move $s0, $v0
		move $a0, $s0
		jal _print
BS_Start_L17:
		li $s0, 999
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
	.globl BS_Search
BS_Search:
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
		move $s2, $a1
		li $s0, 0
		move $v1, $s0
		li $s0, 0
		move $v1, $s0
		li $s0, 0
		move $v1, $s0
		li $s0, 0
		move $v1, $s0
		li $s0, 0
		move $v1, $s0
		li $s0, 0
		move $v1, $s0
		li $s0, 0
		move $v1, $s0
		li $s0, 0
		move $s0, $s0
		li $s3, 0
		move $v1, $s3
		lw $v0, 4($s1)
		move $s3, $v0
		lw $v0, 0($s3)
		move $s3, $v0
		li $s4, 4
		div $v0, $s3, $s4
		move $s3, $v0
		move $s3, $s3
		li $s4, 1
		sub $v0, $s3, $s4
		move $s4, $v0
		move $s3, $s4
		li $s4, 0
		move $s4, $s4
		li $s5, 1
		move $s5, $s5
BS_Search_L18:
		beqz $s5, BS_Search_L19
		add $v0, $s4, $s3
		move $s6, $v0
		move $s6, $s6
		move $s7, $s1
		lw $v0, 0($s7)
		move $t0, $v0
		lw $v0, 8($t0)
		move $t0, $v0
		move $a0, $s7
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
		move $v0, $t0
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
		move $s6, $s7
		lw $v0, 4($s1)
		move $s7, $v0
		li $t0, 4
		mul $v0, $s6, $t0
		move $t0, $v0
		lw $v0, 0($s7)
		move $t1, $v0
		li $t2, 1
		li $t3, 1
		sub $v0, $t1, $t3
		move $t1, $v0
		sle $v0, $s6, $t1
		move $t1, $v0
		sub $v0, $t2, $t1
		move $t1, $v0
		beqz $t1, BS_Search_L20
BS_Search_L20:
		li $t1, 4
		add $v0, $t0, $t1
		move $t0, $v0
		add $v0, $s7, $t0
		move $s7, $v0
		lw $v0, 0($s7)
		move $s7, $v0
		move $s0, $s7
		li $s7, 1
		sub $v0, $s0, $s7
		move $s7, $v0
		sle $v0, $s2, $s7
		move $s7, $v0
		beqz $s7, BS_Search_L21
		li $s7, 1
		sub $v0, $s6, $s7
		move $s7, $v0
		move $s3, $s7
		b BS_Search_L22
BS_Search_L21:
		li $s7, 1
		add $v0, $s6, $s7
		move $s6, $v0
		move $s4, $s6
BS_Search_L22:
		move $s6, $s1
		lw $v0, 0($s6)
		move $s7, $v0
		lw $v0, 12($s7)
		move $s7, $v0
		move $a0, $s6
		move $a1, $s0
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
		beqz $s6, BS_Search_L23
		li $s6, 0
		move $s5, $s6
		b BS_Search_L24
BS_Search_L23:
		li $s6, 1
		move $s5, $s6
BS_Search_L24:
		li $s6, 1
		sub $v0, $s4, $s6
		move $s6, $v0
		sle $v0, $s3, $s6
		move $s6, $v0
		beqz $s6, BS_Search_L25
		li $s6, 0
		move $s5, $s6
		b BS_Search_L26
BS_Search_L25:
		li $s6, 0
		move $v1, $s6
BS_Search_L26:
		b BS_Search_L18
BS_Search_L19:
		move $s1, $s1
		lw $v0, 0($s1)
		move $s3, $v0
		lw $v0, 12($s3)
		move $s3, $v0
		move $a0, $s1
		move $a1, $s0
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
		move $s0, $v0
		beqz $s0, BS_Search_L27
		li $s0, 1
		move $s0, $s0
		b BS_Search_L28
BS_Search_L27:
		li $s1, 0
		move $s0, $s1
BS_Search_L28:
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
	.globl BS_Div
BS_Div:
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
		li $s0, 0
		move $v1, $s0
		li $s0, 0
		move $v1, $s0
		li $s0, 0
		move $v1, $s0
		li $s0, 0
		move $s0, $s0
		li $s2, 0
		move $s2, $s2
		li $s3, 1
		sub $v0, $s1, $s3
		move $s1, $v0
		move $s1, $s1
BS_Div_L29:
		li $s3, 0
		move $s3, $s3
		sle $v0, $s2, $s1
		move $s4, $v0
		beqz $s4, BS_Div_L31
		sne $v0, $s2, $s1
		move $s4, $v0
		beqz $s4, BS_Div_L31
		li $s4, 1
		move $s3, $s4
BS_Div_L31:
		beqz $s3, BS_Div_L30
		li $s3, 1
		add $v0, $s0, $s3
		move $s3, $v0
		move $s0, $s3
		li $s3, 2
		add $v0, $s2, $s3
		move $s3, $v0
		move $s2, $s3
		b BS_Div_L29
BS_Div_L30:
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
	.globl BS_Compare
BS_Compare:
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
		move $s2, $a1
		move $s1, $a2
		li $s0, 0
		move $v1, $s0
		li $s0, 0
		move $v1, $s0
		li $s0, 0
		move $v1, $s0
		li $s0, 1
		add $v0, $s1, $s0
		move $s0, $v0
		move $s0, $s0
		li $s3, 1
		sub $v0, $s1, $s3
		move $s1, $v0
		sle $v0, $s2, $s1
		move $s1, $v0
		beqz $s1, BS_Compare_L32
		li $s1, 0
		move $s1, $s1
		b BS_Compare_L33
BS_Compare_L32:
		li $s3, 1
		li $s4, 1
		sub $v0, $s0, $s4
		move $s0, $v0
		sle $v0, $s2, $s0
		move $s0, $v0
		sub $v0, $s3, $s0
		move $s0, $v0
		beqz $s0, BS_Compare_L34
		li $s0, 0
		move $s1, $s0
		b BS_Compare_L35
BS_Compare_L34:
		li $s0, 1
		move $s1, $s0
BS_Compare_L35:
BS_Compare_L33:
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
		addu $sp, $sp, 40
		j $ra

	.text
	.globl BS_Print
BS_Print:
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
		move $v1, $s0
		li $s0, 1
		move $s0, $s0
BS_Print_L36:
		li $s2, 0
		move $s2, $s2
		lw $v0, 8($s1)
		move $s3, $v0
		sle $v0, $s0, $s3
		move $s3, $v0
		beqz $s3, BS_Print_L38
		lw $v0, 8($s1)
		move $s3, $v0
		sne $v0, $s0, $s3
		move $s3, $v0
		beqz $s3, BS_Print_L38
		li $s3, 1
		move $s2, $s3
BS_Print_L38:
		beqz $s2, BS_Print_L37
		lw $v0, 4($s1)
		move $s2, $v0
		li $s3, 4
		mul $v0, $s0, $s3
		move $s3, $v0
		lw $v0, 0($s2)
		move $s4, $v0
		li $s5, 1
		li $s6, 1
		sub $v0, $s4, $s6
		move $s4, $v0
		sle $v0, $s0, $s4
		move $s4, $v0
		sub $v0, $s5, $s4
		move $s4, $v0
		beqz $s4, BS_Print_L39
BS_Print_L39:
		li $s4, 4
		add $v0, $s3, $s4
		move $s3, $v0
		add $v0, $s2, $s3
		move $s2, $v0
		lw $v0, 0($s2)
		move $s2, $v0
		move $a0, $s2
		jal _print
		li $s2, 1
		add $v0, $s0, $s2
		move $s2, $v0
		move $s0, $s2
		b BS_Print_L36
BS_Print_L37:
		li $s0, 9999
		li $s1, 0
		add $v0, $s0, $s1
		move $s0, $v0
		move $a0, $s0
		jal _print
		li $s0, 0
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
	.globl BS_Init
BS_Init:
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
		li $s0, 0
		move $v1, $s0
		li $s0, 0
		move $v1, $s0
		li $s0, 0
		move $v1, $s0
		li $s0, 0
		move $v1, $s0
		sw $s1, 8($s2)
		li $s0, 1
		add $v0, $s1, $s0
		move $s0, $v0
		li $s3, 4
		mul $v0, $s0, $s3
		move $s0, $v0
		move $a0, $s0
		jal _halloc
		move $s0, $v0
		move $s0, $s0
		li $s3, 4
		move $s3, $s3
BS_Init_L40:
		li $s4, 1
		add $v0, $s1, $s4
		move $s4, $v0
		li $s5, 4
		mul $v0, $s4, $s5
		move $s4, $v0
		li $s5, 1
		sub $v0, $s4, $s5
		move $s4, $v0
		sle $v0, $s3, $s4
		move $s4, $v0
		beqz $s4, BS_Init_L41
		add $v0, $s0, $s3
		move $s4, $v0
		li $s5, 0
		sw $s5, 0($s4)
		li $s4, 4
		add $v0, $s3, $s4
		move $s4, $v0
		move $s3, $s4
		b BS_Init_L40
BS_Init_L41:
		li $s3, 4
		mul $v0, $s1, $s3
		move $s1, $v0
		sw $s1, 0($s0)
		sw $s0, 4($s2)
		li $s0, 0
		li $s1, 0
		lw $v0, 4($s2)
		move $s3, $v0
		li $s4, 4
		mul $v0, $s0, $s4
		move $s0, $v0
		lw $v0, 0($s3)
		move $s4, $v0
		li $s5, 1
		li $s6, 1
		sub $v0, $s4, $s6
		move $s4, $v0
		sle $v0, $s0, $s4
		move $s4, $v0
		sub $v0, $s5, $s4
		move $s4, $v0
		beqz $s4, BS_Init_L42
BS_Init_L42:
		li $s4, 4
		add $v0, $s0, $s4
		move $s0, $v0
		add $v0, $s3, $s0
		move $s0, $v0
		sw $s1, 0($s0)
		li $s0, 1
		move $s0, $s0
		lw $v0, 8($s2)
		move $s1, $v0
		li $s3, 1
		add $v0, $s1, $s3
		move $s1, $v0
		move $s1, $s1
BS_Init_L43:
		lw $v0, 8($s2)
		move $s3, $v0
		li $s4, 1
		sub $v0, $s3, $s4
		move $s3, $v0
		sle $v0, $s0, $s3
		move $s3, $v0
		beqz $s3, BS_Init_L44
		li $s3, 2
		mul $v0, $s3, $s0
		move $s3, $v0
		move $s3, $s3
		li $s4, 3
		sub $v0, $s1, $s4
		move $s4, $v0
		move $s4, $s4
		add $v0, $s3, $s4
		move $s3, $v0
		lw $v0, 4($s2)
		move $s4, $v0
		li $s5, 4
		mul $v0, $s0, $s5
		move $s5, $v0
		lw $v0, 0($s4)
		move $s6, $v0
		li $s7, 1
		li $t0, 1
		sub $v0, $s6, $t0
		move $s6, $v0
		sle $v0, $s5, $s6
		move $s6, $v0
		sub $v0, $s7, $s6
		move $s6, $v0
		beqz $s6, BS_Init_L45
BS_Init_L45:
		li $s6, 4
		add $v0, $s5, $s6
		move $s5, $v0
		add $v0, $s4, $s5
		move $s4, $v0
		sw $s3, 0($s4)
		li $s3, 1
		add $v0, $s0, $s3
		move $s3, $v0
		move $s0, $s3
		li $s3, 1
		sub $v0, $s1, $s3
		move $s3, $v0
		move $s1, $s3
		b BS_Init_L43
BS_Init_L44:
		li $s0, 0
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
