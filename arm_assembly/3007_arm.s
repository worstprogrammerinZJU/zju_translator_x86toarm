	.arch armv8-a
	.file	"3007.c"
	.text
	.global	len
	.bss
	.align	2
	.type	len, %object
	.size	len, 4
len:
	.zero	4
	.global	num
	.align	2
	.type	num, %object
	.size	num, 4
num:
	.zero	4
	.global	str
	.align	3
	.type	str, %object
	.size	str, 36500
str:
	.zero	36500
	.global	s1
	.align	3
	.type	s1, %object
	.size	s1, 72
s1:
	.zero	72
	.global	s2
	.align	3
	.type	s2, %object
	.size	s2, 72
s2:
	.zero	72
	.global	t
	.align	3
	.type	t, %object
	.size	t, 73
t:
	.zero	73
	.global	r
	.align	3
	.type	r, %object
	.size	r, 73
r:
	.zero	73
	.text
	.align	2
	.global	reversal
	.type	reversal, %function
reversal:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]
	str	w1, [sp, 4]
	str	wzr, [sp, 28]
	b	.L2
.L3:
	ldrsw	x0, [sp, 28]
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldrb	w0, [x0]
	strb	w0, [sp, 27]
	ldr	w0, [sp, 4]
	sub	w1, w0, #1
	ldr	w0, [sp, 28]
	sub	w0, w1, w0
	sxtw	x0, w0
	ldr	x1, [sp, 8]
	add	x1, x1, x0
	ldrsw	x0, [sp, 28]
	ldr	x2, [sp, 8]
	add	x0, x2, x0
	ldrb	w1, [x1]
	strb	w1, [x0]
	ldr	w0, [sp, 4]
	sub	w1, w0, #1
	ldr	w0, [sp, 28]
	sub	w0, w1, w0
	sxtw	x0, w0
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldrb	w1, [sp, 27]
	strb	w1, [x0]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L2:
	ldr	w0, [sp, 28]
	lsl	w1, w0, 1
	ldr	w0, [sp, 4]
	sub	w0, w0, #1
	cmp	w1, w0
	blt	.L3
	nop
	nop
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	reversal, .-reversal
	.align	2
	.global	store
	.type	store, %function
store:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	w2, [sp, 28]
	str	wzr, [sp, 60]
	b	.L5
.L6:
	ldrsw	x0, [sp, 60]
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldrb	w2, [x0]
	adrp	x0, r
	add	x1, x0, :lo12:r
	ldrsw	x0, [sp, 60]
	strb	w2, [x1, x0]
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
.L5:
	ldr	w1, [sp, 60]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	blt	.L6
	b	.L7
.L8:
	ldr	w1, [sp, 60]
	ldr	w0, [sp, 28]
	sub	w0, w1, w0
	sxtw	x0, w0
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	ldrb	w2, [x0]
	adrp	x0, r
	add	x1, x0, :lo12:r
	ldrsw	x0, [sp, 60]
	strb	w2, [x1, x0]
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
.L7:
	adrp	x0, len
	add	x0, x0, :lo12:len
	ldr	w0, [x0]
	ldr	w1, [sp, 60]
	cmp	w1, w0
	blt	.L8
	adrp	x0, r
	add	x1, x0, :lo12:r
	ldrsw	x0, [sp, 60]
	strb	wzr, [x1, x0]
	str	wzr, [sp, 60]
	b	.L9
.L12:
	ldrsw	x1, [sp, 60]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	adrp	x1, str
	add	x1, x1, :lo12:str
	add	x0, x0, x1
	mov	x1, x0
	adrp	x0, r
	add	x0, x0, :lo12:r
	bl	strcmp
	cmp	w0, 0
	beq	.L14
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
.L9:
	adrp	x0, num
	add	x0, x0, :lo12:num
	ldr	w0, [x0]
	ldr	w1, [sp, 60]
	cmp	w1, w0
	blt	.L12
	b	.L11
.L14:
	nop
.L11:
	adrp	x0, num
	add	x0, x0, :lo12:num
	ldr	w0, [x0]
	ldr	w1, [sp, 60]
	cmp	w1, w0
	bne	.L15
	adrp	x0, num
	add	x0, x0, :lo12:num
	ldr	w0, [x0]
	add	w2, w0, 1
	adrp	x1, num
	add	x1, x1, :lo12:num
	str	w2, [x1]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	adrp	x1, str
	add	x1, x1, :lo12:str
	add	x2, x0, x1
	adrp	x0, r
	add	x1, x0, :lo12:r
	mov	x0, x2
	bl	strcpy
.L15:
	nop
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	store, .-store
	.section	.rodata
	.align	3
.LC0:
	.string	"%d"
	.align	3
.LC1:
	.string	"%s"
	.align	3
.LC2:
	.string	"%d\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB2:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	add	x0, sp, 16
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 28]
	b	.L17
.L24:
	adrp	x0, t
	add	x1, x0, :lo12:t
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	adrp	x0, t
	add	x1, x0, :lo12:t
	adrp	x0, str
	add	x0, x0, :lo12:str
	bl	strcpy
	adrp	x0, num
	add	x0, x0, :lo12:num
	mov	w1, 1
	str	w1, [x0]
	adrp	x0, t
	add	x0, x0, :lo12:t
	bl	strlen
	mov	w1, w0
	adrp	x0, len
	add	x0, x0, :lo12:len
	str	w1, [x0]
	mov	w0, 1
	str	w0, [sp, 24]
	b	.L18
.L23:
	str	wzr, [sp, 20]
	b	.L19
.L20:
	adrp	x0, t
	add	x1, x0, :lo12:t
	ldrsw	x0, [sp, 20]
	ldrb	w2, [x1, x0]
	adrp	x0, s1
	add	x1, x0, :lo12:s1
	ldrsw	x0, [sp, 20]
	strb	w2, [x1, x0]
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	str	w0, [sp, 20]
.L19:
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 24]
	cmp	w1, w0
	blt	.L20
	adrp	x0, s1
	add	x1, x0, :lo12:s1
	ldrsw	x0, [sp, 20]
	strb	wzr, [x1, x0]
	b	.L21
.L22:
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 24]
	sub	w3, w1, w0
	adrp	x0, t
	add	x1, x0, :lo12:t
	ldrsw	x0, [sp, 20]
	ldrb	w2, [x1, x0]
	adrp	x0, s2
	add	x1, x0, :lo12:s2
	sxtw	x0, w3
	strb	w2, [x1, x0]
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	str	w0, [sp, 20]
.L21:
	adrp	x0, len
	add	x0, x0, :lo12:len
	ldr	w0, [x0]
	ldr	w1, [sp, 20]
	cmp	w1, w0
	blt	.L22
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 24]
	sub	w2, w1, w0
	adrp	x0, s2
	add	x1, x0, :lo12:s2
	sxtw	x0, w2
	strb	wzr, [x1, x0]
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 24]
	sub	w0, w1, w0
	mov	w2, w0
	adrp	x0, s1
	add	x1, x0, :lo12:s1
	adrp	x0, s2
	add	x0, x0, :lo12:s2
	bl	store
	ldr	w1, [sp, 24]
	adrp	x0, s1
	add	x0, x0, :lo12:s1
	bl	reversal
	ldr	w2, [sp, 24]
	adrp	x0, s2
	add	x1, x0, :lo12:s2
	adrp	x0, s1
	add	x0, x0, :lo12:s1
	bl	store
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 24]
	sub	w0, w1, w0
	mov	w2, w0
	adrp	x0, s1
	add	x1, x0, :lo12:s1
	adrp	x0, s2
	add	x0, x0, :lo12:s2
	bl	store
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 24]
	sub	w0, w1, w0
	mov	w1, w0
	adrp	x0, s2
	add	x0, x0, :lo12:s2
	bl	reversal
	ldr	w2, [sp, 24]
	adrp	x0, s2
	add	x1, x0, :lo12:s2
	adrp	x0, s1
	add	x0, x0, :lo12:s1
	bl	store
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 24]
	sub	w0, w1, w0
	mov	w2, w0
	adrp	x0, s1
	add	x1, x0, :lo12:s1
	adrp	x0, s2
	add	x0, x0, :lo12:s2
	bl	store
	ldr	w1, [sp, 24]
	adrp	x0, s1
	add	x0, x0, :lo12:s1
	bl	reversal
	ldr	w2, [sp, 24]
	adrp	x0, s2
	add	x1, x0, :lo12:s2
	adrp	x0, s1
	add	x0, x0, :lo12:s1
	bl	store
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 24]
	sub	w0, w1, w0
	mov	w2, w0
	adrp	x0, s1
	add	x1, x0, :lo12:s1
	adrp	x0, s2
	add	x0, x0, :lo12:s2
	bl	store
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
.L18:
	adrp	x0, len
	add	x0, x0, :lo12:len
	ldr	w0, [x0]
	ldr	w1, [sp, 24]
	cmp	w1, w0
	blt	.L23
	adrp	x0, num
	add	x0, x0, :lo12:num
	ldr	w0, [x0]
	mov	w1, w0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L17:
	ldr	w0, [sp, 16]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L24
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
