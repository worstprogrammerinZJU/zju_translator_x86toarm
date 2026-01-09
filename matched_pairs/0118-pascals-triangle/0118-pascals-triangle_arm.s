generate:
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	str	w0, [sp, 44]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	ldr	x0, [sp, 32]
	ldr	w1, [sp, 44]
	str	w1, [x0]
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 3
	bl	malloc
	sxtw	x0, w0
	mov	x1, x0
	ldr	x0, [sp, 24]
	str	x1, [x0]
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 3
	bl	malloc
	sxtw	x0, w0
	str	x0, [sp, 56]
	str	wzr, [sp, 76]
	b	.L2
	ldr	x0, [sp, 24]
	ldr	x1, [x0]
	ldrsw	x0, [sp, 76]
	lsl	x0, x0, 2
	add	x0, x1, x0
	ldr	w1, [sp, 76]
	add	w1, w1, 1
	str	w1, [x0]
	ldr	w0, [sp, 76]
	add	w0, w0, 1
	sxtw	x0, w0
	lsl	x0, x0, 2
	bl	malloc
	sxtw	x2, w0
	ldrsw	x0, [sp, 76]
	lsl	x0, x0, 3
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	mov	x1, x2
	str	x1, [x0]
	ldrsw	x0, [sp, 76]
	lsl	x0, x0, 3
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	w1, 1
	str	w1, [x0]
	ldrsw	x0, [sp, 76]
	lsl	x0, x0, 3
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 76]
	lsl	x0, x0, 2
	add	x0, x1, x0
	mov	w1, 1
	str	w1, [x0]
	ldr	w0, [sp, 76]
	add	w0, w0, 1
	str	w0, [sp, 76]
	ldr	w1, [sp, 76]
	ldr	w0, [sp, 44]
	cmp	w1, w0
	blt	.L3
	mov	w0, 2
	str	w0, [sp, 72]
	b	.L4
	mov	w0, 1
	str	w0, [sp, 68]
	b	.L5
	ldrsw	x0, [sp, 72]
	lsl	x0, x0, 3
	sub	x0, x0, #8
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 68]
	lsl	x0, x0, 2
	sub	x0, x0, #4
	add	x0, x1, x0
	ldr	w2, [x0]
	ldrsw	x0, [sp, 72]
	lsl	x0, x0, 3
	sub	x0, x0, #8
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 68]
	lsl	x0, x0, 2
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsw	x0, [sp, 72]
	lsl	x0, x0, 3
	ldr	x3, [sp, 56]
	add	x0, x3, x0
	ldr	x3, [x0]
	ldrsw	x0, [sp, 68]
	lsl	x0, x0, 2
	add	x0, x3, x0
	add	w1, w2, w1
	str	w1, [x0]
	ldr	w0, [sp, 68]
	add	w0, w0, 1
	str	w0, [sp, 68]
	ldr	w1, [sp, 68]
	ldr	w0, [sp, 72]
	cmp	w1, w0
	blt	.L6
	ldr	w0, [sp, 72]
	add	w0, w0, 1
	str	w0, [sp, 72]
	ldr	w1, [sp, 72]
	ldr	w0, [sp, 44]
	cmp	w1, w0
	blt	.L7
	ldr	x0, [sp, 56]
	ldp	x29, x30, [sp], 80
	ret