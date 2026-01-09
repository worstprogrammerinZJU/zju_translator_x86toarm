main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	add	x1, sp, 36
	add	x0, sp, 40
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L2
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	str	wzr, [sp, 44]
	b	.L3
	add	x1, sp, 28
	add	x0, sp, 32
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w1, [sp, 40]
	ldr	w2, [sp, 28]
	ldr	w0, [sp, 32]
	sub	w0, w2, w0
	add	w0, w0, 1
	sub	w0, w1, w0
	str	w0, [sp, 40]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w0, [sp, 36]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L4
	ldr	w0, [sp, 40]
	mov	w1, w0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	add	x1, sp, 36
	add	x0, sp, 40
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 40]
	cmp	w0, 0
	bne	.L5
	ldr	w0, [sp, 36]
	cmp	w0, 0
	bne	.L5
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret