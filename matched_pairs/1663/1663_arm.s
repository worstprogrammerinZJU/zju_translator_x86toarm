main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 28]
	b	.L2
	add	x1, sp, 16
	add	x0, sp, 20
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 16]
	cmp	w1, w0
	beq	.L3
	ldr	w0, [sp, 20]
	sub	w1, w0, #2
	ldr	w0, [sp, 16]
	cmp	w1, w0
	beq	.L3
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	b	.L4
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 16]
	add	w1, w1, w0
	ldr	w0, [sp, 20]
	cmp	w0, 0
	and	w0, w0, 1
	csneg	w0, w0, w0, ge
	sub	w0, w1, w0
	mov	w1, w0
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	ldr	w0, [sp, 24]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L5
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret