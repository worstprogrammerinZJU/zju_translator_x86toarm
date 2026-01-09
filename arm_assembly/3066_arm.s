A:
B:
re:
su:
lt:
r:
s:
main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	b	.L2
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
	ret