.text
.globl	main
main:
move $fp, $sp
subu $sp, $sp, 44
sw $ra, -4($fp)
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
jalr Test35
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
.globl	Test35
Test35:
sw $fp, -8($sp)
move $fp, $sp
sw $ra, -4($fp)
subu $sp, $sp, 416
sw $s0, 376($sp)
sw $s1, 380($sp)
sw $s2, 384($sp)
sw $s3, 388($sp)
sw $s4, 392($sp)
sw $s5, 396($sp)
sw $s6, 400($sp)
sw $s7, 404($sp)
li $s0, 0
li $s1, 2
li $s2, 4
li $s3, 6
li $s4, 8
li $s5, 10
li $s6, 12
li $s7, 14
li $t0, 16
li $t1, 18
li $t2, 20
li $t3, 22
li $t4, 24
li $t5, 26
li $t6, 28
li $t7, 30
li $t8, 32
li $t9, 34
li $v0, 36
sw $v0, 0($sp)
li $v0, 38
sw $v0, 4($sp)
li $v0, 40
sw $v0, 8($sp)
li $v0, 42
sw $v0, 12($sp)
li $v0, 44
sw $v0, 16($sp)
li $v0, 46
sw $v0, 20($sp)
li $v0, 48
sw $v0, 24($sp)
li $v0, 50
sw $v0, 28($sp)
li $v0, 52
sw $v0, 32($sp)
li $v0, 54
sw $v0, 36($sp)
li $v0, 56
sw $v0, 40($sp)
li $v0, 58
sw $v0, 44($sp)
li $v0, 60
sw $v0, 48($sp)
li $v0, 62
sw $v0, 52($sp)
li $v0, 64
sw $v0, 56($sp)
li $v0, 66
sw $v0, 60($sp)
li $v0, 68
sw $v0, 64($sp)
li $v0, 70
sw $v0, 68($sp)
li $v0, 72
sw $v0, 72($sp)
li $v0, 74
sw $v0, 76($sp)
li $v0, 76
sw $v0, 80($sp)
li $v0, 78
sw $v0, 84($sp)
li $v0, 80
sw $v0, 88($sp)
li $v0, 82
sw $v0, 92($sp)
li $v0, 84
sw $v0, 96($sp)
li $v0, 86
sw $v0, 100($sp)
li $v0, 88
sw $v0, 104($sp)
li $v0, 90
sw $v0, 108($sp)
li $v0, 92
sw $v0, 112($sp)
li $v0, 94
sw $v0, 116($sp)
li $v0, 96
sw $v0, 120($sp)
li $v0, 98
sw $v0, 124($sp)
li $v0, 100
sw $v0, 128($sp)
li $v0, 102
sw $v0, 132($sp)
li $v0, 104
sw $v0, 136($sp)
li $v0, 106
sw $v0, 140($sp)
li $v0, 108
sw $v0, 144($sp)
li $v0, 110
sw $v0, 148($sp)
li $v0, 112
sw $v0, 152($sp)
li $v0, 114
sw $v0, 156($sp)
li $v0, 116
sw $v0, 160($sp)
li $v0, 118
sw $v0, 164($sp)
li $v0, 120
sw $v0, 168($sp)
li $v0, 122
sw $v0, 172($sp)
li $v0, 124
sw $v0, 176($sp)
li $v0, 126
sw $v0, 180($sp)
li $v0, 128
sw $v0, 184($sp)
li $v0, 130
sw $v0, 188($sp)
li $v0, 132
sw $v0, 192($sp)
li $v0, 134
sw $v0, 196($sp)
li $v0, 136
sw $v0, 200($sp)
li $v0, 138
sw $v0, 204($sp)
li $v0, 140
sw $v0, 208($sp)
li $v0, 142
sw $v0, 212($sp)
li $v0, 144
sw $v0, 216($sp)
li $v0, 146
sw $v0, 220($sp)
li $v0, 148
sw $v0, 224($sp)
li $v0, 150
sw $v0, 228($sp)
li $v0, 152
sw $v0, 232($sp)
li $v0, 154
sw $v0, 236($sp)
li $v0, 156
sw $v0, 240($sp)
li $v0, 158
sw $v0, 244($sp)
li $v0, 160
sw $v0, 248($sp)
li $v0, 162
sw $v0, 252($sp)
li $v0, 164
sw $v0, 256($sp)
li $v0, 166
sw $v0, 260($sp)
li $v0, 168
sw $v0, 264($sp)
li $v0, 170
sw $v0, 268($sp)
li $v0, 172
sw $v0, 272($sp)
li $v0, 174
sw $v0, 276($sp)
li $v0, 176
sw $v0, 280($sp)
li $v0, 178
sw $v0, 284($sp)
li $v0, 180
sw $v0, 288($sp)
li $v0, 182
sw $v0, 292($sp)
li $v0, 184
sw $v0, 296($sp)
li $v0, 186
sw $v0, 300($sp)
li $v0, 188
sw $v0, 304($sp)
li $v0, 190
sw $v0, 308($sp)
li $v0, 192
sw $v0, 312($sp)
li $v0, 194
sw $v0, 316($sp)
li $v0, 196
sw $v0, 320($sp)
li $v0, 198
sw $v0, 324($sp)
li $v0, 200
sw $v0, 328($sp)
li $a0, 69420
jal _print
li $v0, 72
sw $v0, 332($sp)
lw $v0, 332($sp)
move $a0, $v0
jal _halloc
move $v0, $v0
sw $v0, 336($sp)
lw $v1, 328($sp)
lw $v0, 324($sp)
mul $v0, $v1, $v0
sw $v0, 340($sp)
lw $v1, 328($sp)
lw $v0, 324($sp)
add $v0, $v1, $v0
sw $v0, 344($sp)
lw $v1, 328($sp)
lw $v0, 324($sp)
sub $v0, $v1, $v0
sw $v0, 348($sp)
lw $v1, 328($sp)
lw $v0, 324($sp)
div$v0, $v1, $v0
sw $v0, 352($sp)
lw $v1, 328($sp)
lw $v0, 324($sp)
sne $v0, $v1, $v0
sw $v0, 356($sp)
lw $v1, 328($sp)
lw $v0, 324($sp)
sle $v0, $v1, $v0
sw $v0, 360($sp)
lw $v0, 336($sp)
lw $v1, 340($sp)
sw $v1, 32($v0)
lw $v0, 336($sp)
lw $v0, 32($v0)
move $v0, $v0
sw $v0, 364($sp)
lw $v1, 340($sp)
lw $v0, 364($sp)
sne $v0, $v1, $v0
sw $v0, 368($sp)
lw $v1, 340($sp)
lw $v0, 364($sp)
sle $v0, $v1, $v0
sw $v0, 372($sp)
lw $v0, 364($sp)
move $a0, $v0
jal _print
li $a0, 42069
jal _print
move $a0, $s0
jal _print
move $a0, $s1
jal _print
move $a0, $s2
jal _print
move $a0, $s3
jal _print
move $a0, $s4
jal _print
move $a0, $s5
jal _print
move $a0, $s6
jal _print
move $a0, $s7
jal _print
move $a0, $t0
jal _print
move $a0, $t1
jal _print
move $a0, $t2
jal _print
move $a0, $t3
jal _print
move $a0, $t4
jal _print
move $a0, $t5
jal _print
move $a0, $t6
jal _print
move $a0, $t7
jal _print
move $a0, $t8
jal _print
move $a0, $t9
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
lw $v0, 20($sp)
move $a0, $v0
jal _print
lw $v0, 24($sp)
move $a0, $v0
jal _print
lw $v0, 28($sp)
move $a0, $v0
jal _print
lw $v0, 32($sp)
move $a0, $v0
jal _print
lw $v0, 36($sp)
move $a0, $v0
jal _print
lw $v0, 40($sp)
move $a0, $v0
jal _print
lw $v0, 44($sp)
move $a0, $v0
jal _print
lw $v0, 48($sp)
move $a0, $v0
jal _print
lw $v0, 52($sp)
move $a0, $v0
jal _print
lw $v0, 56($sp)
move $a0, $v0
jal _print
lw $v0, 60($sp)
move $a0, $v0
jal _print
lw $v0, 64($sp)
move $a0, $v0
jal _print
lw $v0, 68($sp)
move $a0, $v0
jal _print
lw $v0, 72($sp)
move $a0, $v0
jal _print
lw $v0, 76($sp)
move $a0, $v0
jal _print
lw $v0, 80($sp)
move $a0, $v0
jal _print
lw $v0, 84($sp)
move $a0, $v0
jal _print
lw $v0, 88($sp)
move $a0, $v0
jal _print
lw $v0, 92($sp)
move $a0, $v0
jal _print
lw $v0, 96($sp)
move $a0, $v0
jal _print
lw $v0, 100($sp)
move $a0, $v0
jal _print
lw $v0, 104($sp)
move $a0, $v0
jal _print
lw $v0, 108($sp)
move $a0, $v0
jal _print
lw $v0, 112($sp)
move $a0, $v0
jal _print
lw $v0, 116($sp)
move $a0, $v0
jal _print
lw $v0, 120($sp)
move $a0, $v0
jal _print
lw $v0, 124($sp)
move $a0, $v0
jal _print
lw $v0, 128($sp)
move $a0, $v0
jal _print
lw $v0, 132($sp)
move $a0, $v0
jal _print
lw $v0, 136($sp)
move $a0, $v0
jal _print
lw $v0, 140($sp)
move $a0, $v0
jal _print
lw $v0, 144($sp)
move $a0, $v0
jal _print
lw $v0, 148($sp)
move $a0, $v0
jal _print
lw $v0, 152($sp)
move $a0, $v0
jal _print
lw $v0, 156($sp)
move $a0, $v0
jal _print
lw $v0, 160($sp)
move $a0, $v0
jal _print
lw $v0, 164($sp)
move $a0, $v0
jal _print
lw $v0, 168($sp)
move $a0, $v0
jal _print
lw $v0, 172($sp)
move $a0, $v0
jal _print
lw $v0, 176($sp)
move $a0, $v0
jal _print
lw $v0, 180($sp)
move $a0, $v0
jal _print
lw $v0, 184($sp)
move $a0, $v0
jal _print
lw $v0, 188($sp)
move $a0, $v0
jal _print
lw $v0, 192($sp)
move $a0, $v0
jal _print
lw $v0, 196($sp)
move $a0, $v0
jal _print
lw $v0, 200($sp)
move $a0, $v0
jal _print
lw $v0, 204($sp)
move $a0, $v0
jal _print
lw $v0, 208($sp)
move $a0, $v0
jal _print
lw $v0, 212($sp)
move $a0, $v0
jal _print
lw $v0, 216($sp)
move $a0, $v0
jal _print
lw $v0, 220($sp)
move $a0, $v0
jal _print
lw $v0, 224($sp)
move $a0, $v0
jal _print
lw $v0, 228($sp)
move $a0, $v0
jal _print
lw $v0, 232($sp)
move $a0, $v0
jal _print
lw $v0, 236($sp)
move $a0, $v0
jal _print
lw $v0, 240($sp)
move $a0, $v0
jal _print
lw $v0, 244($sp)
move $a0, $v0
jal _print
lw $v0, 248($sp)
move $a0, $v0
jal _print
lw $v0, 252($sp)
move $a0, $v0
jal _print
lw $v0, 256($sp)
move $a0, $v0
jal _print
lw $v0, 260($sp)
move $a0, $v0
jal _print
lw $v0, 264($sp)
move $a0, $v0
jal _print
lw $v0, 268($sp)
move $a0, $v0
jal _print
lw $v0, 272($sp)
move $a0, $v0
jal _print
lw $v0, 276($sp)
move $a0, $v0
jal _print
lw $v0, 280($sp)
move $a0, $v0
jal _print
lw $v0, 284($sp)
move $a0, $v0
jal _print
lw $v0, 288($sp)
move $a0, $v0
jal _print
lw $v0, 292($sp)
move $a0, $v0
jal _print
lw $v0, 296($sp)
move $a0, $v0
jal _print
lw $v0, 300($sp)
move $a0, $v0
jal _print
lw $v0, 304($sp)
move $a0, $v0
jal _print
lw $v0, 308($sp)
move $a0, $v0
jal _print
lw $v0, 312($sp)
move $a0, $v0
jal _print
lw $v0, 316($sp)
move $a0, $v0
jal _print
lw $v0, 320($sp)
move $a0, $v0
jal _print
lw $v0, 324($sp)
move $a0, $v0
jal _print
lw $v0, 328($sp)
move $a0, $v0
jal _print
li $a0, 69
jal _print
lw $v0, 340($sp)
move $a0, $v0
jal _print
lw $v0, 332($sp)
move $a0, $v0
jal _print
lw $v1, 336($sp)
add $v1, $v1, 4
lw $v0, 364($sp)
move $a0, $v0
jal _print
lw $v0, 344($sp)
move $a0, $v0
jal _print
lw $v0, 348($sp)
move $a0, $v0
jal _print
lw $v0, 352($sp)
move $a0, $v0
jal _print
lw $v0, 356($sp)
move $a0, $v0
jal _print
lw $v0, 360($sp)
move $a0, $v0
jal _print
lw $v0, 368($sp)
move $a0, $v0
jal _print
lw $v0, 372($sp)
move $a0, $v0
jal _print
lw $v0, 340($sp)
move $v0, $v0
lw $s7, 404($sp)
lw $s6, 400($sp)
lw $s5, 396($sp)
lw $s4, 392($sp)
lw $s3, 388($sp)
lw $s2, 384($sp)
lw $s1, 380($sp)
lw $s0, 376($sp)
lw $ra, -4($fp)
lw $fp, -8($fp)
addu $sp, $sp, 416
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

