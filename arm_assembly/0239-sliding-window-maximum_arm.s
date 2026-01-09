createDeque:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	w0, [sp, 28]
	mov	x0, 24
	bl	malloc
	str	x0, [sp, 40]
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 3
	bl	malloc
	mov	x1, x0
	ldr	x0, [sp, 40]
	str	x1, [x0]
	ldr	x0, [sp, 40]
	str	wzr, [x0, 8]
	ldr	x0, [sp, 40]
	mov	w1, -1
	str	w1, [x0, 12]
	ldr	x0, [sp, 40]
	str	wzr, [x0, 16]
	ldr	x0, [sp, 40]
	ldp	x29, x30, [sp], 48
	ret
pushBack:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	w1, [sp, 4]
	str	w2, [sp]
	b	.L4
	ldr	x0, [sp, 8]
	ldr	w0, [x0, 12]
	sub	w1, w0, #1
	ldr	x0, [sp, 8]
	str	w1, [x0, 12]
	ldr	x0, [sp, 8]
	ldr	w0, [x0, 16]
	sub	w1, w0, #1
	ldr	x0, [sp, 8]
	str	w1, [x0, 16]
	ldr	x0, [sp, 8]
	ldr	w0, [x0, 16]
	cmp	w0, 0
	ble	.L5
	ldr	x0, [sp, 8]
	ldr	x1, [x0]
	ldr	x0, [sp, 8]
	ldr	w0, [x0, 12]
	sxtw	x0, w0
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldr	w0, [x0]
	ldr	w1, [sp, 4]
	cmp	w1, w0
	bge	.L6
	ldr	x0, [sp, 8]
	ldr	w0, [x0, 12]
	add	w1, w0, 1
	ldr	x0, [sp, 8]
	str	w1, [x0, 12]
	ldr	x0, [sp, 8]
	ldr	x1, [x0]
	ldr	x0, [sp, 8]
	ldr	w0, [x0, 12]
	sxtw	x0, w0
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldr	w1, [sp, 4]
	str	w1, [x0]
	ldr	x0, [sp, 8]
	ldr	x1, [x0]
	ldr	x0, [sp, 8]
	ldr	w0, [x0, 12]
	sxtw	x0, w0
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldr	w1, [sp]
	str	w1, [x0, 4]
	ldr	x0, [sp, 8]
	ldr	w0, [x0, 16]
	add	w1, w0, 1
	ldr	x0, [sp, 8]
	str	w1, [x0, 16]
	nop
	add	sp, sp, 16
	ret
popFront:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	w1, [sp, 4]
	ldr	x0, [sp, 8]
	ldr	w0, [x0, 16]
	cmp	w0, 0
	ble	.L9
	ldr	x0, [sp, 8]
	ldr	x1, [x0]
	ldr	x0, [sp, 8]
	ldr	w0, [x0, 8]
	sxtw	x0, w0
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldr	w0, [x0, 4]
	ldr	w1, [sp, 4]
	cmp	w1, w0
	bne	.L9
	ldr	x0, [sp, 8]
	ldr	w0, [x0, 8]
	add	w1, w0, 1
	ldr	x0, [sp, 8]
	str	w1, [x0, 8]
	ldr	x0, [sp, 8]
	ldr	w0, [x0, 16]
	sub	w1, w0, #1
	ldr	x0, [sp, 8]
	str	w1, [x0, 16]
	nop
	add	sp, sp, 16
	ret
maxSlidingWindow:
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	w1, [sp, 36]
	str	w2, [sp, 32]
	str	x3, [sp, 24]
	ldr	w0, [sp, 36]
	cmp	w0, 0
	bne	.L11
	ldr	x0, [sp, 24]
	str	wzr, [x0]
	mov	x0, 0
	b	.L12
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 32]
	sub	w0, w1, w0
	add	w1, w0, 1
	ldr	x0, [sp, 24]
	str	w1, [x0]
	ldr	x0, [sp, 24]
	ldr	w0, [x0]
	sxtw	x0, w0
	lsl	x0, x0, 2
	bl	malloc
	str	x0, [sp, 64]
	ldr	w0, [sp, 36]
	bl	createDeque
	str	x0, [sp, 56]
	str	wzr, [sp, 76]
	b	.L13
	ldrsw	x0, [sp, 76]
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	w0, [x0]
	ldr	w2, [sp, 76]
	mov	w1, w0
	ldr	x0, [sp, 56]
	bl	pushBack
	ldr	w0, [sp, 32]
	sub	w0, w0, #1
	ldr	w1, [sp, 76]
	cmp	w1, w0
	blt	.L14
	ldr	x0, [sp, 56]
	ldr	x1, [x0]
	ldr	x0, [sp, 56]
	ldr	w0, [x0, 8]
	sxtw	x0, w0
	lsl	x0, x0, 3
	add	x1, x1, x0
	ldr	w2, [sp, 76]
	ldr	w0, [sp, 32]
	sub	w0, w2, w0
	sxtw	x0, w0
	add	x0, x0, 1
	lsl	x0, x0, 2
	ldr	x2, [sp, 64]
	add	x0, x2, x0
	ldr	w1, [x1]
	str	w1, [x0]
	ldr	w1, [sp, 76]
	ldr	w0, [sp, 32]
	sub	w0, w1, w0
	add	w0, w0, 1
	mov	w1, w0
	ldr	x0, [sp, 56]
	bl	popFront
	ldr	w0, [sp, 76]
	add	w0, w0, 1
	str	w0, [sp, 76]
	ldr	w1, [sp, 76]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	blt	.L15
	ldr	x0, [sp, 56]
	ldr	x0, [x0]
	bl	free
	ldr	x0, [sp, 56]
	bl	free
	ldr	x0, [sp, 64]
	ldp	x29, x30, [sp], 80
	ret