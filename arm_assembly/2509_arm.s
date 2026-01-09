main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	b	.L2
	ldr	w0, [sp, 24]
	str	w0, [sp, 28]
	b	.L3
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 20]
	sdiv	w0, w1, w0
	ldr	w1, [sp, 28]
	add	w0, w1, w0
	str	w0, [sp, 28]
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 20]
	sdiv	w2, w1, w0
	ldr	w0, [sp, 24]
	ldr	w1, [sp, 20]
	sdiv	w3, w0, w1
	mul	w1, w3, w1
	sub	w0, w0, w1
	add	w0, w2, w0
	str	w0, [sp, 24]
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	bge	.L4
	ldr	w1, [sp, 28]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	add	x1, sp, 20
	add	x0, sp, 24
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	cmn	w0, #1
	bne	.L5
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret