leastInterval:
	sub	sp, sp, #144
	str	x0, [sp, 8]
	str	w1, [sp, 4]
	str	w2, [sp]
	add	x0, sp, 16
	movi	v0.4s, 0
	stp	q0, q0, [x0]
	stp	q0, q0, [x0, 32]
	stp	q0, q0, [x0, 64]
	fmov	x1, d0
	str	x1, [x0, 96]
	str	wzr, [sp, 140]
	b	.L2
	ldrsw	x0, [sp, 140]
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldrb	w0, [x0]
	sub	w3, w0, #65
	sxtw	x0, w3
	lsl	x0, x0, 2
	add	x1, sp, 16
	ldr	w0, [x1, x0]
	add	w2, w0, 1
	sxtw	x0, w3
	lsl	x0, x0, 2
	add	x1, sp, 16
	str	w2, [x1, x0]
	ldr	w0, [sp, 140]
	add	w0, w0, 1
	str	w0, [sp, 140]
	ldr	w1, [sp, 140]
	ldr	w0, [sp, 4]
	cmp	w1, w0
	blt	.L3
	str	wzr, [sp, 136]
	str	wzr, [sp, 132]
	str	wzr, [sp, 128]
	b	.L4
	ldrsw	x0, [sp, 128]
	lsl	x0, x0, 2
	add	x1, sp, 16
	ldr	w0, [x1, x0]
	ldr	w1, [sp, 136]
	cmp	w1, w0
	bge	.L5
	ldrsw	x0, [sp, 128]
	lsl	x0, x0, 2
	add	x1, sp, 16
	ldr	w0, [x1, x0]
	str	w0, [sp, 136]
	mov	w0, 1
	str	w0, [sp, 132]
	b	.L6
	ldrsw	x0, [sp, 128]
	lsl	x0, x0, 2
	add	x1, sp, 16
	ldr	w0, [x1, x0]
	ldr	w1, [sp, 136]
	cmp	w1, w0
	bne	.L6
	ldr	w0, [sp, 132]
	add	w0, w0, 1
	str	w0, [sp, 132]
	ldr	w0, [sp, 128]
	add	w0, w0, 1
	str	w0, [sp, 128]
	ldr	w0, [sp, 128]
	cmp	w0, 25
	ble	.L7
	ldr	w0, [sp, 136]
	sub	w1, w0, #1
	ldr	w0, [sp]
	add	w0, w0, 1
	mul	w0, w1, w0
	ldr	w1, [sp, 132]
	add	w0, w1, w0
	str	w0, [sp, 124]
	ldr	w0, [sp, 124]
	ldr	w2, [sp, 4]
	ldr	w1, [sp, 4]
	cmp	w2, w0
	csel	w0, w1, w0, ge
	add	sp, sp, 144
	ret