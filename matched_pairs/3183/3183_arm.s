main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	add	x0, sp, 32
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 40]
	str	wzr, [sp, 36]
	str	wzr, [sp, 44]
	b	.L2
	add	x0, sp, 28
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 36]
	cmp	w1, w0
	bge	.L3
	str	wzr, [sp, 40]
	b	.L4
	ldr	w0, [sp, 40]
	cmp	w0, 0
	bne	.L5
	ldr	w1, [sp, 44]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	mov	w0, 1
	str	w0, [sp, 40]
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 36]
	cmp	w1, w0
	bne	.L4
	str	wzr, [sp, 40]
	ldr	w0, [sp, 28]
	str	w0, [sp, 36]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w0, [sp, 32]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L6
	ldr	w0, [sp, 40]
	cmp	w0, 0
	bne	.L7
	ldr	w1, [sp, 44]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret