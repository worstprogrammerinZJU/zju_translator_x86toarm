main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	mov	w0, 2
	str	w0, [sp, 32]
	mov	w0, 9
	str	w0, [sp, 36]
	b	.L2
	mov	w0, 1
	str	w0, [sp, 44]
	b	.L3
	ldr	w0, [sp, 28]
	ldrsw	x1, [sp, 44]
	lsl	x1, x1, 2
	add	x2, sp, 32
	ldr	w1, [x2, x1]
	udiv	w2, w0, w1
	mul	w1, w2, w1
	sub	w0, w0, w1
	cmp	w0, 0
	bne	.L4
	ldr	w0, [sp, 28]
	ldrsw	x1, [sp, 44]
	lsl	x1, x1, 2
	add	x2, sp, 32
	ldr	w1, [x2, x1]
	udiv	w0, w0, w1
	str	w0, [sp, 28]
	b	.L5
	ldr	w0, [sp, 28]
	ldrsw	x1, [sp, 44]
	lsl	x1, x1, 2
	add	x2, sp, 32
	ldr	w1, [x2, x1]
	udiv	w0, w0, w1
	add	w0, w0, 1
	str	w0, [sp, 28]
	mov	w1, 1
	ldr	w0, [sp, 44]
	sub	w0, w1, w0
	str	w0, [sp, 44]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L6
	ldr	w0, [sp, 44]
	cmp	w0, 0
	bne	.L7
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	b	.L2
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	add	x0, sp, 28
	mov	x1, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__isoc99_scanf
	cmn	w0, #1
	bne	.L8
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret