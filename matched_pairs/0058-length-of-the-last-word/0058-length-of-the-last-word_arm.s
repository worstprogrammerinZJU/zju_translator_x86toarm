lengthOfLastWord:
	sub	sp, sp, #32
	str	x0, [sp, 8]
	mov	w0, -1
	str	w0, [sp, 28]
	str	wzr, [sp, 24]
	str	wzr, [sp, 20]
	b	.L2
	ldrsw	x0, [sp, 20]
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 32
	bne	.L3
	ldr	w0, [sp, 20]
	sub	w0, w0, #1
	ldr	w1, [sp, 28]
	cmp	w1, w0
	beq	.L4
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 28]
	sub	w0, w1, w0
	sub	w0, w0, #1
	str	w0, [sp, 24]
	ldr	w0, [sp, 20]
	str	w0, [sp, 28]
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	str	w0, [sp, 20]
	ldrsw	x0, [sp, 20]
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L5
	ldr	w0, [sp, 20]
	sub	w0, w0, #1
	ldr	w1, [sp, 28]
	cmp	w1, w0
	bne	.L6
	ldr	w0, [sp, 24]
	b	.L7
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 28]
	sub	w0, w1, w0
	sub	w0, w0, #1
	add	sp, sp, 32
	ret