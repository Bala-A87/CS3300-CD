.text
.globl	main
main:
move $fp, $sp
subu $sp, $sp, 60
sw $ra, -4($fp)
li $v1, 16
li $s0, 17
li $v1, 18
li $v1, 19
li $v0, 20
sw $v0, 44($sp)
li $v1, 21
li $v0, 22
sw $v0, 36($sp)
li $v0, 23
sw $v0, 32($sp)
li $v1, 24
li $v0, 25
sw $v0, 24($sp)
li $v1, 26
li $v1, 27
li $v1, 28
li $v1, 29
li $v1, 30
li $v1, 31
li $v1, 0
li $s5, 1
li $s6, 2
li $v1, 3
li $s7, 4
li $v1, 5
li $v1, 6
li $v1, 7
li $t0, 8
li $v1, 9
li $v1, 10
li $v1, 11
li $t1, 12
li $v1, 13
li $v1, 14
li $v1, 15
move $v1, $s0
move $t2, $s5
move $s5, $s0
move $s5, $s6
move $s5, $s5
move $t2, $t2
li $a0, 4
jal _halloc
move $v1, $v0
li $a0, 4
jal _halloc
move $v1, $v0
move $a0, $t0
jal _halloc
move $v1, $v0
move $a0, $t1
jal _halloc
move $v0, $v0
sw $v0, 48($sp)
lw $v0, 44($sp)
move $a0, $v0
jal _halloc
move $t4, $v0
lw $v0, 44($sp)
move $a0, $v0
jal _halloc
move $v0, $v0
sw $v0, 52($sp)
lw $v0, 44($sp)
move $a0, $v0
jal _halloc
move $v0, $v0
sw $v0, 44($sp)
move $a0, $t0
jal _halloc
move $t0, $v0
add $v1, $s5, 1
add $v1, $s5, $s6
sub $v1, $s5, $s6
mul $v1, $s5, $s6
div$v1, $s5, $s6
sle $v1, $s5, $s6
sne $v1, $s5, $s6
add $t6, $s5, $s5
add $s5, $t6, $s5
add $s5, $s5, $t6
add $s5, $s5, $s5
add $v1, $s5, $s6
sub $v1, $s5, $s6
mul $v1, $s5, $s6
div$v1, $s5, $s6
sle $v1, $s5, $s6
sne $v1, $s5, $s6
add $v0, $s5, $s5
sw $v0, 40($sp)
lw $v1, 40($sp)
add $t6, $v1, $s6
lw $v1, 40($sp)
sub $t6, $v1, $s6
lw $v1, 40($sp)
mul $t6, $v1, $s6
lw $v1, 40($sp)
div$t6, $v1, $s6
lw $v1, 40($sp)
sle $t6, $v1, $s6
lw $v1, 40($sp)
sne $t6, $v1, $s6
lw $v1, 40($sp)
add $t6, $v1, $s5
lw $v0, 40($sp)
add $t6, $s5, $v0
lw $v0, 40($sp)
sub $t6, $s5, $v0
lw $v0, 40($sp)
mul $t6, $s5, $v0
lw $v0, 40($sp)
div$t6, $s5, $v0
lw $v0, 40($sp)
sle $t6, $s5, $v0
lw $v0, 40($sp)
sne $t6, $s5, $v0
lw $v0, 36($sp)
add $t6, $t6, $v0
lw $v1, 36($sp)
lw $v0, 32($sp)
add $v0, $v1, $v0
sw $v0, 40($sp)
lw $v1, 36($sp)
lw $v0, 32($sp)
sub $v0, $v1, $v0
sw $v0, 40($sp)
lw $v1, 36($sp)
lw $v0, 32($sp)
mul $v0, $v1, $v0
sw $v0, 40($sp)
lw $v1, 36($sp)
lw $v0, 32($sp)
div$v0, $v1, $v0
sw $v0, 40($sp)
lw $v1, 36($sp)
lw $v0, 32($sp)
sle $v0, $v1, $v0
sw $v0, 40($sp)
lw $v1, 36($sp)
lw $v0, 32($sp)
sne $v0, $v1, $v0
sw $v0, 40($sp)
lw $v1, 40($sp)
lw $v0, 40($sp)
add $v0, $v1, $v0
sw $v0, 36($sp)
lw $v1, 36($sp)
lw $v0, 40($sp)
add $v0, $v1, $v0
sw $v0, 40($sp)
lw $v1, 40($sp)
lw $v0, 36($sp)
add $v0, $v1, $v0
sw $v0, 40($sp)
lw $v1, 40($sp)
lw $v0, 40($sp)
add $v0, $v1, $v0
sw $v0, 40($sp)
lw $v1, 36($sp)
add $v0, $v1, $s6
sw $v0, 40($sp)
lw $v1, 36($sp)
sub $v0, $v1, $s6
sw $v0, 40($sp)
lw $v1, 36($sp)
mul $v0, $v1, $s6
sw $v0, 40($sp)
lw $v1, 36($sp)
div$v0, $v1, $s6
sw $v0, 40($sp)
lw $v1, 36($sp)
sle $v0, $v1, $s6
sw $v0, 40($sp)
lw $v1, 36($sp)
sne $v0, $v1, $s6
sw $v0, 40($sp)
lw $v1, 36($sp)
add $v0, $v1, $s7
sw $v0, 36($sp)
lw $v0, 36($sp)
add $v0, $s5, $v0
sw $v0, 40($sp)
lw $v0, 36($sp)
sub $v0, $s5, $v0
sw $v0, 40($sp)
lw $v0, 36($sp)
mul $v0, $s5, $v0
sw $v0, 40($sp)
lw $v0, 36($sp)
div$v0, $s5, $v0
sw $v0, 40($sp)
lw $v0, 36($sp)
sle $v0, $s5, $v0
sw $v0, 40($sp)
lw $v0, 40($sp)
sne $v0, $s5, $v0
sw $v0, 40($sp)
lw $v1, 40($sp)
lw $v0, 36($sp)
add $s5, $v1, $v0
lw $v1, 40($sp)
lw $v0, 36($sp)
sub $s5, $v1, $v0
lw $v1, 40($sp)
lw $v0, 36($sp)
mul $s5, $v1, $v0
lw $v1, 40($sp)
lw $v0, 36($sp)
div$s5, $v1, $v0
lw $v1, 40($sp)
lw $v0, 36($sp)
sle $s5, $v1, $v0
lw $v1, 40($sp)
lw $v0, 40($sp)
sne $s5, $v1, $v0
sw $s5, 0($t4)
lw $v1, 24($sp)
sw $v1, 4($t4)
sw $t0, 4($t4)
lw $v1, 44($sp)
sw $v1, 4($t4)
lw $v0, 52($sp)
sw $s5, 0($v0)
lw $v0, 52($sp)
sw $t4, 4($v0)
lw $v0, 52($sp)
lw $v1, 44($sp)
sw $v1, 4($v0)
lw $v0, 52($sp)
lw $v1, 24($sp)
sw $v1, 4($v0)
lw $v0, 48($sp)
lw $v1, 48($sp)
sw $v1, 0($v0)
sw $t0, 0($t0)
lw $v0, 0($t4)
move $s5, $v0
lw $v0, 4($t4)
move $s5, $v0
lw $v0, 0($t4)
move $t2, $v0
lw $v0, 4($t4)
move $t2, $v0
lw $v0, 48($sp)
lw $v0, 0($v0)
move $s5, $v0
lw $v0, 48($sp)
lw $v0, 4($v0)
move $s5, $v0
lw $v0, 48($sp)
lw $v0, 0($v0)
move $t2, $v0
lw $v0, 48($sp)
lw $v0, 4($v0)
move $t2, $v0
lw $v0, 48($sp)
lw $v0, 0($v0)
move $v0, $v0
sw $v0, 48($sp)
lw $v0, 48($sp)
lw $v0, 0($v0)
move $v0, $v0
sw $v0, 48($sp)
lw $v0, 0($t0)
move $t0, $v0
lw $v0, 0($t0)
move $t0, $v0
li $t2, 16
li $s0, 17
li $v0, 18
sw $v0, 52($sp)
li $v0, 19
sw $v0, 48($sp)
li $v0, 20
sw $v0, 44($sp)
li $v0, 21
sw $v0, 40($sp)
li $v0, 22
sw $v0, 36($sp)
li $v0, 23
sw $v0, 32($sp)
li $v0, 24
sw $v0, 28($sp)
li $v0, 25
sw $v0, 24($sp)
li $v0, 26
sw $v0, 20($sp)
li $v0, 27
sw $v0, 0($sp)
li $v0, 28
sw $v0, 4($sp)
li $v0, 29
sw $v0, 8($sp)
li $v0, 30
sw $v0, 12($sp)
li $v0, 31
sw $v0, 16($sp)
li $t9, 0
li $s5, 1
li $s6, 2
li $t4, 3
li $s7, 4
li $t6, 5
li $s4, 6
li $t8, 7
li $t0, 8
li $s3, 9
li $s2, 10
li $t7, 11
li $t1, 12
li $s1, 13
li $t3, 14
li $t5, 15
move $a0, $t9
jal _print
move $a0, $s5
jal _print
move $a0, $s6
jal _print
move $a0, $t4
jal _print
move $a0, $s7
jal _print
move $a0, $t6
jal _print
move $a0, $s4
jal _print
move $a0, $t8
jal _print
move $a0, $t0
jal _print
move $a0, $s3
jal _print
move $a0, $s2
jal _print
move $a0, $t7
jal _print
move $a0, $t1
jal _print
move $a0, $s1
jal _print
move $a0, $t3
jal _print
move $a0, $t5
jal _print
move $a0, $t2
jal _print
move $a0, $s0
jal _print
lw $v0, 52($sp)
move $a0, $v0
jal _print
lw $v0, 48($sp)
move $a0, $v0
jal _print
lw $v0, 44($sp)
move $a0, $v0
jal _print
lw $v0, 40($sp)
move $a0, $v0
jal _print
lw $v0, 36($sp)
move $a0, $v0
jal _print
lw $v0, 32($sp)
move $a0, $v0
jal _print
lw $v0, 28($sp)
move $a0, $v0
jal _print
lw $v0, 24($sp)
move $a0, $v0
jal _print
lw $v0, 20($sp)
move $a0, $v0
jal _print
lw $v0, 0($sp)
move $a0, $v0
jal _print
lw $v0, 4($sp)
move $a0, $v0
jal _print
lw $v0, 8($sp)
move $a0, $v0
jal _print
lw $v0, 12($sp)
move $a0, $v0
jal _print
lw $v0, 16($sp)
move $a0, $v0
jal _print
lw $ra, -4($fp)
addu $sp, $sp, 60
j $ra

.text
.globl	_halloc
_halloc:
li $v0, 9
syscall
j $ra

.text
.globl	_print
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

.data
.align 0
str_er:	.asciiz " ERROR: abnormal termination\n"

