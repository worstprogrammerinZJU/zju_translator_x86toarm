swap:
	sub	sp, sp, #32
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	w0, [x0]
	str	w0, [sp, 28]
	ldr	x0, [sp]
	ldr	w1, [x0]
	ldr	x0, [sp, 8]
	str	w1, [x0]
	ldr	x0, [sp]
	ldr	w1, [sp, 28]
	str	w1, [x0]
	nop
	add	sp, sp, 32
	ret
backtrack:
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	str	x0, [sp, 56]
	str	w1, [sp, 52]
	str	x2, [sp, 40]
	str	x3, [sp, 32]
	str	x4, [sp, 24]
	str	w5, [sp, 48]
	ldr	w1, [sp, 48]
	ldr	w0, [sp, 52]
	cmp	w1, w0
	bne	.L3
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 2
	bl	malloc
	sxtw	x2, w0
	ldr	x0, [sp, 32]
	ldr	w0, [x0]
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	mov	x1, x2
	str	x1, [x0]
	str	wzr, [sp, 76]
	b	.L4
	ldrsw	x0, [sp, 76]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x1, x1, x0
	ldr	x0, [sp, 32]
	ldr	w0, [x0]
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x2, [sp, 40]
	add	x0, x2, x0
	ldr	x2, [x0]
	ldrsw	x0, [sp, 76]
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w1, [x1]
	str	w1, [x0]
	ldr	w0, [sp, 76]
	add	w0, w0, 1
	str	w0, [sp, 76]
	ldr	w1, [sp, 76]
	ldr	w0, [sp, 52]
	cmp	w1, w0
	blt	.L5
	ldr	x0, [sp, 32]
	ldr	w0, [x0]
	add	w1, w0, 1
	ldr	x0, [sp, 32]
	str	w1, [x0]
	b	.L2
	ldr	w0, [sp, 48]
	str	w0, [sp, 72]
	b	.L7
	ldrsw	x0, [sp, 72]
	lsl	x0, x0, 2
	ldr	x1, [sp, 56]
	add	x2, x1, x0
	ldrsw	x0, [sp, 48]
	lsl	x0, x0, 2
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	mov	x1, x0
	mov	x0, x2
	bl	swap
	ldrsw	x0, [sp, 48]
	lsl	x0, x0, 2
	ldr	x1, [sp, 56]
	add	x1, x1, x0
	ldrsw	x0, [sp, 48]
	lsl	x0, x0, 2
	ldr	x2, [sp, 24]
	add	x0, x2, x0
	ldr	w1, [x1]
	str	w1, [x0]
	ldr	w0, [sp, 48]
	add	w0, w0, 1
	mov	w5, w0
	ldr	x4, [sp, 24]
	ldr	x3, [sp, 32]
	ldr	x2, [sp, 40]
	ldr	w1, [sp, 52]
	ldr	x0, [sp, 56]
	bl	backtrack
	ldrsw	x0, [sp, 72]
	lsl	x0, x0, 2
	ldr	x1, [sp, 56]
	add	x2, x1, x0
	ldrsw	x0, [sp, 48]
	lsl	x0, x0, 2
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	mov	x1, x0
	mov	x0, x2
	bl	swap
	ldr	w0, [sp, 72]
	add	w0, w0, 1
	str	w0, [sp, 72]
	ldr	w1, [sp, 72]
	ldr	w0, [sp, 52]
	cmp	w1, w0
	blt	.L8
	ldp	x29, x30, [sp], 80
	ret
permute:
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	w1, [sp, 36]
	str	x2, [sp, 24]
	str	x3, [sp, 16]
	mov	w0, 1
	str	w0, [sp, 76]
	mov	w0, 1
	str	w0, [sp, 72]
	b	.L10
	ldr	w1, [sp, 76]
	ldr	w0, [sp, 72]
	mul	w0, w1, w0
	str	w0, [sp, 76]
	ldr	w0, [sp, 72]
	add	w0, w0, 1
	str	w0, [sp, 72]
	ldr	w1, [sp, 72]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	ble	.L11
	ldrsw	x0, [sp, 76]
	lsl	x0, x0, 3
	bl	malloc
	sxtw	x0, w0
	str	x0, [sp, 56]
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	bl	malloc
	sxtw	x0, w0
	str	x0, [sp, 48]
	ldr	x0, [sp, 24]
	str	wzr, [x0]
	ldrsw	x0, [sp, 76]
	lsl	x0, x0, 2
	bl	malloc
	sxtw	x0, w0
	mov	x1, x0
	ldr	x0, [sp, 16]
	str	x1, [x0]
	mov	w5, 0
	ldr	x4, [sp, 48]
	ldr	x3, [sp, 24]
	ldr	x2, [sp, 56]
	ldr	w1, [sp, 36]
	ldr	x0, [sp, 40]
	bl	backtrack
	str	wzr, [sp, 68]
	b	.L12
	ldr	x0, [sp, 16]
	ldr	x1, [x0]
	ldrsw	x0, [sp, 68]
	lsl	x0, x0, 2
	add	x0, x1, x0
	ldr	w1, [sp, 36]
	str	w1, [x0]
	ldr	w0, [sp, 68]
	add	w0, w0, 1
	str	w0, [sp, 68]
	ldr	w1, [sp, 68]
	ldr	w0, [sp, 76]
	cmp	w1, w0
	blt	.L13
	ldr	x0, [sp, 48]
	bl	free
	ldr	x0, [sp, 56]
	ldp	x29, x30, [sp], 80
	ret