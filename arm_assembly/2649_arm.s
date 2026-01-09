main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	b	.L2
	ldr	w0, [sp, 20]
	cmp	w0, 0
	bne	.L3
	ldr	w0, [sp, 20]
	ldr	w1, [sp, 24]
	mov	w2, w1
	mov	w1, w0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	b	.L2
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 24]
	cmp	w1, w0
	bgt	.L4
	ldr	w0, [sp, 20]
	ldr	w1, [sp, 24]
	mov	w2, w1
	mov	w1, w0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	b	.L2
	ldr	w0, [sp, 20]
	scvtf	d0, w0
	bl	sqrt
	fcvtzs	w0, d0
	str	w0, [sp, 28]
	ldr	w0, [sp, 20]
	str	w0, [sp, 36]
	str	wzr, [sp, 32]
	mov	w0, 2
	str	w0, [sp, 44]
	b	.L5
	ldr	w0, [sp, 36]
	ldr	w1, [sp, 44]
	sdiv	w2, w0, w1
	ldr	w1, [sp, 44]
	mul	w1, w2, w1
	sub	w0, w0, w1
	cmp	w0, 0
	bne	.L6
	mov	w0, 1
	str	w0, [sp, 40]
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 44]
	sdiv	w0, w1, w0
	str	w0, [sp, 36]
	b	.L7
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 44]
	sdiv	w0, w1, w0
	str	w0, [sp, 36]
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	ldr	w0, [sp, 36]
	ldr	w1, [sp, 44]
	sdiv	w2, w0, w1
	ldr	w1, [sp, 44]
	mul	w1, w2, w1
	sub	w0, w0, w1
	cmp	w0, 0
	beq	.L8
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 44]
	sdiv	w0, w1, w0
	ldr	w1, [sp, 40]
	cmp	w1, w0
	ble	.L6
	mov	w0, 1
	str	w0, [sp, 32]
	b	.L9
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w0, [sp, 36]
	cmp	w0, 1
	ble	.L9
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	ble	.L10
	ldr	w0, [sp, 20]
	ldr	w1, [sp, 36]
	cmp	w1, w0
	bne	.L11
	mov	w0, 1
	str	w0, [sp, 32]
	ldr	w0, [sp, 32]
	cmp	w0, 1
	bne	.L12
	ldr	w0, [sp, 20]
	ldr	w1, [sp, 24]
	mov	w2, w1
	mov	w1, w0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	b	.L2
	ldr	w0, [sp, 20]
	ldr	w1, [sp, 24]
	mov	w2, w1
	mov	w1, w0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	add	x1, sp, 20
	add	x0, sp, 24
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__isoc99_scanf
	cmn	w0, #1
	bne	.L13
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret