.text
.globl	main
main:
move $fp, $sp
subu $sp, $sp, 44
sw $ra, -4($fp)
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
sw $t0, 0($sp)
sw $t1, 4($sp)
sw $t2, 8($sp)
sw $t3, 12($sp)
sw $t4, 16($sp)
sw $t5, 20($sp)
sw $t6, 24($sp)
sw $t7, 28($sp)
sw $t8, 32($sp)
sw $t9, 36($sp)
jalr $s2
lw $t9, 36($sp)
lw $t8, 32($sp)
lw $t7, 28($sp)
lw $t6, 24($sp)
lw $t5, 20($sp)
lw $t4, 16($sp)
lw $t3, 12($sp)
lw $t2, 8($sp)
lw $t1, 4($sp)
lw $t0, 0($sp)
move $s0, $v0
move $a0, $s0
jal _print
lw $ra, -4($fp)
addu $sp, $sp, 44
j $ra

.text
.globl	Element_Init
Element_Init:
sw $fp, -8($sp)
move $fp, $sp
sw $ra, -4($fp)
subu $sp, $sp, 40
sw $s0, 0($sp)
sw $s1, 4($sp)
sw $s2, 8($sp)
sw $s3, 12($sp)
sw $s4, 16($sp)
sw $s5, 20($sp)
sw $s6, 24($sp)
sw $s7, 28($sp)
move $s2, $a0
move $s0, $a1
move $s1, $a2
move $s3, $a3
sw $s0, 12($s2)
sw $s1, 8($s2)
sw $s3, 4($s2)
li $s0, 1
move $v0, $s0
lw $s7, 28($sp)
lw $s6, 24($sp)
lw $s5, 20($sp)
lw $s4, 16($sp)
lw $s3, 12($sp)
lw $s2, 8($sp)
lw $s1, 4($sp)
lw $s0, 0($sp)
lw $ra, -4($fp)
lw $fp, -8($fp)
addu $sp, $sp, 40
j $ra

.text
.globl	Element_GetAge
Element_GetAge:
sw $fp, -8($sp)
move $fp, $sp
sw $ra, -4($fp)
subu $sp, $sp, 40
sw $s0, 0($sp)
sw $s1, 4($sp)
sw $s2, 8($sp)
sw $s3, 12($sp)
sw $s4, 16($sp)
sw $s5, 20($sp)
sw $s6, 24($sp)
sw $s7, 28($sp)
move $s0, $a0
lw $v0, 12($s0)
move $s1, $v0
move $v0, $s1
lw $s7, 28($sp)
lw $s6, 24($sp)
lw $s5, 20($sp)
lw $s4, 16($sp)
lw $s3, 12($sp)
lw $s2, 8($sp)
lw $s1, 4($sp)
lw $s0, 0($sp)
lw $ra, -4($fp)
lw $fp, -8($fp)
addu $sp, $sp, 40
j $ra

.text
.globl	Element_GetSalary
Element_GetSalary:
sw $fp, -8($sp)
move $fp, $sp
sw $ra, -4($fp)
subu $sp, $sp, 40
sw $s0, 0($sp)
sw $s1, 4($sp)
sw $s2, 8($sp)
sw $s3, 12($sp)
sw $s4, 16($sp)
sw $s5, 20($sp)
sw $s6, 24($sp)
sw $s7, 28($sp)
move $s0, $a0
lw $v0, 8($s0)
move $s1, $v0
move $v0, $s1
lw $s7, 28($sp)
lw $s6, 24($sp)
lw $s5, 20($sp)
lw $s4, 16($sp)
lw $s3, 12($sp)
lw $s2, 8($sp)
lw $s1, 4($sp)
lw $s0, 0($sp)
lw $ra, -4($fp)
lw $fp, -8($fp)
addu $sp, $sp, 40
j $ra

.text
.globl	Element_GetMarried
Element_GetMarried:
sw $fp, -8($sp)
move $fp, $sp
sw $ra, -4($fp)
subu $sp, $sp, 40
sw $s0, 0($sp)
sw $s1, 4($sp)
sw $s2, 8($sp)
sw $s3, 12($sp)
sw $s4, 16($sp)
sw $s5, 20($sp)
sw $s6, 24($sp)
sw $s7, 28($sp)
move $s0, $a0
lw $v0, 4($s0)
move $s1, $v0
move $v0, $s1
lw $s7, 28($sp)
lw $s6, 24($sp)
lw $s5, 20($sp)
lw $s4, 16($sp)
lw $s3, 12($sp)
lw $s2, 8($sp)
lw $s1, 4($sp)
lw $s0, 0($sp)
lw $ra, -4($fp)
lw $fp, -8($fp)
addu $sp, $sp, 40
j $ra

.text
.globl	Element_Equal
Element_Equal:
sw $fp, -8($sp)
move $fp, $sp
sw $ra, -4($fp)
subu $sp, $sp, 80
sw $s0, 0($sp)
sw $s1, 4($sp)
sw $s2, 8($sp)
sw $s3, 12($sp)
sw $s4, 16($sp)
sw $s5, 20($sp)
sw $s6, 24($sp)
sw $s7, 28($sp)
move $s1, $a0
move $s2, $a1
li $s0, 1
move $s0, $s0
lw $v0, 0($s2)
move $s3, $v0
lw $v0, 16($s3)
move $s3, $v0
move $a0, $s2
sw $t0, 32($sp)
sw $t1, 36($sp)
sw $t2, 40($sp)
sw $t3, 44($sp)
sw $t4, 48($sp)
sw $t5, 52($sp)
sw $t6, 56($sp)
sw $t7, 60($sp)
sw $t8, 64($sp)
sw $t9, 68($sp)
jalr $s3
lw $t9, 68($sp)
lw $t8, 64($sp)
lw $t7, 60($sp)
lw $t6, 56($sp)
lw $t5, 52($sp)
lw $t4, 48($sp)
lw $t3, 44($sp)
lw $t2, 40($sp)
lw $t1, 36($sp)
lw $t0, 32($sp)
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
sw $t0, 32($sp)
sw $t1, 36($sp)
sw $t2, 40($sp)
sw $t3, 44($sp)
sw $t4, 48($sp)
sw $t5, 52($sp)
sw $t6, 56($sp)
sw $t7, 60($sp)
sw $t8, 64($sp)
sw $t9, 68($sp)
jalr $s6
lw $t9, 68($sp)
lw $t8, 64($sp)
lw $t7, 60($sp)
lw $t6, 56($sp)
lw $t5, 52($sp)
lw $t4, 48($sp)
lw $t3, 44($sp)
lw $t2, 40($sp)
lw $t1, 36($sp)
lw $t0, 32($sp)
move $s4, $v0
sub $s3, $s5, $s4
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
sw $t0, 32($sp)
sw $t1, 36($sp)
sw $t2, 40($sp)
sw $t3, 44($sp)
sw $t4, 48($sp)
sw $t5, 52($sp)
sw $t6, 56($sp)
sw $t7, 60($sp)
sw $t8, 64($sp)
sw $t9, 68($sp)
jalr $s3
lw $t9, 68($sp)
lw $t8, 64($sp)
lw $t7, 60($sp)
lw $t6, 56($sp)
lw $t5, 52($sp)
lw $t4, 48($sp)
lw $t3, 44($sp)
lw $t2, 40($sp)
lw $t1, 36($sp)
lw $t0, 32($sp)
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
sw $t0, 32($sp)
sw $t1, 36($sp)
sw $t2, 40($sp)
sw $t3, 44($sp)
sw $t4, 48($sp)
sw $t5, 52($sp)
sw $t6, 56($sp)
sw $t7, 60($sp)
sw $t8, 64($sp)
sw $t9, 68($sp)
jalr $s6
lw $t9, 68($sp)
lw $t8, 64($sp)
lw $t7, 60($sp)
lw $t6, 56($sp)
lw $t5, 52($sp)
lw $t4, 48($sp)
lw $t3, 44($sp)
lw $t2, 40($sp)
lw $t1, 36($sp)
lw $t0, 32($sp)
move $s4, $v0
sub $s3, $s5, $s4
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
sw $t0, 32($sp)
sw $t1, 36($sp)
sw $t2, 40($sp)
sw $t3, 44($sp)
sw $t4, 48($sp)
sw $t5, 52($sp)
sw $t6, 56($sp)
sw $t7, 60($sp)
sw $t8, 64($sp)
sw $t9, 68($sp)
jalr $s3
lw $t9, 68($sp)
lw $t8, 64($sp)
lw $t7, 60($sp)
lw $t6, 56($sp)
lw $t5, 52($sp)
lw $t4, 48($sp)
lw $t3, 44($sp)
lw $t2, 40($sp)
lw $t1, 36($sp)
lw $t0, 32($sp)
move $s4, $v0
sub $s1, $s1, $s4
beqz $s1, Element_Equal_L7
li $s4, 0
move $s0, $s4
b Element_Equal_L8
Element_Equal_L7:
li $s3, 0
move $v1, $s3
Element_Equal_L8:
nop
b Element_Equal_L6
Element_Equal_L5:
lw $v0, 0($s2)
move $s1, $v0
lw $v0, 8($s1)
move $s1, $v0
move $a0, $s2
sw $t0, 32($sp)
sw $t1, 36($sp)
sw $t2, 40($sp)
sw $t3, 44($sp)
sw $t4, 48($sp)
sw $t5, 52($sp)
sw $t6, 56($sp)
sw $t7, 60($sp)
sw $t8, 64($sp)
sw $t9, 68($sp)
jalr $s1
lw $t9, 68($sp)
lw $t8, 64($sp)
lw $t7, 60($sp)
lw $t6, 56($sp)
lw $t5, 52($sp)
lw $t4, 48($sp)
lw $t3, 44($sp)
lw $t2, 40($sp)
lw $t1, 36($sp)
lw $t0, 32($sp)
move $s2, $v0
beqz $s2, Element_Equal_L9
li $s1, 0
move $s0, $s1
b Element_Equal_L10
Element_Equal_L9:
li $s1, 0
move $v1, $s1
Element_Equal_L10:
nop
Element_Equal_L6:
nop
Element_Equal_L4:
nop
Element_Equal_L2:
nop
move $v0, $s0
lw $s7, 28($sp)
lw $s6, 24($sp)
lw $s5, 20($sp)
lw $s4, 16($sp)
lw $s3, 12($sp)
lw $s2, 8($sp)
lw $s1, 4($sp)
lw $s0, 0($sp)
lw $ra, -4($fp)
lw $fp, -8($fp)
addu $sp, $sp, 80
j $ra

.text
.globl	Element_Compare
Element_Compare:
sw $fp, -8($sp)
move $fp, $sp
sw $ra, -4($fp)
subu $sp, $sp, 40
sw $s0, 0($sp)
sw $s1, 4($sp)
sw $s2, 8($sp)
sw $s3, 12($sp)
sw $s4, 16($sp)
sw $s5, 20($sp)
sw $s6, 24($sp)
sw $s7, 28($sp)
move $v1, $a0
move $s2, $a1
move $s1, $a2
li $s0, 0
move $v1, $s0
li $s0, 1
add $s0, $s1, $s0
move $s0, $s0
sle $s3, $s2, $s1
beqz $s3, Element_Compare_L13
sne $s1, $s2, $s1
move $s1, $s1
b Element_Compare_L14
Element_Compare_L13:
move $s1, $s3
Element_Compare_L14:
nop
beqz $s1, Element_Compare_L11
li $s1, 0
move $s1, $s1
b Element_Compare_L12
Element_Compare_L11:
li $s3, 1
li $s4, 1
sub $s0, $s0, $s4
sle $s0, $s2, $s0
sub $s0, $s3, $s0
beqz $s0, Element_Compare_L15
li $s4, 0
move $s1, $s4
b Element_Compare_L16
Element_Compare_L15:
li $s0, 1
move $s1, $s0
Element_Compare_L16:
nop
Element_Compare_L12:
nop
move $v0, $s1
lw $s7, 28($sp)
lw $s6, 24($sp)
lw $s5, 20($sp)
lw $s4, 16($sp)
lw $s3, 12($sp)
lw $s2, 8($sp)
lw $s1, 4($sp)
lw $s0, 0($sp)
lw $ra, -4($fp)
lw $fp, -8($fp)
addu $sp, $sp, 40
j $ra

.text
.globl	List_Init
List_Init:
sw $fp, -8($sp)
move $fp, $sp
sw $ra, -4($fp)
subu $sp, $sp, 40
sw $s0, 0($sp)
sw $s1, 4($sp)
sw $s2, 8($sp)
sw $s3, 12($sp)
sw $s4, 16($sp)
sw $s5, 20($sp)
sw $s6, 24($sp)
sw $s7, 28($sp)
move $s0, $a0
li $s1, 1
sw $s1, 4($s0)
li $s0, 1
move $v0, $s0
lw $s7, 28($sp)
lw $s6, 24($sp)
lw $s5, 20($sp)
lw $s4, 16($sp)
lw $s3, 12($sp)
lw $s2, 8($sp)
lw $s1, 4($sp)
lw $s0, 0($sp)
lw $ra, -4($fp)
lw $fp, -8($fp)
addu $sp, $sp, 40
j $ra

.text
.globl	List_InitNew
List_InitNew:
sw $fp, -8($sp)
move $fp, $sp
sw $ra, -4($fp)
subu $sp, $sp, 40
sw $s0, 0($sp)
sw $s1, 4($sp)
sw $s2, 8($sp)
sw $s3, 12($sp)
sw $s4, 16($sp)
sw $s5, 20($sp)
sw $s6, 24($sp)
sw $s7, 28($sp)
move $s2, $a0
move $s1, $a1
move $s3, $a2
move $s0, $a3
sw $s0, 4($s2)
sw $s1, 12($s2)
sw $s3, 8($s2)
li $s0, 1
move $v0, $s0
lw $s7, 28($sp)
lw $s6, 24($sp)
lw $s5, 20($sp)
lw $s4, 16($sp)
lw $s3, 12($sp)
lw $s2, 8($sp)
lw $s1, 4($sp)
lw $s0, 0($sp)
lw $ra, -4($fp)
lw $fp, -8($fp)
addu $sp, $sp, 40
j $ra

.text
.globl	List_Insert
List_Insert:
sw $fp, -8($sp)
move $fp, $sp
sw $ra, -4($fp)
subu $sp, $sp, 80
sw $s0, 0($sp)
sw $s1, 4($sp)
sw $s2, 8($sp)
sw $s3, 12($sp)
sw $s4, 16($sp)
sw $s5, 20($sp)
sw $s6, 24($sp)
sw $s7, 28($sp)
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
sw $t0, 32($sp)
sw $t1, 36($sp)
sw $t2, 40($sp)
sw $t3, 44($sp)
sw $t4, 48($sp)
sw $t5, 52($sp)
sw $t6, 56($sp)
sw $t7, 60($sp)
sw $t8, 64($sp)
sw $t9, 68($sp)
jalr $s0
lw $t9, 68($sp)
lw $t8, 64($sp)
lw $t7, 60($sp)
lw $t6, 56($sp)
lw $t5, 52($sp)
lw $t4, 48($sp)
lw $t3, 44($sp)
lw $t2, 40($sp)
lw $t1, 36($sp)
lw $t0, 32($sp)
move $s5, $v0
move $v1, $s5
move $v0, $s3
lw $s7, 28($sp)
lw $s6, 24($sp)
lw $s5, 20($sp)
lw $s4, 16($sp)
lw $s3, 12($sp)
lw $s2, 8($sp)
lw $s1, 4($sp)
lw $s0, 0($sp)
lw $ra, -4($fp)
lw $fp, -8($fp)
addu $sp, $sp, 80
j $ra

.text
.globl	List_SetNext
List_SetNext:
sw $fp, -8($sp)
move $fp, $sp
sw $ra, -4($fp)
subu $sp, $sp, 40
sw $s0, 0($sp)
sw $s1, 4($sp)
sw $s2, 8($sp)
sw $s3, 12($sp)
sw $s4, 16($sp)
sw $s5, 20($sp)
sw $s6, 24($sp)
sw $s7, 28($sp)
move $s0, $a0
move $s1, $a1
sw $s1, 8($s0)
li $s0, 1
move $v0, $s0
lw $s7, 28($sp)
lw $s6, 24($sp)
lw $s5, 20($sp)
lw $s4, 16($sp)
lw $s3, 12($sp)
lw $s2, 8($sp)
lw $s1, 4($sp)
lw $s0, 0($sp)
lw $ra, -4($fp)
lw $fp, -8($fp)
addu $sp, $sp, 40
j $ra

.text
.globl	List_Delete
List_Delete:
sw $fp, -8($sp)
move $fp, $sp
sw $ra, -4($fp)
subu $sp, $sp, 80
sw $s0, 0($sp)
sw $s1, 4($sp)
sw $s2, 8($sp)
sw $s3, 12($sp)
sw $s4, 16($sp)
sw $s5, 20($sp)
sw $s6, 24($sp)
sw $s7, 28($sp)
move $s0, $a0
move $s1, $a1
move $s2, $s0
li $s3, 0
move $s3, $s3
li $s4, 0
li $s5, 1
sub $s4, $s4, $s5
move $s4, $s4
move $s5, $s0
move $s6, $s0
lw $v0, 4($s0)
move $s7, $v0
move $s7, $s7
lw $v0, 12($s0)
move $s0, $v0
move $s0, $s0
List_Delete_L17:
li $t0, 1
sub $t0, $t0, $s7
beqz $t0, List_Delete_L19
li $t1, 1
sub $t1, $t1, $s3
move $t1, $t1
b List_Delete_L20
List_Delete_L19:
move $t1, $t0
List_Delete_L20:
nop
beqz $t1, List_Delete_L18
lw $v0, 0($s1)
move $t0, $v0
lw $v0, 4($t0)
move $t0, $v0
move $a0, $s1
move $a1, $s0
sw $t0, 32($sp)
sw $t1, 36($sp)
sw $t2, 40($sp)
sw $t3, 44($sp)
sw $t4, 48($sp)
sw $t5, 52($sp)
sw $t6, 56($sp)
sw $t7, 60($sp)
sw $t8, 64($sp)
sw $t9, 68($sp)
jalr $t0
lw $t9, 68($sp)
lw $t8, 64($sp)
lw $t7, 60($sp)
lw $t6, 56($sp)
lw $t5, 52($sp)
lw $t4, 48($sp)
lw $t3, 44($sp)
lw $t2, 40($sp)
lw $t1, 36($sp)
lw $t0, 32($sp)
move $t0, $v0
beqz $t0, List_Delete_L21
li $t0, 1
move $s3, $t0
li $t0, 0
sle $t0, $s4, $t0
beqz $t0, List_Delete_L25
li $t1, 0
sne $t1, $s4, $t1
move $t1, $t1
b List_Delete_L26
List_Delete_L25:
move $t1, $t0
List_Delete_L26:
nop
beqz $t1, List_Delete_L23
lw $v0, 0($s5)
move $t0, $v0
lw $v0, 4($t0)
move $t0, $v0
move $a0, $s5
sw $t0, 32($sp)
sw $t1, 36($sp)
sw $t2, 40($sp)
sw $t3, 44($sp)
sw $t4, 48($sp)
sw $t5, 52($sp)
sw $t6, 56($sp)
sw $t7, 60($sp)
sw $t8, 64($sp)
sw $t9, 68($sp)
jalr $t0
lw $t9, 68($sp)
lw $t8, 64($sp)
lw $t7, 60($sp)
lw $t6, 56($sp)
lw $t5, 52($sp)
lw $t4, 48($sp)
lw $t3, 44($sp)
lw $t2, 40($sp)
lw $t1, 36($sp)
lw $t0, 32($sp)
move $t1, $v0
move $s2, $t1
b List_Delete_L24
List_Delete_L23:
li $t1, 0
li $t2, 555
sub $t0, $t1, $t2
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
sw $t0, 32($sp)
sw $t1, 36($sp)
sw $t2, 40($sp)
sw $t3, 44($sp)
sw $t4, 48($sp)
sw $t5, 52($sp)
sw $t6, 56($sp)
sw $t7, 60($sp)
sw $t8, 64($sp)
sw $t9, 68($sp)
jalr $t1
lw $t9, 68($sp)
lw $t8, 64($sp)
lw $t7, 60($sp)
lw $t6, 56($sp)
lw $t5, 52($sp)
lw $t4, 48($sp)
lw $t3, 44($sp)
lw $t2, 40($sp)
lw $t1, 36($sp)
lw $t0, 32($sp)
move $t2, $v0
move $a0, $s6
move $a1, $t2
sw $t0, 32($sp)
sw $t1, 36($sp)
sw $t2, 40($sp)
sw $t3, 44($sp)
sw $t4, 48($sp)
sw $t5, 52($sp)
sw $t6, 56($sp)
sw $t7, 60($sp)
sw $t8, 64($sp)
sw $t9, 68($sp)
jalr $t0
lw $t9, 68($sp)
lw $t8, 64($sp)
lw $t7, 60($sp)
lw $t6, 56($sp)
lw $t5, 52($sp)
lw $t4, 48($sp)
lw $t3, 44($sp)
lw $t2, 40($sp)
lw $t1, 36($sp)
lw $t0, 32($sp)
move $t0, $v0
move $v1, $t0
li $t1, 0
li $t0, 555
sub $t2, $t1, $t0
move $a0, $t2
jal _print
List_Delete_L24:
nop
b List_Delete_L22
List_Delete_L21:
li $t0, 0
move $v1, $t0
List_Delete_L22:
nop
li $t0, 1
sub $t0, $t0, $s3
beqz $t0, List_Delete_L27
move $s6, $s5
lw $v0, 0($s5)
move $t0, $v0
lw $v0, 4($t0)
move $t0, $v0
move $a0, $s5
sw $t0, 32($sp)
sw $t1, 36($sp)
sw $t2, 40($sp)
sw $t3, 44($sp)
sw $t4, 48($sp)
sw $t5, 52($sp)
sw $t6, 56($sp)
sw $t7, 60($sp)
sw $t8, 64($sp)
sw $t9, 68($sp)
jalr $t0
lw $t9, 68($sp)
lw $t8, 64($sp)
lw $t7, 60($sp)
lw $t6, 56($sp)
lw $t5, 52($sp)
lw $t4, 48($sp)
lw $t3, 44($sp)
lw $t2, 40($sp)
lw $t1, 36($sp)
lw $t0, 32($sp)
move $t0, $v0
move $s5, $t0
lw $v0, 0($s5)
move $t0, $v0
lw $v0, 12($t0)
move $t0, $v0
move $a0, $s5
sw $t0, 32($sp)
sw $t1, 36($sp)
sw $t2, 40($sp)
sw $t3, 44($sp)
sw $t4, 48($sp)
sw $t5, 52($sp)
sw $t6, 56($sp)
sw $t7, 60($sp)
sw $t8, 64($sp)
sw $t9, 68($sp)
jalr $t0
lw $t9, 68($sp)
lw $t8, 64($sp)
lw $t7, 60($sp)
lw $t6, 56($sp)
lw $t5, 52($sp)
lw $t4, 48($sp)
lw $t3, 44($sp)
lw $t2, 40($sp)
lw $t1, 36($sp)
lw $t0, 32($sp)
move $t0, $v0
move $s7, $t0
lw $v0, 0($s5)
move $t0, $v0
lw $v0, 8($t0)
move $t0, $v0
move $a0, $s5
sw $t0, 32($sp)
sw $t1, 36($sp)
sw $t2, 40($sp)
sw $t3, 44($sp)
sw $t4, 48($sp)
sw $t5, 52($sp)
sw $t6, 56($sp)
sw $t7, 60($sp)
sw $t8, 64($sp)
sw $t9, 68($sp)
jalr $t0
lw $t9, 68($sp)
lw $t8, 64($sp)
lw $t7, 60($sp)
lw $t6, 56($sp)
lw $t5, 52($sp)
lw $t4, 48($sp)
lw $t3, 44($sp)
lw $t2, 40($sp)
lw $t1, 36($sp)
lw $t0, 32($sp)
move $t1, $v0
move $s0, $t1
li $t0, 1
move $s4, $t0
b List_Delete_L28
List_Delete_L27:
li $t0, 0
move $v1, $t0
List_Delete_L28:
nop
b List_Delete_L17
List_Delete_L18:
nop
move $v0, $s2
lw $s7, 28($sp)
lw $s6, 24($sp)
lw $s5, 20($sp)
lw $s4, 16($sp)
lw $s3, 12($sp)
lw $s2, 8($sp)
lw $s1, 4($sp)
lw $s0, 0($sp)
lw $ra, -4($fp)
lw $fp, -8($fp)
addu $sp, $sp, 80
j $ra

.text
.globl	List_Search
List_Search:
sw $fp, -8($sp)
move $fp, $sp
sw $ra, -4($fp)
subu $sp, $sp, 80
sw $s0, 0($sp)
sw $s1, 4($sp)
sw $s2, 8($sp)
sw $s3, 12($sp)
sw $s4, 16($sp)
sw $s5, 20($sp)
sw $s6, 24($sp)
sw $s7, 28($sp)
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
List_Search_L29:
li $s5, 1
sub $s5, $s5, $s4
beqz $s5, List_Search_L30
lw $v0, 0($s2)
move $s5, $v0
lw $v0, 4($s5)
move $s5, $v0
move $a0, $s2
move $a1, $s1
sw $t0, 32($sp)
sw $t1, 36($sp)
sw $t2, 40($sp)
sw $t3, 44($sp)
sw $t4, 48($sp)
sw $t5, 52($sp)
sw $t6, 56($sp)
sw $t7, 60($sp)
sw $t8, 64($sp)
sw $t9, 68($sp)
jalr $s5
lw $t9, 68($sp)
lw $t8, 64($sp)
lw $t7, 60($sp)
lw $t6, 56($sp)
lw $t5, 52($sp)
lw $t4, 48($sp)
lw $t3, 44($sp)
lw $t2, 40($sp)
lw $t1, 36($sp)
lw $t0, 32($sp)
move $s5, $v0
beqz $s5, List_Search_L31
li $s5, 1
move $s0, $s5
b List_Search_L32
List_Search_L31:
li $s5, 0
move $v1, $s5
List_Search_L32:
nop
lw $v0, 0($s3)
move $s5, $v0
lw $v0, 4($s5)
move $s5, $v0
move $a0, $s3
sw $t0, 32($sp)
sw $t1, 36($sp)
sw $t2, 40($sp)
sw $t3, 44($sp)
sw $t4, 48($sp)
sw $t5, 52($sp)
sw $t6, 56($sp)
sw $t7, 60($sp)
sw $t8, 64($sp)
sw $t9, 68($sp)
jalr $s5
lw $t9, 68($sp)
lw $t8, 64($sp)
lw $t7, 60($sp)
lw $t6, 56($sp)
lw $t5, 52($sp)
lw $t4, 48($sp)
lw $t3, 44($sp)
lw $t2, 40($sp)
lw $t1, 36($sp)
lw $t0, 32($sp)
move $s5, $v0
move $s3, $s5
lw $v0, 0($s3)
move $s5, $v0
lw $v0, 12($s5)
move $s5, $v0
move $a0, $s3
sw $t0, 32($sp)
sw $t1, 36($sp)
sw $t2, 40($sp)
sw $t3, 44($sp)
sw $t4, 48($sp)
sw $t5, 52($sp)
sw $t6, 56($sp)
sw $t7, 60($sp)
sw $t8, 64($sp)
sw $t9, 68($sp)
jalr $s5
lw $t9, 68($sp)
lw $t8, 64($sp)
lw $t7, 60($sp)
lw $t6, 56($sp)
lw $t5, 52($sp)
lw $t4, 48($sp)
lw $t3, 44($sp)
lw $t2, 40($sp)
lw $t1, 36($sp)
lw $t0, 32($sp)
move $s5, $v0
move $s4, $s5
lw $v0, 0($s3)
move $s5, $v0
lw $v0, 8($s5)
move $s5, $v0
move $a0, $s3
sw $t0, 32($sp)
sw $t1, 36($sp)
sw $t2, 40($sp)
sw $t3, 44($sp)
sw $t4, 48($sp)
sw $t5, 52($sp)
sw $t6, 56($sp)
sw $t7, 60($sp)
sw $t8, 64($sp)
sw $t9, 68($sp)
jalr $s5
lw $t9, 68($sp)
lw $t8, 64($sp)
lw $t7, 60($sp)
lw $t6, 56($sp)
lw $t5, 52($sp)
lw $t4, 48($sp)
lw $t3, 44($sp)
lw $t2, 40($sp)
lw $t1, 36($sp)
lw $t0, 32($sp)
move $s5, $v0
move $s1, $s5
b List_Search_L29
List_Search_L30:
nop
move $v0, $s0
lw $s7, 28($sp)
lw $s6, 24($sp)
lw $s5, 20($sp)
lw $s4, 16($sp)
lw $s3, 12($sp)
lw $s2, 8($sp)
lw $s1, 4($sp)
lw $s0, 0($sp)
lw $ra, -4($fp)
lw $fp, -8($fp)
addu $sp, $sp, 80
j $ra

.text
.globl	List_GetEnd
List_GetEnd:
sw $fp, -8($sp)
move $fp, $sp
sw $ra, -4($fp)
subu $sp, $sp, 40
sw $s0, 0($sp)
sw $s1, 4($sp)
sw $s2, 8($sp)
sw $s3, 12($sp)
sw $s4, 16($sp)
sw $s5, 20($sp)
sw $s6, 24($sp)
sw $s7, 28($sp)
move $s0, $a0
lw $v0, 4($s0)
move $s1, $v0
move $v0, $s1
lw $s7, 28($sp)
lw $s6, 24($sp)
lw $s5, 20($sp)
lw $s4, 16($sp)
lw $s3, 12($sp)
lw $s2, 8($sp)
lw $s1, 4($sp)
lw $s0, 0($sp)
lw $ra, -4($fp)
lw $fp, -8($fp)
addu $sp, $sp, 40
j $ra

.text
.globl	List_GetElem
List_GetElem:
sw $fp, -8($sp)
move $fp, $sp
sw $ra, -4($fp)
subu $sp, $sp, 40
sw $s0, 0($sp)
sw $s1, 4($sp)
sw $s2, 8($sp)
sw $s3, 12($sp)
sw $s4, 16($sp)
sw $s5, 20($sp)
sw $s6, 24($sp)
sw $s7, 28($sp)
move $s0, $a0
lw $v0, 12($s0)
move $s1, $v0
move $v0, $s1
lw $s7, 28($sp)
lw $s6, 24($sp)
lw $s5, 20($sp)
lw $s4, 16($sp)
lw $s3, 12($sp)
lw $s2, 8($sp)
lw $s1, 4($sp)
lw $s0, 0($sp)
lw $ra, -4($fp)
lw $fp, -8($fp)
addu $sp, $sp, 40
j $ra

.text
.globl	List_GetNext
List_GetNext:
sw $fp, -8($sp)
move $fp, $sp
sw $ra, -4($fp)
subu $sp, $sp, 40
sw $s0, 0($sp)
sw $s1, 4($sp)
sw $s2, 8($sp)
sw $s3, 12($sp)
sw $s4, 16($sp)
sw $s5, 20($sp)
sw $s6, 24($sp)
sw $s7, 28($sp)
move $s0, $a0
lw $v0, 8($s0)
move $s1, $v0
move $v0, $s1
lw $s7, 28($sp)
lw $s6, 24($sp)
lw $s5, 20($sp)
lw $s4, 16($sp)
lw $s3, 12($sp)
lw $s2, 8($sp)
lw $s1, 4($sp)
lw $s0, 0($sp)
lw $ra, -4($fp)
lw $fp, -8($fp)
addu $sp, $sp, 40
j $ra

.text
.globl	List_Print
List_Print:
sw $fp, -8($sp)
move $fp, $sp
sw $ra, -4($fp)
subu $sp, $sp, 80
sw $s0, 0($sp)
sw $s1, 4($sp)
sw $s2, 8($sp)
sw $s3, 12($sp)
sw $s4, 16($sp)
sw $s5, 20($sp)
sw $s6, 24($sp)
sw $s7, 28($sp)
move $s0, $a0
move $s1, $s0
lw $v0, 4($s0)
move $s2, $v0
move $s2, $s2
lw $v0, 12($s0)
move $s0, $v0
move $s0, $s0
List_Print_L33:
li $s3, 1
sub $s3, $s3, $s2
beqz $s3, List_Print_L34
lw $v0, 0($s0)
move $s3, $v0
lw $v0, 16($s3)
move $s3, $v0
move $a0, $s0
sw $t0, 32($sp)
sw $t1, 36($sp)
sw $t2, 40($sp)
sw $t3, 44($sp)
sw $t4, 48($sp)
sw $t5, 52($sp)
sw $t6, 56($sp)
sw $t7, 60($sp)
sw $t8, 64($sp)
sw $t9, 68($sp)
jalr $s3
lw $t9, 68($sp)
lw $t8, 64($sp)
lw $t7, 60($sp)
lw $t6, 56($sp)
lw $t5, 52($sp)
lw $t4, 48($sp)
lw $t3, 44($sp)
lw $t2, 40($sp)
lw $t1, 36($sp)
lw $t0, 32($sp)
move $s3, $v0
move $a0, $s3
jal _print
lw $v0, 0($s1)
move $s3, $v0
lw $v0, 4($s3)
move $s3, $v0
move $a0, $s1
sw $t0, 32($sp)
sw $t1, 36($sp)
sw $t2, 40($sp)
sw $t3, 44($sp)
sw $t4, 48($sp)
sw $t5, 52($sp)
sw $t6, 56($sp)
sw $t7, 60($sp)
sw $t8, 64($sp)
sw $t9, 68($sp)
jalr $s3
lw $t9, 68($sp)
lw $t8, 64($sp)
lw $t7, 60($sp)
lw $t6, 56($sp)
lw $t5, 52($sp)
lw $t4, 48($sp)
lw $t3, 44($sp)
lw $t2, 40($sp)
lw $t1, 36($sp)
lw $t0, 32($sp)
move $s3, $v0
move $s1, $s3
lw $v0, 0($s1)
move $s3, $v0
lw $v0, 12($s3)
move $s3, $v0
move $a0, $s1
sw $t0, 32($sp)
sw $t1, 36($sp)
sw $t2, 40($sp)
sw $t3, 44($sp)
sw $t4, 48($sp)
sw $t5, 52($sp)
sw $t6, 56($sp)
sw $t7, 60($sp)
sw $t8, 64($sp)
sw $t9, 68($sp)
jalr $s3
lw $t9, 68($sp)
lw $t8, 64($sp)
lw $t7, 60($sp)
lw $t6, 56($sp)
lw $t5, 52($sp)
lw $t4, 48($sp)
lw $t3, 44($sp)
lw $t2, 40($sp)
lw $t1, 36($sp)
lw $t0, 32($sp)
move $s3, $v0
move $s2, $s3
lw $v0, 0($s1)
move $s3, $v0
lw $v0, 8($s3)
move $s3, $v0
move $a0, $s1
sw $t0, 32($sp)
sw $t1, 36($sp)
sw $t2, 40($sp)
sw $t3, 44($sp)
sw $t4, 48($sp)
sw $t5, 52($sp)
sw $t6, 56($sp)
sw $t7, 60($sp)
sw $t8, 64($sp)
sw $t9, 68($sp)
jalr $s3
lw $t9, 68($sp)
lw $t8, 64($sp)
lw $t7, 60($sp)
lw $t6, 56($sp)
lw $t5, 52($sp)
lw $t4, 48($sp)
lw $t3, 44($sp)
lw $t2, 40($sp)
lw $t1, 36($sp)
lw $t0, 32($sp)
move $s4, $v0
move $s0, $s4
b List_Print_L33
List_Print_L34:
nop
li $s3, 1
move $v0, $s3
lw $s7, 28($sp)
lw $s6, 24($sp)
lw $s5, 20($sp)
lw $s4, 16($sp)
lw $s3, 12($sp)
lw $s2, 8($sp)
lw $s1, 4($sp)
lw $s0, 0($sp)
lw $ra, -4($fp)
lw $fp, -8($fp)
addu $sp, $sp, 80
j $ra

.text
.globl	LL_Start
LL_Start:
sw $fp, -8($sp)
move $fp, $sp
sw $ra, -4($fp)
subu $sp, $sp, 80
sw $s0, 0($sp)
sw $s1, 4($sp)
sw $s2, 8($sp)
sw $s3, 12($sp)
sw $s4, 16($sp)
sw $s5, 20($sp)
sw $s6, 24($sp)
sw $s7, 28($sp)
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
sw $t0, 32($sp)
sw $t1, 36($sp)
sw $t2, 40($sp)
sw $t3, 44($sp)
sw $t4, 48($sp)
sw $t5, 52($sp)
sw $t6, 56($sp)
sw $t7, 60($sp)
sw $t8, 64($sp)
sw $t9, 68($sp)
jalr $s0
lw $t9, 68($sp)
lw $t8, 64($sp)
lw $t7, 60($sp)
lw $t6, 56($sp)
lw $t5, 52($sp)
lw $t4, 48($sp)
lw $t3, 44($sp)
lw $t2, 40($sp)
lw $t1, 36($sp)
lw $t0, 32($sp)
move $s3, $v0
move $v1, $s3
move $s0, $s1
lw $v0, 0($s0)
move $s1, $v0
lw $v0, 36($s1)
move $s1, $v0
move $a0, $s0
sw $t0, 32($sp)
sw $t1, 36($sp)
sw $t2, 40($sp)
sw $t3, 44($sp)
sw $t4, 48($sp)
sw $t5, 52($sp)
sw $t6, 56($sp)
sw $t7, 60($sp)
sw $t8, 64($sp)
sw $t9, 68($sp)
jalr $s1
lw $t9, 68($sp)
lw $t8, 64($sp)
lw $t7, 60($sp)
lw $t6, 56($sp)
lw $t5, 52($sp)
lw $t4, 48($sp)
lw $t3, 44($sp)
lw $t2, 40($sp)
lw $t1, 36($sp)
lw $t0, 32($sp)
move $s1, $v0
move $v1, $s1
lw $v0, 0($s0)
move $s1, $v0
lw $v0, 0($s1)
move $s1, $v0
move $a0, $s0
sw $t0, 32($sp)
sw $t1, 36($sp)
sw $t2, 40($sp)
sw $t3, 44($sp)
sw $t4, 48($sp)
sw $t5, 52($sp)
sw $t6, 56($sp)
sw $t7, 60($sp)
sw $t8, 64($sp)
sw $t9, 68($sp)
jalr $s1
lw $t9, 68($sp)
lw $t8, 64($sp)
lw $t7, 60($sp)
lw $t6, 56($sp)
lw $t5, 52($sp)
lw $t4, 48($sp)
lw $t3, 44($sp)
lw $t2, 40($sp)
lw $t1, 36($sp)
lw $t0, 32($sp)
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
sw $t0, 32($sp)
sw $t1, 36($sp)
sw $t2, 40($sp)
sw $t3, 44($sp)
sw $t4, 48($sp)
sw $t5, 52($sp)
sw $t6, 56($sp)
sw $t7, 60($sp)
sw $t8, 64($sp)
sw $t9, 68($sp)
jalr $s2
lw $t9, 68($sp)
lw $t8, 64($sp)
lw $t7, 60($sp)
lw $t6, 56($sp)
lw $t5, 52($sp)
lw $t4, 48($sp)
lw $t3, 44($sp)
lw $t2, 40($sp)
lw $t1, 36($sp)
lw $t0, 32($sp)
move $s5, $v0
move $v1, $s5
lw $v0, 0($s0)
move $s2, $v0
lw $v0, 28($s2)
move $s2, $v0
move $a0, $s0
move $a1, $s1
sw $t0, 32($sp)
sw $t1, 36($sp)
sw $t2, 40($sp)
sw $t3, 44($sp)
sw $t4, 48($sp)
sw $t5, 52($sp)
sw $t6, 56($sp)
sw $t7, 60($sp)
sw $t8, 64($sp)
sw $t9, 68($sp)
jalr $s2
lw $t9, 68($sp)
lw $t8, 64($sp)
lw $t7, 60($sp)
lw $t6, 56($sp)
lw $t5, 52($sp)
lw $t4, 48($sp)
lw $t3, 44($sp)
lw $t2, 40($sp)
lw $t1, 36($sp)
lw $t0, 32($sp)
move $s2, $v0
move $s0, $s2
lw $v0, 0($s0)
move $s2, $v0
lw $v0, 0($s2)
move $s2, $v0
move $a0, $s0
sw $t0, 32($sp)
sw $t1, 36($sp)
sw $t2, 40($sp)
sw $t3, 44($sp)
sw $t4, 48($sp)
sw $t5, 52($sp)
sw $t6, 56($sp)
sw $t7, 60($sp)
sw $t8, 64($sp)
sw $t9, 68($sp)
jalr $s2
lw $t9, 68($sp)
lw $t8, 64($sp)
lw $t7, 60($sp)
lw $t6, 56($sp)
lw $t5, 52($sp)
lw $t4, 48($sp)
lw $t3, 44($sp)
lw $t2, 40($sp)
lw $t1, 36($sp)
lw $t0, 32($sp)
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
sw $t0, 32($sp)
sw $t1, 36($sp)
sw $t2, 40($sp)
sw $t3, 44($sp)
sw $t4, 48($sp)
sw $t5, 52($sp)
sw $t6, 56($sp)
sw $t7, 60($sp)
sw $t8, 64($sp)
sw $t9, 68($sp)
jalr $s2
lw $t9, 68($sp)
lw $t8, 64($sp)
lw $t7, 60($sp)
lw $t6, 56($sp)
lw $t5, 52($sp)
lw $t4, 48($sp)
lw $t3, 44($sp)
lw $t2, 40($sp)
lw $t1, 36($sp)
lw $t0, 32($sp)
move $s6, $v0
move $v1, $s6
move $s2, $s1
lw $v0, 0($s0)
move $s3, $v0
lw $v0, 28($s3)
move $s3, $v0
move $a0, $s0
move $a1, $s1
sw $t0, 32($sp)
sw $t1, 36($sp)
sw $t2, 40($sp)
sw $t3, 44($sp)
sw $t4, 48($sp)
sw $t5, 52($sp)
sw $t6, 56($sp)
sw $t7, 60($sp)
sw $t8, 64($sp)
sw $t9, 68($sp)
jalr $s3
lw $t9, 68($sp)
lw $t8, 64($sp)
lw $t7, 60($sp)
lw $t6, 56($sp)
lw $t5, 52($sp)
lw $t4, 48($sp)
lw $t3, 44($sp)
lw $t2, 40($sp)
lw $t1, 36($sp)
lw $t0, 32($sp)
move $s3, $v0
move $s0, $s3
lw $v0, 0($s0)
move $s3, $v0
lw $v0, 0($s3)
move $s3, $v0
move $a0, $s0
sw $t0, 32($sp)
sw $t1, 36($sp)
sw $t2, 40($sp)
sw $t3, 44($sp)
sw $t4, 48($sp)
sw $t5, 52($sp)
sw $t6, 56($sp)
sw $t7, 60($sp)
sw $t8, 64($sp)
sw $t9, 68($sp)
jalr $s3
lw $t9, 68($sp)
lw $t8, 64($sp)
lw $t7, 60($sp)
lw $t6, 56($sp)
lw $t5, 52($sp)
lw $t4, 48($sp)
lw $t3, 44($sp)
lw $t2, 40($sp)
lw $t1, 36($sp)
lw $t0, 32($sp)
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
sw $t0, 32($sp)
sw $t1, 36($sp)
sw $t2, 40($sp)
sw $t3, 44($sp)
sw $t4, 48($sp)
sw $t5, 52($sp)
sw $t6, 56($sp)
sw $t7, 60($sp)
sw $t8, 64($sp)
sw $t9, 68($sp)
jalr $s3
lw $t9, 68($sp)
lw $t8, 64($sp)
lw $t7, 60($sp)
lw $t6, 56($sp)
lw $t5, 52($sp)
lw $t4, 48($sp)
lw $t3, 44($sp)
lw $t2, 40($sp)
lw $t1, 36($sp)
lw $t0, 32($sp)
move $s7, $v0
move $v1, $s7
lw $v0, 0($s0)
move $s3, $v0
lw $v0, 28($s3)
move $s3, $v0
move $a0, $s0
move $a1, $s1
sw $t0, 32($sp)
sw $t1, 36($sp)
sw $t2, 40($sp)
sw $t3, 44($sp)
sw $t4, 48($sp)
sw $t5, 52($sp)
sw $t6, 56($sp)
sw $t7, 60($sp)
sw $t8, 64($sp)
sw $t9, 68($sp)
jalr $s3
lw $t9, 68($sp)
lw $t8, 64($sp)
lw $t7, 60($sp)
lw $t6, 56($sp)
lw $t5, 52($sp)
lw $t4, 48($sp)
lw $t3, 44($sp)
lw $t2, 40($sp)
lw $t1, 36($sp)
lw $t0, 32($sp)
move $s3, $v0
move $s0, $s3
lw $v0, 0($s0)
move $s3, $v0
lw $v0, 0($s3)
move $s3, $v0
move $a0, $s0
sw $t0, 32($sp)
sw $t1, 36($sp)
sw $t2, 40($sp)
sw $t3, 44($sp)
sw $t4, 48($sp)
sw $t5, 52($sp)
sw $t6, 56($sp)
sw $t7, 60($sp)
sw $t8, 64($sp)
sw $t9, 68($sp)
jalr $s3
lw $t9, 68($sp)
lw $t8, 64($sp)
lw $t7, 60($sp)
lw $t6, 56($sp)
lw $t5, 52($sp)
lw $t4, 48($sp)
lw $t3, 44($sp)
lw $t2, 40($sp)
lw $t1, 36($sp)
lw $t0, 32($sp)
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
sw $t0, 32($sp)
sw $t1, 36($sp)
sw $t2, 40($sp)
sw $t3, 44($sp)
sw $t4, 48($sp)
sw $t5, 52($sp)
sw $t6, 56($sp)
sw $t7, 60($sp)
sw $t8, 64($sp)
sw $t9, 68($sp)
jalr $s4
lw $t9, 68($sp)
lw $t8, 64($sp)
lw $t7, 60($sp)
lw $t6, 56($sp)
lw $t5, 52($sp)
lw $t4, 48($sp)
lw $t3, 44($sp)
lw $t2, 40($sp)
lw $t1, 36($sp)
lw $t0, 32($sp)
move $s7, $v0
move $v1, $s7
lw $v0, 0($s0)
move $s4, $v0
lw $v0, 16($s4)
move $s4, $v0
move $a0, $s0
move $a1, $s2
sw $t0, 32($sp)
sw $t1, 36($sp)
sw $t2, 40($sp)
sw $t3, 44($sp)
sw $t4, 48($sp)
sw $t5, 52($sp)
sw $t6, 56($sp)
sw $t7, 60($sp)
sw $t8, 64($sp)
sw $t9, 68($sp)
jalr $s4
lw $t9, 68($sp)
lw $t8, 64($sp)
lw $t7, 60($sp)
lw $t6, 56($sp)
lw $t5, 52($sp)
lw $t4, 48($sp)
lw $t3, 44($sp)
lw $t2, 40($sp)
lw $t1, 36($sp)
lw $t0, 32($sp)
move $s4, $v0
move $a0, $s4
jal _print
lw $v0, 0($s0)
move $s4, $v0
lw $v0, 16($s4)
move $s4, $v0
move $a0, $s0
move $a1, $s3
sw $t0, 32($sp)
sw $t1, 36($sp)
sw $t2, 40($sp)
sw $t3, 44($sp)
sw $t4, 48($sp)
sw $t5, 52($sp)
sw $t6, 56($sp)
sw $t7, 60($sp)
sw $t8, 64($sp)
sw $t9, 68($sp)
jalr $s4
lw $t9, 68($sp)
lw $t8, 64($sp)
lw $t7, 60($sp)
lw $t6, 56($sp)
lw $t5, 52($sp)
lw $t4, 48($sp)
lw $t3, 44($sp)
lw $t2, 40($sp)
lw $t1, 36($sp)
lw $t0, 32($sp)
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
sw $t0, 32($sp)
sw $t1, 36($sp)
sw $t2, 40($sp)
sw $t3, 44($sp)
sw $t4, 48($sp)
sw $t5, 52($sp)
sw $t6, 56($sp)
sw $t7, 60($sp)
sw $t8, 64($sp)
sw $t9, 68($sp)
jalr $s3
lw $t9, 68($sp)
lw $t8, 64($sp)
lw $t7, 60($sp)
lw $t6, 56($sp)
lw $t5, 52($sp)
lw $t4, 48($sp)
lw $t3, 44($sp)
lw $t2, 40($sp)
lw $t1, 36($sp)
lw $t0, 32($sp)
move $s7, $v0
move $v1, $s7
lw $v0, 0($s0)
move $s3, $v0
lw $v0, 28($s3)
move $s3, $v0
move $a0, $s0
move $a1, $s1
sw $t0, 32($sp)
sw $t1, 36($sp)
sw $t2, 40($sp)
sw $t3, 44($sp)
sw $t4, 48($sp)
sw $t5, 52($sp)
sw $t6, 56($sp)
sw $t7, 60($sp)
sw $t8, 64($sp)
sw $t9, 68($sp)
jalr $s3
lw $t9, 68($sp)
lw $t8, 64($sp)
lw $t7, 60($sp)
lw $t6, 56($sp)
lw $t5, 52($sp)
lw $t4, 48($sp)
lw $t3, 44($sp)
lw $t2, 40($sp)
lw $t1, 36($sp)
lw $t0, 32($sp)
move $s3, $v0
move $s0, $s3
lw $v0, 0($s0)
move $s3, $v0
lw $v0, 0($s3)
move $s3, $v0
move $a0, $s0
sw $t0, 32($sp)
sw $t1, 36($sp)
sw $t2, 40($sp)
sw $t3, 44($sp)
sw $t4, 48($sp)
sw $t5, 52($sp)
sw $t6, 56($sp)
sw $t7, 60($sp)
sw $t8, 64($sp)
sw $t9, 68($sp)
jalr $s3
lw $t9, 68($sp)
lw $t8, 64($sp)
lw $t7, 60($sp)
lw $t6, 56($sp)
lw $t5, 52($sp)
lw $t4, 48($sp)
lw $t3, 44($sp)
lw $t2, 40($sp)
lw $t1, 36($sp)
lw $t0, 32($sp)
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
sw $t0, 32($sp)
sw $t1, 36($sp)
sw $t2, 40($sp)
sw $t3, 44($sp)
sw $t4, 48($sp)
sw $t5, 52($sp)
sw $t6, 56($sp)
sw $t7, 60($sp)
sw $t8, 64($sp)
sw $t9, 68($sp)
jalr $s3
lw $t9, 68($sp)
lw $t8, 64($sp)
lw $t7, 60($sp)
lw $t6, 56($sp)
lw $t5, 52($sp)
lw $t4, 48($sp)
lw $t3, 44($sp)
lw $t2, 40($sp)
lw $t1, 36($sp)
lw $t0, 32($sp)
move $s2, $v0
move $s0, $s2
lw $v0, 0($s0)
move $s2, $v0
lw $v0, 0($s2)
move $s2, $v0
move $a0, $s0
sw $t0, 32($sp)
sw $t1, 36($sp)
sw $t2, 40($sp)
sw $t3, 44($sp)
sw $t4, 48($sp)
sw $t5, 52($sp)
sw $t6, 56($sp)
sw $t7, 60($sp)
sw $t8, 64($sp)
sw $t9, 68($sp)
jalr $s2
lw $t9, 68($sp)
lw $t8, 64($sp)
lw $t7, 60($sp)
lw $t6, 56($sp)
lw $t5, 52($sp)
lw $t4, 48($sp)
lw $t3, 44($sp)
lw $t2, 40($sp)
lw $t1, 36($sp)
lw $t0, 32($sp)
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
sw $t0, 32($sp)
sw $t1, 36($sp)
sw $t2, 40($sp)
sw $t3, 44($sp)
sw $t4, 48($sp)
sw $t5, 52($sp)
sw $t6, 56($sp)
sw $t7, 60($sp)
sw $t8, 64($sp)
sw $t9, 68($sp)
jalr $s2
lw $t9, 68($sp)
lw $t8, 64($sp)
lw $t7, 60($sp)
lw $t6, 56($sp)
lw $t5, 52($sp)
lw $t4, 48($sp)
lw $t3, 44($sp)
lw $t2, 40($sp)
lw $t1, 36($sp)
lw $t0, 32($sp)
move $s1, $v0
move $s0, $s1
lw $v0, 0($s0)
move $s1, $v0
lw $v0, 0($s1)
move $s1, $v0
move $a0, $s0
sw $t0, 32($sp)
sw $t1, 36($sp)
sw $t2, 40($sp)
sw $t3, 44($sp)
sw $t4, 48($sp)
sw $t5, 52($sp)
sw $t6, 56($sp)
sw $t7, 60($sp)
sw $t8, 64($sp)
sw $t9, 68($sp)
jalr $s1
lw $t9, 68($sp)
lw $t8, 64($sp)
lw $t7, 60($sp)
lw $t6, 56($sp)
lw $t5, 52($sp)
lw $t4, 48($sp)
lw $t3, 44($sp)
lw $t2, 40($sp)
lw $t1, 36($sp)
lw $t0, 32($sp)
move $s0, $v0
move $v1, $s0
li $s1, 44440000
move $a0, $s1
jal _print
li $s0, 0
move $v0, $s0
lw $s7, 28($sp)
lw $s6, 24($sp)
lw $s5, 20($sp)
lw $s4, 16($sp)
lw $s3, 12($sp)
lw $s2, 8($sp)
lw $s1, 4($sp)
lw $s0, 0($sp)
lw $ra, -4($fp)
lw $fp, -8($fp)
addu $sp, $sp, 80
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

