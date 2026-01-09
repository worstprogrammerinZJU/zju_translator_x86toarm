main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	add	x0, sp, 20
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L2
	mov	w0, 1
	str	w0, [sp, 28]
	str	wzr, [sp, 24]
	ldr	w0, [sp, 20]
	mov	w1, w0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	b	.L3
	ldr	w0, [sp, 28]
	mul	w0, w0, w0
	ldr	w1, [sp, 24]
	add	w0, w1, w0
	str	w0, [sp, 24]
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 28]
	sub	w0, w1, w0
	str	w0, [sp, 20]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	ldr	w0, [sp, 20]
	cmp	w0, 0
	bgt	.L4
	ldr	w0, [sp, 28]
	sub	w1, w0, #1
	ldr	w0, [sp, 20]
	mul	w0, w1, w0
	ldr	w1, [sp, 24]
	add	w0, w1, w0
	str	w0, [sp, 24]
	ldr	w1, [sp, 24]
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	add	x0, sp, 20
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 20]
	cmp	w0, 0
	bne	.L5
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret