main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	add	x2, sp, 32
	add	x1, sp, 24
	add	x0, sp, 36
	mov	x3, x2
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 36]
	scvtf	d0, w0
	mov	x0, 4636737291354636288
	fmov	d1, x0
	fdiv	d1, d0, d1
	fmov	d0, 1.0e+0
	fadd	d0, d1, d0
	str	d0, [sp, 40]
	str	wzr, [sp, 36]
	b	.L2
	ldr	d1, [sp, 24]
	ldr	d0, [sp, 40]
	fmul	d0, d1, d0
	str	d0, [sp, 24]
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 32]
	cmp	w1, w0
	blt	.L3
	ldr	d0, [sp, 24]
	fcvtzs	w0, d0
	mov	w1, w0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret