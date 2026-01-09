canCompleteCircuit:
	sub	sp, sp, #64
	str	x0, [sp, 24]
	str	w1, [sp, 20]
	str	x2, [sp, 8]
	str	w3, [sp, 16]
	str	wzr, [sp, 60]
	str	wzr, [sp, 56]
	str	wzr, [sp, 52]
	b	.L2
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	w0, [x0]
	ldr	w1, [sp, 60]
	add	w0, w1, w0
	str	w0, [sp, 60]
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w0, [x0]
	ldr	w1, [sp, 56]
	add	w0, w1, w0
	str	w0, [sp, 56]
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	str	w0, [sp, 52]
	ldr	w1, [sp, 52]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	blt	.L3
	ldr	w1, [sp, 60]
	ldr	w0, [sp, 56]
	cmp	w1, w0
	bge	.L4
	mov	w0, -1
	b	.L5
	str	wzr, [sp, 48]
	str	wzr, [sp, 44]
	str	wzr, [sp, 40]
	b	.L6
	ldrsw	x0, [sp, 40]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsw	x0, [sp, 40]
	lsl	x0, x0, 2
	ldr	x2, [sp, 8]
	add	x0, x2, x0
	ldr	w0, [x0]
	sub	w0, w1, w0
	ldr	w1, [sp, 48]
	add	w0, w1, w0
	str	w0, [sp, 48]
	ldr	w0, [sp, 48]
	cmp	w0, 0
	bge	.L7
	str	wzr, [sp, 48]
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	blt	.L8
	ldr	w0, [sp, 44]
	add	sp, sp, 64
	ret