	.arch armv8-a
	.file	"3066.c"
	.text
	.global	A
	.bss
	.align	3
	.type	A, %object
	.size	A, 8
A:
	.zero	8
	.global	B
	.align	3
	.type	B, %object
	.size	B, 8
B:
	.zero	8
	.global	re
	.align	3
	.type	re, %object
	.size	re, 8
re:
	.zero	8
	.global	su
	.align	3
	.type	su, %object
	.size	su, 8
su:
	.zero	8
	.global	lt
	.align	3
	.type	lt, %object
	.size	lt, 8
lt:
	.zero	8
	.global	r
	.align	3
	.type	r, %object
	.size	r, 8
r:
	.zero	8
	.global	s
	.align	3
	.type	s, %object
	.size	s, 8
s:
	.zero	8
	.section	.rodata
	.align	3
.LC0:
	.string	"%.0lf\n"
	.align	3
.LC1:
	.string	"%d%d%d%d"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	b	.L2
.L5:
	ldr	w0, [sp, 28]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	str	w0, [sp, 28]
	ldr	w1, [sp, 32]
	ldr	w0, [sp, 20]
	sub	w1, w1, w0
	ldr	w0, [sp, 24]
	mul	w1, w1, w0
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	sdiv	w0, w1, w0
	str	w0, [sp, 40]
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 40]
	sdiv	w2, w0, w1
	mul	w1, w2, w1
	sub	w0, w0, w1
	ldr	w1, [sp, 40]
	sub	w0, w1, w0
	str	w0, [sp, 40]
	ldr	w0, [sp, 24]
	ldr	w1, [sp, 40]
	sdiv	w1, w1, w0
	ldr	w0, [sp, 20]
	add	w0, w1, w0
	str	w0, [sp, 36]
	ldr	w1, [sp, 32]
	ldr	w0, [sp, 40]
	sub	w1, w1, w0
	ldr	w0, [sp, 36]
	sub	w0, w1, w0
	sub	w0, w0, #1
	str	w0, [sp, 44]
	ldr	w0, [sp, 44]
	scvtf	d1, w0
	ldr	w0, [sp, 44]
	scvtf	d0, w0
	fmul	d1, d1, d0
	ldr	w0, [sp, 24]
	scvtf	d0, w0
	fdiv	d0, d1, d0
	adrp	x0, A
	add	x0, x0, :lo12:A
	str	d0, [x0]
	adrp	x0, A
	add	x0, x0, :lo12:A
	ldr	d0, [x0]
	adrp	x0, B
	add	x0, x0, :lo12:B
	str	d0, [x0]
	ldr	w1, [sp, 32]
	ldr	w0, [sp, 36]
	sub	w0, w1, w0
	sub	w0, w0, #1
	str	w0, [sp, 40]
	ldr	w0, [sp, 24]
	scvtf	d0, w0
	fmov	d1, 1.0e+0
	fdiv	d0, d1, d0
	adrp	x0, r
	add	x0, x0, :lo12:r
	str	d0, [x0]
	adrp	x0, r
	add	x0, x0, :lo12:r
	ldr	d0, [x0]
	adrp	x0, re
	add	x0, x0, :lo12:re
	str	d0, [x0]
	ldr	w0, [sp, 24]
	scvtf	d0, w0
	adrp	x0, su
	add	x0, x0, :lo12:su
	str	d0, [x0]
	adrp	x0, su
	add	x0, x0, :lo12:su
	ldr	d0, [x0]
	adrp	x0, s
	add	x0, x0, :lo12:s
	str	d0, [x0]
	mov	w0, 1
	str	w0, [sp, 44]
	b	.L3
.L4:
	adrp	x0, re
	add	x0, x0, :lo12:re
	ldr	d1, [x0]
	adrp	x0, r
	add	x0, x0, :lo12:r
	ldr	d0, [x0]
	fmul	d0, d1, d0
	adrp	x0, re
	add	x0, x0, :lo12:re
	str	d0, [x0]
	adrp	x0, su
	add	x0, x0, :lo12:su
	ldr	d1, [x0]
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldr	d0, [x0]
	fmul	d0, d1, d0
	adrp	x0, su
	add	x0, x0, :lo12:su
	str	d0, [x0]
	adrp	x0, B
	add	x0, x0, :lo12:B
	ldr	d1, [x0]
	adrp	x0, A
	add	x0, x0, :lo12:A
	ldr	d0, [x0]
	fmul	d0, d1, d0
	adrp	x0, B
	add	x0, x0, :lo12:B
	str	d0, [x0]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L3:
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L4
	ldr	w0, [sp, 40]
	scvtf	d1, w0
	adrp	x0, re
	add	x0, x0, :lo12:re
	ldr	d0, [x0]
	fmul	d1, d1, d0
	ldr	w0, [sp, 36]
	scvtf	d2, w0
	adrp	x0, su
	add	x0, x0, :lo12:su
	ldr	d0, [x0]
	fmul	d0, d2, d0
	fadd	d1, d1, d0
	adrp	x0, B
	add	x0, x0, :lo12:B
	ldr	d0, [x0]
	fadd	d0, d1, d0
	adrp	x0, lt
	add	x0, x0, :lo12:lt
	str	d0, [x0]
	adrp	x0, lt
	add	x0, x0, :lo12:lt
	ldr	d0, [x0]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
.L2:
	add	x3, sp, 20
	add	x2, sp, 24
	add	x1, sp, 28
	add	x0, sp, 32
	mov	x4, x3
	mov	x3, x2
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	cmn	w0, #1
	bne	.L5
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
