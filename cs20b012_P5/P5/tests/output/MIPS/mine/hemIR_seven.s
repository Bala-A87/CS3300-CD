
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
		move $s0, $v0
		move $s0, $s0
		li $s1, 4
		move $a0, $s1
		jal _halloc
		move $s1, $v0
		move $s1, $s1
		la $s2, huh_lol
		sw $s2, 0($s0)
		sw $s0, 0($s1)
		move $s0, $s1
		lw $v0, 0($s0)
		move $s1, $v0
		lw $v0, 0($s1)
		move $s1, $v0
		li $s2, 1
		li $s3, 2
		li $s4, 3
		li $s5, 4
		li $s6, 5
		li $s7, 6
		li $t0, 7
		move $a0, $s0
		move $a1, $s2
		move $a2, $s3
		move $a3, $s4
		sw $s5, -8($sp)
		sw $s6, -12($sp)
		sw $s7, -16($sp)
		sw $t0, -20($sp)
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
	.globl huh_lol
huh_lol:
		sw $fp, 0($sp)
		sw $ra, -4($sp)
		move $fp, $sp
		subu $sp, $sp, 96
		sw $s0, -24($fp)
		sw $s1, -28($fp)
		sw $s2, -32($fp)
		sw $s3, -36($fp)
		sw $s4, -40($fp)
		sw $s5, -44($fp)
		sw $s6, -48($fp)
		sw $s7, -52($fp)
		move $s1, $a0
		move $s2, $a1
		move $t0, $a2
		move $s6, $a3
		lw $v0, -8($fp)
		move $s7, $v0
		lw $v0, -12($fp)
		move $s3, $v0
		lw $v0, -16($fp)
		move $s4, $v0
		lw $v0, -20($fp)
		move $s5, $v0
		li $s0, 7
		sne $v0, $s2, $s0
		move $s0, $v0
		beqz $s0, huh_lol_L2
		move $s0, $s1
		lw $v0, 0($s0)
		move $s1, $v0
		lw $v0, 0($s1)
		move $s1, $v0
		move $a0, $s0
		move $a1, $t0
		move $a2, $s6
		move $a3, $s7
		sw $s3, -8($sp)
		sw $s4, -12($sp)
		sw $s5, -16($sp)
		sw $s2, -20($sp)
		sw $t0, -56($fp)
		sw $t1, -60($fp)
		sw $t2, -64($fp)
		sw $t3, -68($fp)
		sw $t4, -72($fp)
		sw $t5, -76($fp)
		sw $t6, -80($fp)
		sw $t7, -84($fp)
		sw $t8, -88($fp)
		sw $t9, -92($fp)
		move $v0, $s1
		jalr $v0
		lw $t9, -92($fp)
		lw $t8, -88($fp)
		lw $t7, -84($fp)
		lw $t6, -80($fp)
		lw $t5, -76($fp)
		lw $t4, -72($fp)
		lw $t3, -68($fp)
		lw $t2, -64($fp)
		lw $t1, -60($fp)
		lw $t0, -56($fp)
		move $s0, $v0
		move $s0, $s0
		b huh_lol_L3
huh_lol_L2:
		add $v0, $s6, $s7
		move $s1, $v0
		add $v0, $t0, $s1
		move $s1, $v0
		move $s0, $s1
huh_lol_L3:
		move $v0, $s0
		lw $s7, -52($fp)
		lw $s6, -48($fp)
		lw $s5, -44($fp)
		lw $s4, -40($fp)
		lw $s3, -36($fp)
		lw $s2, -32($fp)
		lw $s1, -28($fp)
		lw $s0, -24($fp)
		lw $ra, -4($fp)
		lw $fp, 0($fp)
		addu $sp, $sp, 96
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
