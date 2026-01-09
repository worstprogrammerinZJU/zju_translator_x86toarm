reverseString:
	sub	sp, sp, #32
	str	x0, [sp, 8]
	str	w1, [sp, 4]
	ldr	w0, [sp, 4]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	str	w0, [sp, 24]
	str	wzr, [sp, 28]
	b	.L2
	ldrsw	x0, [sp, 28]
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldrb	w0, [x0]
	strb	w0, [sp, 23]
	ldr	w1, [sp, 4]
	ldr	w0, [sp, 28]
	sub	w0, w1, w0
	sxtw	x0, w0
	sub	x0, x0, #1
	ldr	x1, [sp, 8]
	add	x1, x1, x0
	ldrsw	x0, [sp, 28]
	ldr	x2, [sp, 8]
	add	x0, x2, x0
	ldrb	w1, [x1]
	strb	w1, [x0]
	ldr	w1, [sp, 4]
	ldr	w0, [sp, 28]
	sub	w0, w1, w0
	sxtw	x0, w0
	sub	x0, x0, #1
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldrb	w1, [sp, 23]
	strb	w1, [x0]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 24]
	cmp	w1, w0
	blt	.L3
	nop
	nop
	add	sp, sp, 32
	ret