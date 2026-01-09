runningSum:
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	w1, [sp, 36]
	str	x2, [sp, 24]
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	bl	malloc
	sxtw	x0, w0
	str	x0, [sp, 48]
	ldr	x0, [sp, 24]
	ldr	w1, [sp, 36]
	str	w1, [x0]
	str	wzr, [sp, 60]
	b	.L2
	ldr	w0, [sp, 60]
	cmp	w0, 0
	beq	.L3
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 2
	sub	x0, x0, #4
	ldr	x2, [sp, 48]
	add	x0, x2, x0
	ldr	w0, [x0]
	add	w0, w1, w0
	b	.L4
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	w0, [x0]
	ldrsw	x1, [sp, 60]
	lsl	x1, x1, 2
	ldr	x2, [sp, 48]
	add	x1, x2, x1
	str	w0, [x1]
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
	ldr	w1, [sp, 60]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	blt	.L5
	ldr	x0, [sp, 48]
	ldp	x29, x30, [sp], 64
	ret