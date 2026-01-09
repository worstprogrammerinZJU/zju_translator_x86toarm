main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	add	x0, sp, 36
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	mov	w0, 1
	str	w0, [sp, 44]
	b	.L2
	add	x1, sp, 16
	add	x0, sp, 24
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldr	d1, [sp, 24]
	ldr	d0, [sp, 24]
	fmul	d1, d1, d0
	ldr	d2, [sp, 16]
	ldr	d0, [sp, 16]
	fmul	d0, d2, d0
	fadd	d0, d1, d0
	adrp	x0, .LC4
	ldr	d1, [x0, #:lo12:.LC4]
	fmul	d0, d0, d1
	mov	x0, 4636737291354636288
	fmov	d1, x0
	fdiv	d0, d0, d1
	fcvtzs	w0, d0
	add	w0, w0, 1
	str	w0, [sp, 40]
	ldr	w2, [sp, 40]
	ldr	w1, [sp, 44]
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w0, [sp, 36]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	ble	.L3
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret