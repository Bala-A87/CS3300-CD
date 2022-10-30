
	.text
	.globl main
main:
		sw $fp, 0($sp)
		sw $ra, -4($sp)
		move $fp, $sp
		subu $sp, $sp, 48
		li $s0, 16
		move $a0, $s0
		jal _halloc
		move $s0, $v0
		move $s0, $s0
		li $s1, 12
		move $a0, $s1
		jal _halloc
		move $s1, $v0
		move $s1, $s1
		la $s2, LS_Init
		sw $s2, 12($s0)
		la $s2, LS_Search
		sw $s2, 8($s0)
		la $s2, LS_Print
		sw $s2, 4($s0)
		la $s2, LS_Start
		sw $s2, 0($s0)
		li $s2, 4
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
		li $s2, 10
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
	.globl LS_Start
LS_Start:
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
		move $s0, $a1
		move $s1, $s2
		lw $v0, 0($s1)
		move $s3, $v0
		lw $v0, 12($s3)
		move $s3, $v0
		move $a0, $s1
		move $a1, $s0
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
		lw $v0, 4($s1)
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
		li $s0, 9999
		move $a0, $s0
		jal _print
		move $s0, $s2
		lw $v0, 0($s0)
		move $s1, $v0
		lw $v0, 8($s1)
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
		move $a0, $s0
		jal _print
		move $s0, $s2
		lw $v0, 0($s0)
		move $s1, $v0
		lw $v0, 8($s1)
		move $s1, $v0
		li $s3, 12
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
		move $a0, $s0
		jal _print
		move $s0, $s2
		lw $v0, 0($s0)
		move $s1, $v0
		lw $v0, 8($s1)
		move $s1, $v0
		li $s3, 17
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
		move $a0, $s0
		jal _print
		move $s0, $s2
		lw $v0, 0($s0)
		move $s1, $v0
		lw $v0, 8($s1)
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
		move $a0, $s0
		jal _print
		li $s0, 55
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
	.globl LS_Print
LS_Print:
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
		li $s0, 1
		move $s0, $s0
LS_Print_L2:
		lw $v0, 8($s1)
		move $s2, $v0
		li $s3, 1
		sub $v0, $s2, $s3
		move $s2, $v0
		sle $v0, $s0, $s2
		move $s2, $v0
		beqz $s2, LS_Print_L3
		lw $v0, 4($s1)
		move $v1, $v0
		li $s2, 4
		mul $v0, $s0, $s2
		move $s2, $v0
		move $s2, $s2
		lw $v0, 4($s1)
		move $s3, $v0
		lw $v0, 0($s3)
		move $s4, $v0
		li $s5, 1
		li $s6, 1
		sub $v0, $s4, $s6
		move $s4, $v0
		sle $v0, $s2, $s4
		move $s4, $v0
		sub $v0, $s5, $s4
		move $s4, $v0
		beqz $s4, LS_Print_L4
LS_Print_L4:
		li $s4, 4
		add $v0, $s2, $s4
		move $s2, $v0
		add $v0, $s3, $s2
		move $s2, $v0
		lw $v0, 0($s2)
		move $s2, $v0
		move $a0, $s2
		jal _print
		li $s2, 1
		add $v0, $s0, $s2
		move $s2, $v0
		move $s0, $s2
		b LS_Print_L2
LS_Print_L3:
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
	.globl LS_Search
LS_Search:
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
		move $s2, $a1
		li $s0, 1
		move $s0, $s0
		li $s3, 0
		move $v1, $s3
		li $s3, 0
		move $s3, $s3
LS_Search_L5:
		lw $v0, 8($s1)
		move $s4, $v0
		li $s5, 1
		sub $v0, $s4, $s5
		move $s4, $v0
		sle $v0, $s0, $s4
		move $s4, $v0
		beqz $s4, LS_Search_L6
		lw $v0, 4($s1)
		move $v1, $v0
		li $s4, 4
		mul $v0, $s0, $s4
		move $s4, $v0
		move $s4, $s4
		lw $v0, 4($s1)
		move $s5, $v0
		lw $v0, 0($s5)
		move $s6, $v0
		li $s7, 1
		li $t0, 1
		sub $v0, $s6, $t0
		move $s6, $v0
		sle $v0, $s4, $s6
		move $s6, $v0
		sub $v0, $s7, $s6
		move $s6, $v0
		beqz $s6, LS_Search_L7
