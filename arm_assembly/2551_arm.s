main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	b	.L2
	mov	w0, 1
	str	w0, [sp, 24]
	mov	w0, 1
	str	w0, [sp, 28]
	b	.L3
	ldr	w1, [sp, 28]
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 1
	add	w0, w0, 1
	str	w0, [sp, 28]
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 28]
	sdiv	w2, w0, w1
	mul	w1, w2, w1
	sub	w0, w0, w1
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	cmp	w0, 0
	bne	.L4
	ldr	w1, [sp, 24]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	add	x0, sp, 20
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	cmn	w0, #1
	bne	.L5
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret