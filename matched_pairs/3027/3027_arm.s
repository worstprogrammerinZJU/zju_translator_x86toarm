base:
	sub	sp, sp, #32
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	str	w2, [sp, 4]
	ldr	w0, [sp, 12]
	str	w0, [sp, 24]
	str	wzr, [sp, 16]
	str	wzr, [sp, 28]
	mov	w0, 1
	str	w0, [sp, 20]
	b	.L2
	ldr	w0, [sp, 24]
	ldr	w1, [sp, 8]
	sdiv	w2, w0, w1
	ldr	w1, [sp, 8]
	mul	w1, w2, w1
	sub	w1, w0, w1
	ldr	w0, [sp, 20]
	mul	w0, w1, w0
	ldr	w1, [sp, 16]
	add	w0, w1, w0
	str	w0, [sp, 16]
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 8]
	sdiv	w0, w1, w0
	str	w0, [sp, 24]
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 4]
	mul	w0, w1, w0
	str	w0, [sp, 20]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	ldr	w0, [sp, 24]
	cmp	w0, 0
	bgt	.L3
	ldr	w0, [sp, 16]
	ldr	w1, [sp, 12]
	sdiv	w2, w0, w1
	ldr	w1, [sp, 12]
	mul	w1, w2, w1
	sub	w0, w0, w1
	cmp	w0, 0
	bne	.L4
	mov	w0, 1
	b	.L5
	mov	w0, 0
	add	sp, sp, 32
	ret
main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	add	x0, sp, 36
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 44]
	b	.L7
	add	x3, sp, 20
	add	x2, sp, 24
	add	x1, sp, 28
	add	x0, sp, 32
	mov	x4, x3
	mov	x3, x2
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldr	w0, [sp, 20]
	sub	w0, w0, #1
	str	w0, [sp, 40]
	b	.L8
	ldr	w0, [sp, 32]
	ldr	w1, [sp, 28]
	mov	w2, w1
	mov	w1, w0
	ldr	w0, [sp, 40]
	bl	base
	cmp	w0, 0
	beq	.L9
	ldr	w1, [sp, 40]
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	b	.L10
	ldr	w0, [sp, 40]
	sub	w0, w0, #1
	str	w0, [sp, 40]
	ldr	w0, [sp, 24]
	ldr	w1, [sp, 40]
	cmp	w1, w0
	bgt	.L11
	ldr	w0, [sp, 24]
	ldr	w1, [sp, 40]
	cmp	w1, w0
	bne	.L12
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w0, [sp, 36]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L13
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret