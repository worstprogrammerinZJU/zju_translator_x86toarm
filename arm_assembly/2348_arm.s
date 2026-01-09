main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	add	x1, sp, 28
	add	x0, sp, 32
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L2
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 32]
	cmp	w1, w0
	csel	w0, w1, w0, ge
	str	w0, [sp, 40]
	ldr	w1, [sp, 32]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	csel	w0, w1, w0, le
	str	w0, [sp, 36]
	mov	w0, 1
	str	w0, [sp, 44]
	b	.L3
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 36]
	sdiv	w0, w1, w0
	cmp	w0, 1
	bgt	.L12
	ldr	w0, [sp, 36]
	str	w0, [sp, 28]
	ldr	w0, [sp, 40]
	ldr	w1, [sp, 36]
	sdiv	w2, w0, w1
	ldr	w1, [sp, 36]
	mul	w1, w2, w1
	sub	w0, w0, w1
	str	w0, [sp, 36]
	ldr	w0, [sp, 28]
	str	w0, [sp, 40]
	mov	w1, 1
	ldr	w0, [sp, 44]
	sub	w0, w1, w0
	str	w0, [sp, 44]
	ldr	w0, [sp, 40]
	ldr	w1, [sp, 36]
	sdiv	w2, w0, w1
	ldr	w1, [sp, 36]
	mul	w1, w2, w1
	sub	w0, w0, w1
	cmp	w0, 0
	bne	.L6
	b	.L5
	nop
	ldr	w0, [sp, 44]
	cmp	w0, 1
	bne	.L7
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	b	.L8
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	add	x1, sp, 28
	add	x0, sp, 32
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 32]
	cmp	w0, 0
	beq	.L9
	ldr	w0, [sp, 28]
	cmp	w0, 0
	bne	.L10
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret