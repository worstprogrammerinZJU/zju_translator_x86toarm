e:
pi:
main:
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	stp	d8, d9, [sp, 16]
	add	x0, sp, 44
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 60]
	b	.L2
	add	x0, sp, 40
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 40]
	cmp	w0, 3
	bgt	.L3
	fmov	d0, 1.0e+0
	str	d0, [sp, 48]
	b	.L4
	adrp	x0, .LC2
	ldr	d0, [x0, #:lo12:.LC2]
	fadd	d1, d0, d0
	ldr	w0, [sp, 40]
	scvtf	d0, w0
	fmul	d0, d1, d0
	bl	sqrt
	bl	log10
	fmov	d9, d0
	ldr	w0, [sp, 40]
	scvtf	d8, w0
	ldr	w0, [sp, 40]
	scvtf	d0, w0
	adrp	x0, .LC3
	ldr	d1, [x0, #:lo12:.LC3]
	fdiv	d0, d0, d1
	bl	log10
	fmul	d0, d8, d0
	fadd	d1, d9, d0
	fmov	d0, 1.0e+0
	fadd	d0, d1, d0
	str	d0, [sp, 48]
	ldr	d0, [sp, 48]
	fcvtzs	w0, d0
	mov	w1, w0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
	ldr	w0, [sp, 44]
	ldr	w1, [sp, 60]
	cmp	w1, w0
	blt	.L5
	mov	w0, 0
	ldp	d8, d9, [sp, 16]
	ldp	x29, x30, [sp], 64
	ret