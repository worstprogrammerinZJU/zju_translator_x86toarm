main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	b	.L2
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 16]
	cmp	w1, w0
	ble	.L3
	ldr	w0, [sp, 20]
	str	w0, [sp, 24]
	ldr	w0, [sp, 16]
	str	w0, [sp, 20]
	ldr	w0, [sp, 24]
	str	w0, [sp, 16]
	ldr	w0, [sp, 20]
	scvtf	d0, w0
	adrp	x0, .LC3
	ldr	d1, [x0, #:lo12:.LC3]
	fmul	d0, d0, d1
	fcvtzs	w0, d0
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	scvtf	d0, w0
	adrp	x0, .LC4
	ldr	d1, [x0, #:lo12:.LC4]
	fmul	d0, d0, d1
	fcvtzs	w1, d0
	ldr	w0, [sp, 20]
	cmp	w1, w0
	beq	.L4
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	scvtf	d0, w0
	adrp	x0, .LC4
	ldr	d1, [x0, #:lo12:.LC4]
	fmul	d0, d0, d1
	fcvtzs	w1, d0
	ldr	w0, [sp, 28]
	add	w1, w1, w0
	ldr	w0, [sp, 16]
	cmp	w1, w0
	bne	.L5
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	b	.L2
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	add	x1, sp, 16
	add	x0, sp, 20
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__isoc99_scanf
	cmn	w0, #1
	bne	.L6
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret