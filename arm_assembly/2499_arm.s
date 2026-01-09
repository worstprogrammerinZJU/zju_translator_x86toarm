main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	add	x0, sp, 28
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	mov	w0, 1
	str	w0, [sp, 44]
	b	.L2
	add	x1, sp, 20
	add	x0, sp, 24
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	str	wzr, [sp, 40]
	str	wzr, [sp, 36]
	b	.L3
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	bge	.L4
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 24]
	sdiv	w0, w1, w0
	str	w0, [sp, 32]
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 32]
	add	w0, w1, w0
	str	w0, [sp, 36]
	ldr	w1, [sp, 20]
	ldr	w2, [sp, 24]
	ldr	w0, [sp, 32]
	mul	w0, w2, w0
	sub	w0, w1, w0
	str	w0, [sp, 20]
	b	.L3
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 20]
	sdiv	w0, w1, w0
	str	w0, [sp, 32]
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 32]
	add	w0, w1, w0
	str	w0, [sp, 40]
	ldr	w1, [sp, 24]
	ldr	w2, [sp, 20]
	ldr	w0, [sp, 32]
	mul	w0, w2, w0
	sub	w0, w1, w0
	str	w0, [sp, 24]
	ldr	w0, [sp, 24]
	cmp	w0, 1
	beq	.L5
	ldr	w0, [sp, 20]
	cmp	w0, 1
	bne	.L6
	ldr	w0, [sp, 24]
	cmp	w0, 1
	bne	.L7
	ldr	w0, [sp, 20]
	sub	w0, w0, #1
	ldr	w1, [sp, 36]
	add	w0, w1, w0
	str	w0, [sp, 36]
	b	.L8
	ldr	w0, [sp, 24]
	sub	w0, w0, #1
	ldr	w1, [sp, 40]
	add	w0, w1, w0
	str	w0, [sp, 40]
	ldr	w3, [sp, 36]
	ldr	w2, [sp, 40]
	ldr	w1, [sp, 44]
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	ble	.L9
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret