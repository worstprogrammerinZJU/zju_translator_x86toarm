shuffle:
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	w1, [sp, 36]
	str	w2, [sp, 32]
	str	x3, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	w1, [sp, 36]
	str	w1, [x0]
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	bl	malloc
	sxtw	x0, w0
	str	x0, [sp, 64]
	str	wzr, [sp, 72]
	ldr	w0, [sp, 72]
	str	w0, [sp, 60]
	ldr	w0, [sp, 60]
	str	w0, [sp, 76]
	b	.L2
	ldrsw	x0, [sp, 76]
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x1, x1, x0
	ldr	w0, [sp, 72]
	add	w2, w0, 1
	str	w2, [sp, 72]
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x2, [sp, 64]
	add	x0, x2, x0
	ldr	w1, [x1]
	str	w1, [x0]
	ldr	w1, [sp, 76]
	ldr	w0, [sp, 32]
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x1, x1, x0
	ldr	w0, [sp, 72]
	add	w2, w0, 1
	str	w2, [sp, 72]
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x2, [sp, 64]
	add	x0, x2, x0
	ldr	w1, [x1]
	str	w1, [x0]
	ldr	w0, [sp, 76]
	add	w0, w0, 1
	str	w0, [sp, 76]
	ldr	w1, [sp, 76]
	ldr	w0, [sp, 32]
	cmp	w1, w0
	blt	.L3
	ldr	x0, [sp, 64]
	ldp	x29, x30, [sp], 80
	ret