LS_Search_L7:
		li $s6, 4
		add $v0, $s4, $s6
		move $s4, $v0
		add $v0, $s5, $s4
		move $s4, $v0
		lw $v0, 0($s4)
		move $s4, $v0
		move $s4, $s4
		li $s5, 1
		add $v0, $s2, $s5
		move $s5, $v0
		move $s5, $s5
		li $s6, 1
		sub $v0, $s2, $s6
		move $s6, $v0
		sle $v0, $s4, $s6
		move $s6, $v0
		beqz $s6, LS_Search_L8
		li $s6, 0
		move $v1, $s6
		b LS_Search_L9
LS_Search_L8:
		li $s6, 1
		li $s7, 1
		sub $v0, $s5, $s7
		move $s5, $v0
		sle $v0, $s4, $s5
		move $s4, $v0
		sub $v0, $s6, $s4
		move $s4, $v0
		beqz $s4, LS_Search_L10
		li $s4, 0
		move $v1, $s4
		b LS_Search_L11
LS_Search_L10:
		li $s4, 1
		move $v1, $s4
		li $s4, 1
		move $s3, $s4
		lw $v0, 8($s1)
		move $s4, $v0
		move $s0, $s4
LS_Search_L11:
LS_Search_L9:
		li $s4, 1
		add $v0, $s0, $s4
		move $s4, $v0
		move $s0, $s4
		b LS_Search_L5
LS_Search_L6:
		move $v0, $s3
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
	.globl LS_Init
LS_Init:
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
		li $s2, 1
		add $v0, $s0, $s2
		move $s2, $v0
		li $s3, 4
		mul $v0, $s2, $s3
		move $s2, $v0
		move $a0, $s2
		jal _halloc
		move $s2, $v0
		move $s2, $s2
		li $s3, 4
		move $s3, $s3
LS_Init_L12:
		li $s4, 1
		add $v0, $s0, $s4
		move $s4, $v0
		li $s5, 4
		mul $v0, $s4, $s5
		move $s4, $v0
		li $s5, 1
		sub $v0, $s4, $s5
		move $s4, $v0
		sle $v0, $s3, $s4
		move $s4, $v0
		beqz $s4, LS_Init_L13
		add $v0, $s2, $s3
		move $s4, $v0
		li $s5, 0
		sw $s5, 0($s4)
		li $s4, 4
		add $v0, $s3, $s4
		move $s4, $v0
		move $s3, $s4
		b LS_Init_L12
LS_Init_L13:
		li $s3, 4
		mul $v0, $s0, $s3
		move $s0, $v0
		sw $s0, 0($s2)
		sw $s2, 4($s1)
		li $s0, 1
		move $s0, $s0
		lw $v0, 8($s1)
		move $s2, $v0
		li $s3, 1
		add $v0, $s2, $s3
		move $s2, $v0
		move $s2, $s2
LS_Init_L14:
		lw $v0, 8($s1)
		move $s3, $v0
		li $s4, 1
		sub $v0, $s3, $s4
		move $s3, $v0
		sle $v0, $s0, $s3
		move $s3, $v0
		beqz $s3, LS_Init_L15
		li $s3, 2
		mul $v0, $s3, $s0
		move $s3, $v0
		move $s3, $s3
		li $s4, 3
		sub $v0, $s2, $s4
		move $s4, $v0
		move $s4, $s4
		li $s5, 1
		li $s6, 4
		mul $v0, $s5, $s6
		move $s5, $v0
		move $s5, $s5
		add $v0, $s1, $s5
		move $s6, $v0
		lw $v0, 0($s6)
		move $v1, $v0
		li $s6, 4
		mul $v0, $s0, $s6
		move $s6, $v0
		move $s6, $s6
		li $s7, 1
		li $t0, 4
		mul $v0, $s7, $t0
		move $s7, $v0
		move $s5, $s7
		add $v0, $s1, $s5
		move $s5, $v0
		lw $v0, 0($s5)
		move $s5, $v0
		lw $v0, 0($s5)
		move $s7, $v0
		li $t0, 1
		li $t1, 1
		sub $v0, $s7, $t1
		move $s7, $v0
		sle $v0, $s6, $s7
		move $s7, $v0
		sub $v0, $t0, $s7
		move $s7, $v0
		beqz $s7, LS_Init_L16
LS_Init_L16:
		li $s7, 4
		add $v0, $s6, $s7
		move $s6, $v0
		add $v0, $s5, $s6
		move $s5, $v0
		add $v0, $s3, $s4
		move $s3, $v0
		sw $s3, 0($s5)
		li $s3, 1
		add $v0, $s0, $s3
		move $s3, $v0
		move $s0, $s3
		li $s3, 1
		sub $v0, $s2, $s3
		move $s3, $v0
		move $s2, $s3
		b LS_Init_L14
LS_Init_L15:
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
