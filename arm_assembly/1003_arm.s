main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	xzr, [sp, 32]
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L2
	mov	w0, 2
	str	w0, [sp, 44]
	b	.L3
	ldr	w0, [sp, 44]
	scvtf	d0, w0
	fmov	d1, 1.0e+0
	fdiv	d0, d1, d0
	ldr	d1, [sp, 32]
	fadd	d0, d1, d0
	str	d0, [sp, 32]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	d0, [sp, 24]
	ldr	d1, [sp, 32]
	fcmpe	d1, d0
	bmi	.L4
	ldr	w0, [sp, 44]
	sub	w0, w0, #2
	mov	w1, w0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	xzr, [sp, 32]
	ldr	d0, [sp, 24]
	fcmp	d0, #0.0
	bne	.L5
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret