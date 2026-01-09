main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	b	.L2
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 24]
	sub	w1, w1, w0
	ldr	w0, [sp, 24]
	cmp	w1, w0
	bge	.L3
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 24]
	sub	w0, w1, w0
	str	w0, [sp, 24]
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 16]
	sub	w1, w1, w0
	ldr	w0, [sp, 16]
	cmp	w1, w0
	bge	.L4
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 16]
	sub	w0, w1, w0
	str	w0, [sp, 16]
	fmov	d0, 1.0e+0
	str	d0, [sp, 32]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	str	w0, [sp, 20]
	mov	w0, 1
	str	w0, [sp, 44]
	b	.L5
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 44]
	sub	w0, w1, w0
	scvtf	d1, w0
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 44]
	sub	w0, w1, w0
	scvtf	d0, w0
	fdiv	d0, d1, d0
	ldr	d1, [sp, 32]
	fmul	d0, d1, d0
	str	d0, [sp, 32]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w0, [sp, 24]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	bgt	.L8
	ldr	w0, [sp, 16]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	ble	.L7
	b	.L8
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 44]
	sub	w0, w1, w0
	scvtf	d1, w0
	ldr	w0, [sp, 44]
	scvtf	d0, w0
	fdiv	d0, d1, d0
	ldr	d1, [sp, 32]
	fmul	d0, d1, d0
	str	d0, [sp, 32]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w0, [sp, 24]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	ble	.L9
	b	.L10
	ldr	w0, [sp, 44]
	scvtf	d1, w0
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 44]
	sub	w0, w1, w0
	scvtf	d0, w0
	fdiv	d0, d1, d0
	ldr	d1, [sp, 32]
	fmul	d0, d1, d0
	str	d0, [sp, 32]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w0, [sp, 16]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	ble	.L11
	ldr	d0, [sp, 32]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	add	x3, sp, 16
	add	x2, sp, 20
	add	x1, sp, 24
	add	x0, sp, 28
	mov	x4, x3
	mov	x3, x2
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	cmn	w0, #1
	bne	.L12
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret