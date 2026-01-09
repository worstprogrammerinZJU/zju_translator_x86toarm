main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	fmov	d0, 1.0e+0
	str	d0, [sp, 32]
	fmov	d0, 1.0e+0
	str	d0, [sp, 24]
	ldr	d0, [sp, 32]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	mov	w0, 1
	str	w0, [sp, 44]
	b	.L2
	ldr	w0, [sp, 44]
	scvtf	d0, w0
	ldr	d1, [sp, 24]
	fdiv	d0, d1, d0
	str	d0, [sp, 24]
	ldr	d1, [sp, 32]
	ldr	d0, [sp, 24]
	fadd	d0, d1, d0
	str	d0, [sp, 32]
	ldr	d0, [sp, 32]
	ldr	w1, [sp, 44]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w0, [sp, 44]
	cmp	w0, 9
	ble	.L3
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret