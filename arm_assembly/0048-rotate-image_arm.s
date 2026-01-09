rotate:
	sub	sp, sp, #64
	str	x0, [sp, 24]
	str	w1, [sp, 20]
	str	x2, [sp, 8]
	str	wzr, [sp, 60]
	ldr	w0, [sp, 20]
	sub	w0, w0, #1
	str	w0, [sp, 56]
	b	.L2
	str	wzr, [sp, 52]
	b	.L3
	ldr	w0, [sp, 60]
	str	w0, [sp, 48]
	ldr	w0, [sp, 56]
	str	w0, [sp, 44]
	ldrsw	x0, [sp, 48]
	lsl	x0, x0, 3
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldr	w2, [sp, 60]
	ldr	w0, [sp, 52]
	add	w0, w2, w0
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x0, x1, x0
	ldr	w0, [x0]
	str	w0, [sp, 40]
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 52]
	sub	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 2
	add	x1, x1, x0
	ldrsw	x0, [sp, 48]
	lsl	x0, x0, 3
	ldr	x2, [sp, 24]
	add	x0, x2, x0
	ldr	x2, [x0]
	ldr	w3, [sp, 60]
	ldr	w0, [sp, 52]
	add	w0, w3, w0
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w1, [x1]
	str	w1, [x0]
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 3
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldr	w2, [sp, 56]
	ldr	w0, [sp, 52]
	sub	w0, w2, w0
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, x1, x0
	ldr	w2, [sp, 44]
	ldr	w0, [sp, 52]
	sub	w0, w2, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x2, [sp, 24]
	add	x0, x2, x0
	ldr	x2, [x0]
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w1, [x1]
	str	w1, [x0]
	ldr	w1, [sp, 48]
	ldr	w0, [sp, 52]
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 56]
	lsl	x0, x0, 2
	add	x1, x1, x0
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 3
	ldr	x2, [sp, 24]
	add	x0, x2, x0
	ldr	x2, [x0]
	ldr	w3, [sp, 56]
	ldr	w0, [sp, 52]
	sub	w0, w3, w0
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w1, [x1]
	str	w1, [x0]
	ldr	w1, [sp, 48]
	ldr	w0, [sp, 52]
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 56]
	lsl	x0, x0, 2
	add	x0, x1, x0
	ldr	w1, [sp, 40]
	str	w1, [x0]
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	str	w0, [sp, 52]
	ldr	w1, [sp, 56]
	ldr	w0, [sp, 60]
	sub	w0, w1, w0
	ldr	w1, [sp, 52]
	cmp	w1, w0
	blt	.L4
	ldr	w0, [sp, 56]
	sub	w0, w0, #1
	str	w0, [sp, 56]
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
	ldr	w1, [sp, 60]
	ldr	w0, [sp, 56]
	cmp	w1, w0
	blt	.L5
	nop
	nop
	add	sp, sp, 64
	ret