main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	mov	w0, 16200
	str	w0, [sp, 36]
	add	x0, sp, 28
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L2
	mov	w0, 16201
	str	w0, [sp, 40]
	str	wzr, [sp, 44]
	b	.L3
	add	x1, sp, 24
	add	x0, sp, 20
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldr	w0, [sp, 24]
	cmp	w0, 0
	blt	.L4
	ldr	w0, [sp, 20]
	ldr	w1, [sp, 36]
	sdiv	w1, w1, w0
	ldr	w0, [sp, 24]
	add	w0, w1, w0
	str	w0, [sp, 32]
	ldr	w1, [sp, 32]
	ldr	w0, [sp, 40]
	cmp	w1, w0
	bge	.L4
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 36]
	sdiv	w2, w0, w1
	mul	w1, w2, w1
	sub	w0, w0, w1
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	mov	w1, w0
	ldr	w0, [sp, 32]
	add	w0, w0, w1
	str	w0, [sp, 40]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L5
	ldr	w1, [sp, 40]
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	add	x0, sp, 28
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 28]
	cmp	w0, 0
	bne	.L6
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret