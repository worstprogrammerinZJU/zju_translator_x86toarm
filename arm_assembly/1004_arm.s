main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	xzr, [sp, 40]
	mov	w0, 1
	str	w0, [sp, 36]
	b	.L2
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	d0, [sp, 24]
	ldr	d1, [sp, 40]
	fadd	d0, d1, d0
	str	d0, [sp, 40]
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
	ldr	w0, [sp, 36]
	cmp	w0, 12
	ble	.L3
	fmov	d0, 1.2e+1
	ldr	d1, [sp, 40]
	fdiv	d0, d1, d0
	str	d0, [sp, 40]
	ldr	d0, [sp, 40]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret