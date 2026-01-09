main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	add	x3, sp, 16
	add	x2, sp, 20
	add	x1, sp, 24
	add	x0, sp, 28
	mov	x4, x3
	mov	x3, x2
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L2
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 28]
	add	w1, w1, w0
	ldr	w0, [sp, 24]
	sub	w0, w1, w0
	mov	w1, w0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	add	x3, sp, 16
	add	x2, sp, 20
	add	x1, sp, 24
	add	x0, sp, 28
	mov	x4, x3
	mov	x3, x2
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 28]
	cmp	w0, 0
	bne	.L3
	ldr	w0, [sp, 24]
	cmp	w0, 0
	bne	.L3
	ldr	w0, [sp, 20]
	cmp	w0, 0
	bne	.L3
	ldr	w0, [sp, 16]
	cmp	w0, 0
	bne	.L3
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret