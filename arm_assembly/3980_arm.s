main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	x1, [sp, 16]
	b	.L2
	ldr	w0, [sp, 44]
	ldr	w1, [sp, 40]
	sdiv	w2, w0, w1
	mul	w1, w2, w1
	sub	w0, w0, w1
	mov	w1, w0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	add	x1, sp, 40
	add	x0, sp, 44
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	cmn	w0, #1
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L3
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret