main:
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	xzr, [sp, 48]
	str	xzr, [sp, 40]
	add	x0, sp, 36
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	mov	w0, 1
	str	w0, [sp, 60]
	b	.L2
	add	x1, sp, 32
	add	x0, sp, 24
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldr	w0, [sp, 32]
	scvtf	d0, w0
	adrp	x0, .LC3
	ldr	d1, [x0, #:lo12:.LC3]
	fdiv	d0, d1, d0
	bl	sin
	str	d0, [sp, 40]
	ldr	d1, [sp, 24]
	ldr	d0, [sp, 40]
	fmul	d1, d1, d0
	ldr	d2, [sp, 40]
	fmov	d0, 1.0e+0
	fadd	d0, d2, d0
	fdiv	d0, d1, d0
	str	d0, [sp, 48]
	ldr	d0, [sp, 48]
	ldr	w1, [sp, 60]
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
	ldr	w0, [sp, 36]
	ldr	w1, [sp, 60]
	cmp	w1, w0
	ble	.L3
	nop
	ldp	x29, x30, [sp], 64
	ret