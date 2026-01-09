upperBound:
	sub	sp, sp, #32
	str	x0, [sp, 8]
	str	w1, [sp, 4]
	str	w2, [sp]
	str	wzr, [sp, 28]
	ldr	w0, [sp, 4]
	sub	w0, w0, #1
	str	w0, [sp, 24]
	b	.L2
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 28]
	sub	w0, w1, w0
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	mov	w1, w0
	ldr	w0, [sp, 28]
	add	w0, w0, w1
	str	w0, [sp, 20]
	ldrsw	x0, [sp, 20]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w0, [x0]
	ldr	w1, [sp]
	cmp	w1, w0
	blt	.L3
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
	ble	.L4
	ldr	w0, [sp, 28]
	add	sp, sp, 32
	ret
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	w1, [sp, 36]
	str	x2, [sp, 24]
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	bl	malloc
	sxtw	x0, w0
	str	x0, [sp, 64]
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	bl	malloc
	sxtw	x0, w0
	str	x0, [sp, 56]
	ldr	x0, [sp, 24]
	ldr	w1, [sp, 36]
	str	w1, [x0]
	str	wzr, [sp, 76]
	str	wzr, [sp, 72]
	b	.L7
	ldrsw	x0, [sp, 72]
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	w0, [x0]
	str	w0, [sp, 52]
	ldr	w0, [sp, 76]
	cmp	w0, 0
	beq	.L8
	ldrsw	x0, [sp, 76]
	lsl	x0, x0, 2
	sub	x0, x0, #4
	ldr	x1, [sp, 64]
	add	x0, x1, x0
	ldr	w0, [x0]
	ldr	w1, [sp, 52]
	cmp	w1, w0
	blt	.L9
	ldrsw	x0, [sp, 76]
	lsl	x0, x0, 2
	ldr	x1, [sp, 64]
	add	x0, x1, x0
	ldr	w1, [sp, 52]
	str	w1, [x0]
	ldrsw	x0, [sp, 72]
	lsl	x0, x0, 2
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	w1, [sp, 76]
	add	w1, w1, 1
	str	w1, [x0]
	ldr	w0, [sp, 76]
	add	w0, w0, 1
	str	w0, [sp, 76]
	b	.L10
	ldr	w2, [sp, 52]
	ldr	w1, [sp, 76]
	ldr	x0, [sp, 64]
	bl	upperBound
	str	w0, [sp, 48]
	ldrsw	x0, [sp, 48]
	lsl	x0, x0, 2
	ldr	x1, [sp, 64]
	add	x0, x1, x0
	ldr	w1, [sp, 52]
	str	w1, [x0]
	ldrsw	x0, [sp, 72]
	lsl	x0, x0, 2
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	w1, [sp, 48]
	add	w1, w1, 1
	str	w1, [x0]
	ldr	w0, [sp, 72]
	add	w0, w0, 1
	str	w0, [sp, 72]
	ldr	w1, [sp, 72]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	blt	.L11
	ldr	x0, [sp, 64]
	bl	free
	ldr	x0, [sp, 56]
	ldp	x29, x30, [sp], 80
	ret