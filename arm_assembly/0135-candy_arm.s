candy:
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	w1, [sp, 20]
	ldrsw	x0, [sp, 20]
	lsl	x0, x0, 2
	bl	malloc
	sxtw	x0, w0
	str	x0, [sp, 32]
	str	wzr, [sp, 60]
	b	.L2
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 2
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	mov	w1, 1
	str	w1, [x0]
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
	ldr	w1, [sp, 60]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	blt	.L3
	mov	w0, 1
	str	w0, [sp, 56]
	b	.L4
	ldrsw	x0, [sp, 56]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsw	x0, [sp, 56]
	lsl	x0, x0, 2
	sub	x0, x0, #4
	ldr	x2, [sp, 24]
	add	x0, x2, x0
	ldr	w0, [x0]
	cmp	w1, w0
	ble	.L5
	ldrsw	x0, [sp, 56]
	lsl	x0, x0, 2
	sub	x0, x0, #4
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsw	x0, [sp, 56]
	lsl	x0, x0, 2
	ldr	x2, [sp, 32]
	add	x0, x2, x0
	add	w1, w1, 1
	str	w1, [x0]
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 56]
	ldr	w1, [sp, 56]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	blt	.L6
	ldr	w0, [sp, 20]
	sub	w0, w0, #2
	str	w0, [sp, 52]
	b	.L7
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsw	x0, [sp, 52]
	add	x0, x0, 1
	lsl	x0, x0, 2
	ldr	x2, [sp, 24]
	add	x0, x2, x0
	ldr	w0, [x0]
	cmp	w1, w0
	ble	.L8
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 2
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsw	x0, [sp, 52]
	add	x0, x0, 1
	lsl	x0, x0, 2
	ldr	x2, [sp, 32]
	add	x0, x2, x0
	ldr	w0, [x0]
	cmp	w1, w0
	bgt	.L8
	ldrsw	x0, [sp, 52]
	add	x0, x0, 1
	lsl	x0, x0, 2
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 2
	ldr	x2, [sp, 32]
	add	x0, x2, x0
	add	w1, w1, 1
	str	w1, [x0]
	ldr	w0, [sp, 52]
	sub	w0, w0, #1
	str	w0, [sp, 52]
	ldr	w0, [sp, 52]
	cmp	w0, 0
	bge	.L9
	str	wzr, [sp, 48]
	str	wzr, [sp, 44]
	b	.L10
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 2
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	ldr	w0, [x0]
	ldr	w1, [sp, 48]
	add	w0, w1, w0
	str	w0, [sp, 48]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	blt	.L11
	ldr	x0, [sp, 32]
	bl	free
	ldr	w0, [sp, 48]
	ldp	x29, x30, [sp], 64
	ret