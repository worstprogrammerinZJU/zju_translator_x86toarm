maxSubArray:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	w1, [sp, 20]
	ldr	x0, [sp, 24]
	ldr	w0, [x0]
	str	w0, [sp, 44]
	str	wzr, [sp, 40]
	str	wzr, [sp, 36]
	b	.L2
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	w0, [x0]
	ldr	w1, [sp, 40]
	add	w0, w1, w0
	str	w0, [sp, 40]
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 44]
	bl	max
	str	w0, [sp, 44]
	ldr	w0, [sp, 40]
	cmp	w0, 0
	bge	.L3
	str	wzr, [sp, 40]
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	blt	.L4
	ldr	w0, [sp, 44]
	ldp	x29, x30, [sp], 48
	ret
max:
	sub	sp, sp, #16
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	ldr	w0, [sp, 12]
	ldr	w2, [sp, 8]
	ldr	w1, [sp, 8]
	cmp	w2, w0
	csel	w0, w1, w0, ge
	add	sp, sp, 16
	ret