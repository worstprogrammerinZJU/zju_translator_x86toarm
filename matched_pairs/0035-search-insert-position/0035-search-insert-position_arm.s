searchInsert:
	sub	sp, sp, #32
	str	x0, [sp, 8]
	str	w1, [sp, 4]
	str	w2, [sp]
	str	wzr, [sp, 28]
	ldr	w0, [sp, 4]
	sub	w0, w0, #1
	str	w0, [sp, 24]
	b	.L2
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 24]
	add	w0, w1, w0
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	str	w0, [sp, 20]
	ldrsw	x0, [sp, 20]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w0, [x0]
	ldr	w1, [sp]
	cmp	w1, w0
	bne	.L3
	ldr	w0, [sp, 20]
	b	.L4
	ldrsw	x0, [sp, 20]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w0, [x0]
	ldr	w1, [sp]
	cmp	w1, w0
	ble	.L5
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	str	w0, [sp, 28]
	b	.L2
	ldr	w0, [sp, 20]
	sub	w0, w0, #1
	str	w0, [sp, 24]
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 24]
	cmp	w1, w0
	ble	.L6
	ldr	w0, [sp, 28]
	add	sp, sp, 32
	ret