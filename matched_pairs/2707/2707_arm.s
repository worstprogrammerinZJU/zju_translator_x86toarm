main:
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	add	x3, sp, 24
	add	x2, sp, 28
	add	x1, sp, 32
	add	x0, sp, 36
	mov	x4, x3
	mov	x3, x2
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L2
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 32]
	cmp	w1, w0
	bge	.L3
	ldr	w0, [sp, 32]
	str	w0, [sp, 60]
	ldr	w0, [sp, 36]
	str	w0, [sp, 32]
	ldr	w0, [sp, 60]
	str	w0, [sp, 36]
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 24]
	cmp	w1, w0
	bge	.L4
	ldr	w0, [sp, 24]
	str	w0, [sp, 60]
	ldr	w0, [sp, 28]
	str	w0, [sp, 24]
	ldr	w0, [sp, 60]
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	scvtf	d0, w0
	mov	x0, 4636737291354636288
	fmov	d1, x0
	fmul	d1, d0, d1
	ldr	w0, [sp, 36]
	scvtf	d0, w0
	fdiv	d0, d1, d0
	str	d0, [sp, 48]
	ldr	w0, [sp, 24]
	scvtf	d0, w0
	mov	x0, 4636737291354636288
	fmov	d1, x0
	fmul	d1, d0, d1
	ldr	w0, [sp, 32]
	scvtf	d0, w0
	fdiv	d0, d1, d0
	str	d0, [sp, 40]
	ldr	d1, [sp, 48]
	ldr	d0, [sp, 40]
	fcmpe	d1, d0
	bgt	.L10
	b	.L5
	ldr	d0, [sp, 40]
	str	d0, [sp, 48]
	ldr	d0, [sp, 48]
	fcvtzs	w0, d0
	str	w0, [sp, 60]
	ldr	w0, [sp, 60]
	cmp	w0, 100
	ble	.L7
	mov	w0, 100
	str	w0, [sp, 60]
	ldr	w1, [sp, 60]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	add	x3, sp, 24
	add	x2, sp, 28
	add	x1, sp, 32
	add	x0, sp, 36
	mov	x4, x3
	mov	x3, x2
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 36]
	cmp	w0, 0
	bne	.L8
	ldr	w0, [sp, 32]
	cmp	w0, 0
	bne	.L8
	ldr	w0, [sp, 28]
	cmp	w0, 0
	bne	.L8
	ldr	w0, [sp, 24]
	cmp	w0, 0
	bne	.L8
	mov	w0, 0
	ldp	x29, x30, [sp], 64
	ret