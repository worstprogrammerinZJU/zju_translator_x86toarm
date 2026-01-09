main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	b	.L2
	ldr	w0, [sp, 28]
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L3
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	b	.L2
	ldr	w0, [sp, 28]
	sub	w0, w0, #1
	mov	w1, w0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	add	x0, sp, 28
	mov	x1, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__isoc99_scanf
	ldr	w0, [sp, 28]
	cmp	w0, 0
	bne	.L4
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret