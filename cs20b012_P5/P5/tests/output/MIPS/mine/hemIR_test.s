
	.text
	.globl main
main:
		sw $fp, 0($sp)
		sw $ra, -4($sp)
		move $fp, $sp
		subu $sp, $sp, 48
		li $s0, 12
		move $a0, $s0
		jal _halloc
		move $s0, $v0
		move $s0, $s0
		li $s1, 16
		move $a0, $s1
		jal _halloc
		move $s1, $v0
		move $s1, $s1
		la $s2, A_set
		sw $s2, 8($s0)
		la $s2, A_one
		sw $s2, 4($s0)
		la $s2, A_run
		sw $s2, 0($s0)
		li $s2, 8
		move $s2, $s2
MAIN_L0:
		li $s3, 15
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
		lw $v0, 4($s1)
		move $s1, $v0
		li $s2, 1
		li $s3, 0
		move $a0, $s0
		move $a1, $s2
		move $a2, $s3
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
	.globl A_run
A_run:
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
		move $s3, $a0
		move $s1, $a1
		move $s2, $a2
		li $s0, 0
		move $v1, $s0
		li $s0, 0
		move $v1, $s0
		sle $v0, $s1, $s2
		move $s0, $v0
		beqz $s0, A_run_L2
		move $s0, $s1
		b A_run_L3
A_run_L2:
		move $s0, $s2
A_run_L3:
		li $s1, 0
		move $s1, $s1
		li $s2, 1
		move $s2, $s2
		li $s4, 0
		move $s4, $s4
		li $s5, 1
		beqz $s5, A_run_L6
		li $s5, 1
		beqz $s5, A_run_L6
		li $s5, 1
		move $s4, $s5
A_run_L6:
		li $s5, 1
		sub $v0, $s5, $s4
		move $s4, $v0
		beqz $s4, A_run_L5
		li $s4, 0
		move $s4, $s4
		li $s5, 1
		beqz $s5, A_run_L7
		li $s5, 0
		beqz $s5, A_run_L7
		li $s5, 1
		move $s4, $s5
A_run_L7:
		li $s5, 1
		sub $v0, $s5, $s4
		move $s4, $v0
		beqz $s4, A_run_L5
		li $s4, 0
		move $s2, $s4
A_run_L5:
		beqz $s2, A_run_L4
		li $s2, 0
		beqz $s2, A_run_L4
		li $s2, 1
		move $s1, $s2
A_run_L4:
		sw $s1, 8($s3)
		li $s1, 0
		move $s1, $s1
		li $s2, 1
		move $s2, $s2
		li $s4, 0
		move $s4, $s4
		li $s5, 1
		beqz $s5, A_run_L11
		li $s5, 1
		beqz $s5, A_run_L11
		li $s5, 1
		move $s4, $s5
A_run_L11:
		li $s5, 1
		sub $v0, $s5, $s4
		move $s4, $v0
		beqz $s4, A_run_L10
		li $s4, 0
		move $s4, $s4
		li $s5, 1
		beqz $s5, A_run_L12
		li $s5, 0
		beqz $s5, A_run_L12
		li $s5, 1
		move $s4, $s5
A_run_L12:
		li $s5, 1
		sub $v0, $s5, $s4
		move $s4, $v0
		beqz $s4, A_run_L10
		li $s4, 0
		move $s2, $s4
A_run_L10:
		beqz $s2, A_run_L9
		li $s2, 0
		beqz $s2, A_run_L9
		li $s2, 1
		move $s1, $s2
A_run_L9:
		beqz $s1, A_run_L8
		lw $v0, 8($s3)
		move $s1, $v0
		sw $s1, 12($s3)
A_run_L8:
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
	.globl A_one
A_one:
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
		sw $s0, 8($s2)
		sw $s1, 12($s2)
		li $s0, 0
		move $s0, $s0
		lw $v0, 8($s2)
		move $s1, $v0
		beqz $s1, A_one_L14
		lw $v0, 12($s2)
		move $s1, $v0
		beqz $s1, A_one_L14
		li $s1, 1
		move $s0, $s1
A_one_L14:
		beqz $s0, A_one_L13
		li $s0, 999
		move $a0, $s0
		jal _print
A_one_L13:
		li $s0, 1
		li $s1, 1
		move $s1, $s1
		lw $v0, 8($s2)
		move $s3, $v0
		li $s4, 1
		sub $v0, $s4, $s3
		move $s3, $v0
		beqz $s3, A_one_L17
		lw $v0, 12($s2)
		move $s3, $v0
		li $s4, 1
		sub $v0, $s4, $s3
		move $s3, $v0
		beqz $s3, A_one_L17
		li $s3, 0
		move $s1, $s3
A_one_L17:
		sub $v0, $s0, $s1
		move $s0, $v0
		beqz $s0, A_one_L15
		li $s0, 888
		move $a0, $s0
		jal _print
		b A_one_L16
A_one_L15:
		li $s0, 333
		move $a0, $s0
		jal _print
A_one_L16:
		li $s0, 1
		move $s0, $s0
		li $s1, 1
		li $s3, 0
		move $s3, $s3
		lw $v0, 8($s2)
		move $s4, $v0
		beqz $s4, A_one_L20
		lw $v0, 12($s2)
		move $s4, $v0
		beqz $s4, A_one_L20
		li $s4, 1
		move $s3, $s4
A_one_L20:
		sub $v0, $s1, $s3
		move $s1, $v0
		li $s3, 1
		sub $v0, $s3, $s1
		move $s1, $v0
		beqz $s1, A_one_L19
		li $s1, 1
		move $s1, $s1
		lw $v0, 12($s2)
		move $s3, $v0
		li $s4, 1
		sub $v0, $s4, $s3
		move $s3, $v0
		beqz $s3, A_one_L21
		lw $v0, 8($s2)
		move $s3, $v0
		li $s4, 1
		sub $v0, $s4, $s3
		move $s3, $v0
		beqz $s3, A_one_L21
		li $s3, 0
		move $s1, $s3
A_one_L21:
		li $s3, 1
		sub $v0, $s3, $s1
		move $s1, $v0
		beqz $s1, A_one_L19
		li $s1, 0
		move $s0, $s1
A_one_L19:
		beqz $s0, A_one_L18
		li $s0, 1
		sw $s0, 4($s2)
A_one_L18:
		li $s0, 0
		move $s0, $s0
		lw $v0, 8($s2)
		move $s1, $v0
		beqz $s1, A_one_L23
		li $s1, 0
		move $s1, $s1
		lw $v0, 8($s2)
		move $s3, $v0
		beqz $s3, A_one_L24
		lw $v0, 12($s2)
		move $s3, $v0
		beqz $s3, A_one_L24
		li $s3, 1
		move $s1, $s3
A_one_L24:
		beqz $s1, A_one_L23
		li $s1, 1
		move $s0, $s1
A_one_L23:
		beqz $s0, A_one_L22
		li $s0, 1
		sw $s0, 4($s2)
A_one_L22:
		lw $v0, 4($s2)
		move $s0, $v0
		li $s1, 11
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
	.globl A_set
A_set:
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
		sw $s1, 4($s0)
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
