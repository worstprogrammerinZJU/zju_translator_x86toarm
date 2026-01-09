main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	mov	w0, 4
	str	w0, [sp, 28]
	mov	w0, 5
	str	w0, [sp, 24]
	add	x0, sp, 16
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L2
	ldr	w0, [sp, 28]
	add	w1, w0, 1
	str	w1, [sp, 28]
	ldr	w1, [sp, 24]
	add	w0, w1, w0
	str	w0, [sp, 24]
	ldr	w0, [sp, 16]
	ldr	w1, [sp, 24]
	cmp	w1, w0
	blt	.L3
	ldr	w0, [sp, 16]
	ldr	w1, [sp, 24]
	sub	w0, w1, w0
	str	w0, [sp, 20]
	mov	w0, 2
	str	w0, [sp, 24]
	ldr	w0, [sp, 20]
	cmp	w0, 1
	bne	.L5
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
	ldr	w0, [sp, 28]
	sub	w0, w0, #1
	str	w0, [sp, 20]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	b	.L5
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	beq	.L6
	ldr	w1, [sp, 24]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	blt	.L7
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret