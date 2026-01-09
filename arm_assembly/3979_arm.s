_Z3gcdii:
	sub	sp, sp, #32
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	ldr	w1, [sp, 12]
	ldr	w0, [sp, 8]
	cmp	w1, w0
	bge	.L3
	ldr	w0, [sp, 12]
	str	w0, [sp, 28]
	ldr	w0, [sp, 8]
	str	w0, [sp, 12]
	ldr	w0, [sp, 28]
	str	w0, [sp, 8]
	b	.L3
	ldr	w0, [sp, 12]
	ldr	w1, [sp, 8]
	sdiv	w2, w0, w1
	ldr	w1, [sp, 8]
	mul	w1, w2, w1
	sub	w0, w0, w1
	str	w0, [sp, 28]
	ldr	w0, [sp, 8]
	str	w0, [sp, 12]
	ldr	w0, [sp, 28]
	str	w0, [sp, 8]
	ldr	w0, [sp, 8]
	cmp	w0, 0
	bne	.L4
	ldr	w0, [sp, 12]
	add	sp, sp, 32
	ret
main:
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	x1, [sp, 16]
	b	.L7
	ldr	w1, [sp, 48]
	ldr	w0, [sp, 36]
	mul	w0, w1, w0
	str	w0, [sp, 56]
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 44]
	mul	w0, w1, w0
	str	w0, [sp, 52]
	ldr	w1, [sp, 56]
	ldr	w0, [sp, 52]
	add	w0, w1, w0
	str	w0, [sp, 56]
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 36]
	mul	w0, w1, w0
	str	w0, [sp, 52]
	ldr	w0, [sp, 56]
	cmp	w0, 0
	bne	.L8
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	b	.L7
	ldr	w0, [sp, 56]
	cmp	w0, 0
	bge	.L9
	ldr	w0, [sp, 56]
	neg	w0, w0
	ldr	w1, [sp, 52]
	bl	_Z3gcdii
	str	w0, [sp, 60]
	b	.L10
	ldr	w1, [sp, 52]
	ldr	w0, [sp, 56]
	bl	_Z3gcdii
	str	w0, [sp, 60]
	ldr	w1, [sp, 52]
	ldr	w0, [sp, 60]
	cmp	w1, w0
	bne	.L11
	ldr	w1, [sp, 56]
	ldr	w0, [sp, 60]
	sdiv	w0, w1, w0
	mov	w1, w0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	b	.L7
	ldr	w1, [sp, 56]
	ldr	w0, [sp, 60]
	sdiv	w3, w1, w0
	ldr	w1, [sp, 52]
	ldr	w0, [sp, 60]
	sdiv	w0, w1, w0
	mov	w2, w0
	mov	w1, w3
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	add	x3, sp, 36
	add	x2, sp, 40
	add	x1, sp, 44
	add	x0, sp, 48
	mov	x4, x3
	mov	x3, x2
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	__isoc99_scanf
	cmn	w0, #1
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L12
	mov	w0, 0
	ldp	x29, x30, [sp], 64
	ret