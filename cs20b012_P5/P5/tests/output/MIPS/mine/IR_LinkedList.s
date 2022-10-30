
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
		la $s2, LL_Start
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
	.globl Element_Init
Element_Init:
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
		move $s1, $a2
		move $s3, $a3
		sw $s0, 12($s2)
		sw $s1, 8($s2)
		sw $s3, 4($s2)
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
	.globl Element_GetAge
Element_GetAge:
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
		lw $v0, 12($s0)
		move $s1, $v0
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
	.globl Element_GetSalary
Element_GetSalary:
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
		lw $v0, 8($s0)
		move $s1, $v0
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
	.globl Element_GetMarried
Element_GetMarried:
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
		lw $v0, 4($s0)
		move $s1, $v0
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
	.globl Element_Equal
Element_Equal:
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
		li $s0, 1
		move $s0, $s0
		lw $v0, 0($s2)
		move $s3, $v0
		lw $v0, 16($s3)
		move $s3, $v0
		move $a0, $s2
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
		move $s4, $v0
		move $s4, $s4
		li $s5, 1
		lw $v0, 0($s1)
		move $s6, $v0
		lw $v0, 0($s6)
		move $s6, $v0
		lw $v0, 12($s1)
		move $s7, $v0
		move $a0, $s1
		move $a1, $s4
		move $a2, $s7
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
		move $s4, $v0
		sub $v0, $s5, $s4
		move $s3, $v0
		beqz $s3, Element_Equal_L1
		li $s3, 0
		move $s0, $s3
		b Element_Equal_L2
Element_Equal_L1:
		lw $v0, 0($s2)
		move $s3, $v0
		lw $v0, 12($s3)
		move $s3, $v0
		move $a0, $s2
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
		move $s4, $v0
		move $s4, $s4
		li $s5, 1
		lw $v0, 0($s1)
		move $s6, $v0
		lw $v0, 0($s6)
		move $s6, $v0
		lw $v0, 8($s1)
		move $s7, $v0
		move $a0, $s1
		move $a1, $s4
		move $a2, $s7
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
		move $s4, $v0
		sub $v0, $s5, $s4
		move $s3, $v0
		beqz $s3, Element_Equal_L3
		li $s3, 0
		move $s0, $s3
		b Element_Equal_L4
Element_Equal_L3:
		lw $v0, 4($s1)
		move $s7, $v0
		beqz $s7, Element_Equal_L5
		li $s1, 1
		lw $v0, 0($s2)
		move $s3, $v0
		lw $v0, 8($s3)
		move $s3, $v0
		move $a0, $s2
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
		move $s4, $v0
		sub $v0, $s1, $s4
		move $s1, $v0
		beqz $s1, Element_Equal_L7
		li $s4, 0
		move $s0, $s4
		b Element_Equal_L8
Element_Equal_L7:
		li $s3, 0
		move $v1, $s3
Element_Equal_L8:
		b Element_Equal_L6
Element_Equal_L5:
		lw $v0, 0($s2)
		move $s1, $v0
		lw $v0, 8($s1)
		move $s1, $v0
		move $a0, $s2
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
		move $s2, $v0
		beqz $s2, Element_Equal_L9
		li $s1, 0
		move $s0, $s1
		b Element_Equal_L10
Element_Equal_L9:
		li $s1, 0
		move $v1, $s1
Element_Equal_L10:
Element_Equal_L6:
Element_Equal_L4:
Element_Equal_L2:
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
	.globl Element_Compare
Element_Compare:
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
		li $s0, 1
		add $v0, $s1, $s0
		move $s0, $v0
		move $s0, $s0
		sle $v0, $s2, $s1
		move $s3, $v0
		beqz $s3, Element_Compare_L3
		sne $v0, $s2, $s1
		move $s1, $v0
		move $s1, $s1
		b Element_Compare_L4
Element_Compare_L3:
		move $s1, $s3
Element_Compare_L4:
		beqz $s1, Element_Compare_L1
		li $s1, 0
		move $s1, $s1
		b Element_Compare_L2
Element_Compare_L1:
		li $s3, 1
		li $s4, 1
		sub $v0, $s0, $s4
		move $s0, $v0
		sle $v0, $s2, $s0
		move $s0, $v0
		sub $v0, $s3, $s0
		move $s0, $v0
		beqz $s0, Element_Compare_L5
		li $s4, 0
		move $s1, $s4
		b Element_Compare_L6
Element_Compare_L5:
		li $s0, 1
		move $s1, $s0
Element_Compare_L6:
Element_Compare_L2:
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
	.globl List_Init
List_Init:
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
		li $s1, 1
		sw $s1, 4($s0)
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
	.globl List_InitNew
List_InitNew:
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
		move $s3, $a2
		move $s0, $a3
		sw $s0, 4($s2)
		sw $s1, 12($s2)
		sw $s3, 8($s2)
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
	.globl List_Insert
List_Insert:
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
		move $s0, $a0
		move $s1, $a1
		move $s2, $s0
		li $s0, 16
		move $a0, $s0
		jal _halloc
		move $s3, $v0
		li $s4, 0
		sw $s4, 0($s3)
		sw $s4, 4($s3)
		sw $s4, 8($s3)
		sw $s4, 12($s3)
		li $s0, 40
		move $a0, $s0
		jal _halloc
		move $s4, $v0
		la $s5, List_Init
		sw $s5, 36($s4)
		la $s5, List_InitNew
		sw $s5, 32($s4)
		la $s5, List_Insert
		sw $s5, 28($s4)
		la $s5, List_SetNext
		sw $s5, 24($s4)
		la $s5, List_Delete
		sw $s5, 20($s4)
		la $s5, List_Search
		sw $s5, 16($s4)
		la $s5, List_GetEnd
		sw $s5, 12($s4)
		la $s5, List_GetElem
		sw $s5, 8($s4)
		la $s5, List_GetNext
		sw $s5, 4($s4)
		la $s5, List_Print
		sw $s5, 0($s4)
		sw $s4, 0($s3)
		move $s3, $s3
		lw $v0, 0($s3)
		move $s0, $v0
		lw $v0, 32($s0)
		move $s0, $v0
		li $s4, 0
		move $a0, $s3
		move $a1, $s1
		move $a2, $s2
		move $a3, $s4
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
		move $s5, $v0
		move $v1, $s5
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
		addu $sp, $sp, 80
		j $ra

	.text
	.globl List_SetNext
List_SetNext:
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
		move $s1, $a1
		sw $s1, 8($s0)
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
	.globl List_Delete
List_Delete:
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
		move $s0, $a0
		move $s1, $a1
		move $s2, $s0
		li $s3, 0
		move $s3, $s3
		li $s4, 0
		li $s5, 1
		sub $v0, $s4, $s5
		move $s4, $v0
		move $s4, $s4
		move $s5, $s0
		move $s6, $s0
		lw $v0, 4($s0)
		move $s7, $v0
		move $s7, $s7
		lw $v0, 12($s0)
		move $s0, $v0
		move $s0, $s0
List_Delete_L1:
		li $t0, 1
		sub $v0, $t0, $s7
		move $t0, $v0
		beqz $t0, List_Delete_L3
		li $t1, 1
		sub $v0, $t1, $s3
		move $t1, $v0
		move $t1, $t1
		b List_Delete_L4
List_Delete_L3:
		move $t1, $t0
List_Delete_L4:
		beqz $t1, List_Delete_L2
		lw $v0, 0($s1)
		move $t0, $v0
		lw $v0, 4($t0)
		move $t0, $v0
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
		move $t0, $v0
		beqz $t0, List_Delete_L5
		li $t0, 1
		move $s3, $t0
		li $t0, 0
		sle $v0, $s4, $t0
		move $t0, $v0
		beqz $t0, List_Delete_L9
		li $t1, 0
		sne $v0, $s4, $t1
		move $t1, $v0
		move $t1, $t1
		b List_Delete_L10
List_Delete_L9:
		move $t1, $t0
List_Delete_L10:
		beqz $t1, List_Delete_L7
		lw $v0, 0($s5)
		move $t0, $v0
		lw $v0, 4($t0)
		move $t0, $v0
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
		move $t1, $v0
		move $s2, $t1
		b List_Delete_L8
List_Delete_L7:
		li $t1, 0
		li $t2, 555
		sub $v0, $t1, $t2
		move $t0, $v0
		move $a0, $t0
		jal _print
		lw $v0, 0($s6)
		move $t0, $v0
		lw $v0, 24($t0)
		move $t0, $v0
		lw $v0, 0($s5)
		move $t1, $v0
		lw $v0, 4($t1)
		move $t1, $v0
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
		move $v0, $t1
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
		move $t2, $v0
		move $a0, $s6
		move $a1, $t2
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
		move $t0, $v0
		move $v1, $t0
		li $t1, 0
		li $t0, 555
		sub $v0, $t1, $t0
		move $t2, $v0
		move $a0, $t2
		jal _print
List_Delete_L8:
		b List_Delete_L6
List_Delete_L5:
		li $t0, 0
		move $v1, $t0
List_Delete_L6:
		li $t0, 1
		sub $v0, $t0, $s3
		move $t0, $v0
		beqz $t0, List_Delete_L11
		move $s6, $s5
		lw $v0, 0($s5)
		move $t0, $v0
		lw $v0, 4($t0)
		move $t0, $v0
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
		move $t0, $v0
		move $s5, $t0
		lw $v0, 0($s5)
		move $t0, $v0
		lw $v0, 12($t0)
		move $t0, $v0
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
		move $t0, $v0
		move $s7, $t0
		lw $v0, 0($s5)
		move $t0, $v0
		lw $v0, 8($t0)
		move $t0, $v0
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
		move $t1, $v0
		move $s0, $t1
		li $t0, 1
		move $s4, $t0
		b List_Delete_L12
List_Delete_L11:
		li $t0, 0
		move $v1, $t0
List_Delete_L12:
		b List_Delete_L1
List_Delete_L2:
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
	.globl List_Search
List_Search:
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
		move $s0, $s0
		move $s3, $s1
		lw $v0, 4($s1)
		move $s4, $v0
		move $s4, $s4
		lw $v0, 12($s1)
		move $s1, $v0
		move $s1, $s1
List_Search_L1:
		li $s5, 1
		sub $v0, $s5, $s4
		move $s5, $v0
		beqz $s5, List_Search_L2
		lw $v0, 0($s2)
		move $s5, $v0
		lw $v0, 4($s5)
		move $s5, $v0
		move $a0, $s2
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
		move $v0, $s5
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
		move $s5, $v0
		beqz $s5, List_Search_L3
		li $s5, 1
		move $s0, $s5
		b List_Search_L4
List_Search_L3:
		li $s5, 0
		move $v1, $s5
List_Search_L4:
		lw $v0, 0($s3)
		move $s5, $v0
		lw $v0, 4($s5)
		move $s5, $v0
		move $a0, $s3
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
		move $v0, $s5
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
		move $s5, $v0
		move $s3, $s5
		lw $v0, 0($s3)
		move $s5, $v0
		lw $v0, 12($s5)
		move $s5, $v0
		move $a0, $s3
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
		move $v0, $s5
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
		move $s5, $v0
		move $s4, $s5
		lw $v0, 0($s3)
		move $s5, $v0
		lw $v0, 8($s5)
		move $s5, $v0
		move $a0, $s3
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
		move $v0, $s5
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
		move $s5, $v0
		move $s1, $s5
		b List_Search_L1
List_Search_L2:
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
	.globl List_GetEnd
List_GetEnd:
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
		lw $v0, 4($s0)
		move $s1, $v0
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
	.globl List_GetElem
List_GetElem:
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
		lw $v0, 12($s0)
		move $s1, $v0
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
	.globl List_GetNext
List_GetNext:
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
		lw $v0, 8($s0)
		move $s1, $v0
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
	.globl List_Print
List_Print:
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
		move $s0, $a0
		move $s1, $s0
		lw $v0, 4($s0)
		move $s2, $v0
		move $s2, $s2
		lw $v0, 12($s0)
		move $s0, $v0
		move $s0, $s0
List_Print_L1:
		li $s3, 1
		sub $v0, $s3, $s2
		move $s3, $v0
		beqz $s3, List_Print_L2
		lw $v0, 0($s0)
		move $s3, $v0
		lw $v0, 16($s3)
		move $s3, $v0
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
		move $s3, $v0
		move $a0, $s3
		jal _print
		lw $v0, 0($s1)
		move $s3, $v0
		lw $v0, 4($s3)
		move $s3, $v0
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
		move $s3, $v0
		move $s1, $s3
		lw $v0, 0($s1)
		move $s3, $v0
		lw $v0, 12($s3)
		move $s3, $v0
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
		move $s3, $v0
		move $s2, $s3
		lw $v0, 0($s1)
		move $s3, $v0
		lw $v0, 8($s3)
		move $s3, $v0
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
		move $s4, $v0
		move $s0, $s4
		b List_Print_L1
List_Print_L2:
		li $s3, 1
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
		addu $sp, $sp, 80
		j $ra

	.text
	.globl LL_Start
LL_Start:
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
		li $s0, 40
		move $a0, $s0
		jal _halloc
		move $s2, $v0
		la $s3, List_Init
		sw $s3, 36($s2)
		la $s3, List_InitNew
		sw $s3, 32($s2)
		la $s3, List_Insert
		sw $s3, 28($s2)
		la $s3, List_SetNext
		sw $s3, 24($s2)
		la $s3, List_Delete
		sw $s3, 20($s2)
		la $s3, List_Search
		sw $s3, 16($s2)
		la $s3, List_GetEnd
		sw $s3, 12($s2)
		la $s3, List_GetElem
		sw $s3, 8($s2)
		la $s3, List_GetNext
		sw $s3, 4($s2)
		la $s3, List_Print
		sw $s3, 0($s2)
		sw $s2, 0($s1)
		move $s1, $s1
		lw $v0, 0($s1)
		move $s0, $v0
		lw $v0, 36($s0)
		move $s0, $v0
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
		move $v1, $s3
		move $s0, $s1
		lw $v0, 0($s0)
		move $s1, $v0
		lw $v0, 36($s1)
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
		move $s1, $v0
		move $v1, $s1
		lw $v0, 0($s0)
		move $s1, $v0
		lw $v0, 0($s1)
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
		move $s2, $v0
		move $v1, $s2
		li $s2, 16
		move $a0, $s2
		jal _halloc
		move $s1, $v0
		li $s3, 0
		sw $s3, 0($s1)
		sw $s3, 4($s1)
		sw $s3, 8($s1)
		sw $s3, 12($s1)
		li $s2, 24
		move $a0, $s2
		jal _halloc
		move $s4, $v0
		la $s5, Element_Init
		sw $s5, 20($s4)
		la $s5, Element_GetAge
		sw $s5, 16($s4)
		la $s5, Element_GetSalary
		sw $s5, 12($s4)
		la $s5, Element_GetMarried
		sw $s5, 8($s4)
		la $s5, Element_Equal
		sw $s5, 4($s4)
		la $s5, Element_Compare
		sw $s5, 0($s4)
		sw $s4, 0($s1)
		move $s1, $s1
		lw $v0, 0($s1)
		move $s2, $v0
		lw $v0, 20($s2)
		move $s2, $v0
		li $s3, 25
		li $s4, 37000
		li $s6, 0
		move $a0, $s1
		move $a1, $s3
		move $a2, $s4
		move $a3, $s6
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
		move $s5, $v0
		move $v1, $s5
		lw $v0, 0($s0)
		move $s2, $v0
		lw $v0, 28($s2)
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
		move $s2, $v0
		move $s0, $s2
		lw $v0, 0($s0)
		move $s2, $v0
		lw $v0, 0($s2)
		move $s2, $v0
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
		move $s3, $v0
		move $v1, $s3
		li $s2, 10000000
		move $a0, $s2
		jal _print
		li $s2, 16
		move $a0, $s2
		jal _halloc
		move $s3, $v0
		li $s4, 0
		sw $s4, 0($s3)
		sw $s4, 4($s3)
		sw $s4, 8($s3)
		sw $s4, 12($s3)
		li $s2, 24
		move $a0, $s2
		jal _halloc
		move $s5, $v0
		la $s6, Element_Init
		sw $s6, 20($s5)
		la $s6, Element_GetAge
		sw $s6, 16($s5)
		la $s6, Element_GetSalary
		sw $s6, 12($s5)
		la $s6, Element_GetMarried
		sw $s6, 8($s5)
		la $s6, Element_Equal
		sw $s6, 4($s5)
		la $s6, Element_Compare
		sw $s6, 0($s5)
		sw $s5, 0($s3)
		move $s1, $s3
		lw $v0, 0($s1)
		move $s2, $v0
		lw $v0, 20($s2)
		move $s2, $v0
		li $s4, 39
		li $s3, 42000
		li $s5, 1
		move $a0, $s1
		move $a1, $s4
		move $a2, $s3
		move $a3, $s5
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
		move $s6, $v0
		move $v1, $s6
		move $s2, $s1
		lw $v0, 0($s0)
		move $s3, $v0
		lw $v0, 28($s3)
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
		move $s3, $v0
		move $s0, $s3
		lw $v0, 0($s0)
		move $s3, $v0
		lw $v0, 0($s3)
		move $s3, $v0
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
		move $s4, $v0
		move $v1, $s4
		li $s3, 10000000
		move $a0, $s3
		jal _print
		li $s3, 16
		move $a0, $s3
		jal _halloc
		move $s4, $v0
		li $s5, 0
		sw $s5, 0($s4)
		sw $s5, 4($s4)
		sw $s5, 8($s4)
		sw $s5, 12($s4)
		li $s3, 24
		move $a0, $s3
		jal _halloc
		move $s6, $v0
		la $s7, Element_Init
		sw $s7, 20($s6)
		la $s7, Element_GetAge
		sw $s7, 16($s6)
		la $s7, Element_GetSalary
		sw $s7, 12($s6)
		la $s7, Element_GetMarried
		sw $s7, 8($s6)
		la $s7, Element_Equal
		sw $s7, 4($s6)
		la $s7, Element_Compare
		sw $s7, 0($s6)
		sw $s6, 0($s4)
		move $s1, $s4
		lw $v0, 0($s1)
		move $s3, $v0
		lw $v0, 20($s3)
		move $s3, $v0
		li $s5, 22
		li $s4, 34000
		li $s6, 0
		move $a0, $s1
		move $a1, $s5
		move $a2, $s4
		move $a3, $s6
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
		move $s7, $v0
		move $v1, $s7
		lw $v0, 0($s0)
		move $s3, $v0
		lw $v0, 28($s3)
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
		move $s3, $v0
		move $s0, $s3
		lw $v0, 0($s0)
		move $s3, $v0
		lw $v0, 0($s3)
		move $s3, $v0
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
		move $s4, $v0
		move $v1, $s4
		li $s4, 16
		move $a0, $s4
		jal _halloc
		move $s3, $v0
		li $s5, 0
		sw $s5, 0($s3)
		sw $s5, 4($s3)
		sw $s5, 8($s3)
		sw $s5, 12($s3)
		li $s4, 24
		move $a0, $s4
		jal _halloc
		move $s6, $v0
		la $s7, Element_Init
		sw $s7, 20($s6)
		la $s7, Element_GetAge
		sw $s7, 16($s6)
		la $s7, Element_GetSalary
		sw $s7, 12($s6)
		la $s7, Element_GetMarried
		sw $s7, 8($s6)
		la $s7, Element_Equal
		sw $s7, 4($s6)
		la $s7, Element_Compare
		sw $s7, 0($s6)
		sw $s6, 0($s3)
		move $s3, $s3
		lw $v0, 0($s3)
		move $s4, $v0
		lw $v0, 20($s4)
		move $s4, $v0
		li $s5, 27
		li $s6, 34000
		li $t0, 0
		move $a0, $s3
		move $a1, $s5
		move $a2, $s6
		move $a3, $t0
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
		lw $v0, 0($s0)
		move $s4, $v0
		lw $v0, 16($s4)
		move $s4, $v0
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
		move $s4, $v0
		move $a0, $s4
		jal _print
		lw $v0, 0($s0)
		move $s4, $v0
		lw $v0, 16($s4)
		move $s4, $v0
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
		move $s3, $v0
		move $a0, $s3
		jal _print
		li $s3, 10000000
		move $a0, $s3
		jal _print
		li $s3, 16
		move $a0, $s3
		jal _halloc
		move $s4, $v0
		li $s5, 0
		sw $s5, 0($s4)
		sw $s5, 4($s4)
		sw $s5, 8($s4)
		sw $s5, 12($s4)
		li $s3, 24
		move $a0, $s3
		jal _halloc
		move $s6, $v0
		la $s7, Element_Init
		sw $s7, 20($s6)
		la $s7, Element_GetAge
		sw $s7, 16($s6)
		la $s7, Element_GetSalary
		sw $s7, 12($s6)
		la $s7, Element_GetMarried
		sw $s7, 8($s6)
		la $s7, Element_Equal
		sw $s7, 4($s6)
		la $s7, Element_Compare
		sw $s7, 0($s6)
		sw $s6, 0($s4)
		move $s1, $s4
		lw $v0, 0($s1)
		move $s3, $v0
		lw $v0, 20($s3)
		move $s3, $v0
		li $s5, 28
		li $s4, 35000
		li $s6, 0
		move $a0, $s1
		move $a1, $s5
		move $a2, $s4
		move $a3, $s6
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
		move $s7, $v0
		move $v1, $s7
		lw $v0, 0($s0)
		move $s3, $v0
		lw $v0, 28($s3)
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
		move $s3, $v0
		move $s0, $s3
		lw $v0, 0($s0)
		move $s3, $v0
		lw $v0, 0($s3)
		move $s3, $v0
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
		move $s4, $v0
		move $v1, $s4
		li $s3, 2220000
		move $a0, $s3
		jal _print
		lw $v0, 0($s0)
		move $s3, $v0
		lw $v0, 20($s3)
		move $s3, $v0
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
		move $s2, $v0
		move $s0, $s2
		lw $v0, 0($s0)
		move $s2, $v0
		lw $v0, 0($s2)
		move $s2, $v0
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
		move $s3, $v0
		move $v1, $s3
		li $s2, 33300000
		move $a0, $s2
		jal _print
		lw $v0, 0($s0)
		move $s2, $v0
		lw $v0, 20($s2)
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
		move $s1, $v0
		move $s0, $s1
		lw $v0, 0($s0)
		move $s1, $v0
		lw $v0, 0($s1)
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
		li $s1, 44440000
		move $a0, $s1
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
