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
dfs:
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	w2, [sp, 28]
	str	w3, [sp, 24]
	str	w4, [sp, 20]
	str	w5, [sp, 16]
	ldrsw	x0, [sp, 20]
	lsl	x0, x0, 3
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 16]
	lsl	x0, x0, 2
	add	x0, x1, x0
	ldr	w0, [x0]
	cmp	w0, 0
	beq	.L4
	ldrsw	x0, [sp, 20]
	lsl	x0, x0, 3
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 16]
	lsl	x0, x0, 2
	add	x0, x1, x0
	ldr	w0, [x0]
	b	.L5
	str	wzr, [sp, 60]
	ldr	w0, [sp, 20]
	cmp	w0, 0
	ble	.L6
	ldrsw	x0, [sp, 20]
	lsl	x0, x0, 3
	sub	x0, x0, #8
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 16]
	lsl	x0, x0, 2
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsw	x0, [sp, 20]
	lsl	x0, x0, 3
	ldr	x2, [sp, 40]
	add	x0, x2, x0
	ldr	x2, [x0]
	ldrsw	x0, [sp, 16]
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w0, [x0]
	cmp	w1, w0
	ble	.L6
	ldr	w0, [sp, 20]
	sub	w0, w0, #1
	ldr	w5, [sp, 16]
	mov	w4, w0
	ldr	w3, [sp, 24]
	ldr	w2, [sp, 28]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	dfs
	mov	w1, w0
	ldr	w0, [sp, 60]
	bl	max
	str	w0, [sp, 60]
	ldr	w0, [sp, 16]
	cmp	w0, 0
	ble	.L7
	ldrsw	x0, [sp, 20]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 16]
	lsl	x0, x0, 2
	sub	x0, x0, #4
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsw	x0, [sp, 20]
	lsl	x0, x0, 3
	ldr	x2, [sp, 40]
	add	x0, x2, x0
	ldr	x2, [x0]
	ldrsw	x0, [sp, 16]
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w0, [x0]
	cmp	w1, w0
	ble	.L7
	ldr	w0, [sp, 16]
	sub	w0, w0, #1
	mov	w5, w0
	ldr	w4, [sp, 20]
	ldr	w3, [sp, 24]
	ldr	w2, [sp, 28]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	dfs
	mov	w1, w0
	ldr	w0, [sp, 60]
	bl	max
	str	w0, [sp, 60]
	ldr	w0, [sp, 28]
	sub	w0, w0, #1
	ldr	w1, [sp, 20]
	cmp	w1, w0
	bge	.L8
	ldrsw	x0, [sp, 20]
	add	x0, x0, 1
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 16]
	lsl	x0, x0, 2
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsw	x0, [sp, 20]
	lsl	x0, x0, 3
	ldr	x2, [sp, 40]
	add	x0, x2, x0
	ldr	x2, [x0]
	ldrsw	x0, [sp, 16]
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w0, [x0]
	cmp	w1, w0
	ble	.L8
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	ldr	w5, [sp, 16]
	mov	w4, w0
	ldr	w3, [sp, 24]
	ldr	w2, [sp, 28]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	dfs
	mov	w1, w0
	ldr	w0, [sp, 60]
	bl	max
	str	w0, [sp, 60]
	ldr	w0, [sp, 24]
	sub	w0, w0, #1
	ldr	w1, [sp, 16]
	cmp	w1, w0
	bge	.L9
	ldrsw	x0, [sp, 20]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 16]
	add	x0, x0, 1
	lsl	x0, x0, 2
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsw	x0, [sp, 20]
	lsl	x0, x0, 3
	ldr	x2, [sp, 40]
	add	x0, x2, x0
	ldr	x2, [x0]
	ldrsw	x0, [sp, 16]
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w0, [x0]
	cmp	w1, w0
	ble	.L9
	ldr	w0, [sp, 16]
	add	w0, w0, 1
	mov	w5, w0
	ldr	w4, [sp, 20]
	ldr	w3, [sp, 24]
	ldr	w2, [sp, 28]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	dfs
	mov	w1, w0
	ldr	w0, [sp, 60]
	bl	max
	str	w0, [sp, 60]
	ldrsw	x0, [sp, 20]
	lsl	x0, x0, 3
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 16]
	lsl	x0, x0, 2
	add	x0, x1, x0
	ldr	w1, [sp, 60]
	add	w1, w1, 1
	str	w1, [x0]
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	ldp	x29, x30, [sp], 64
	ret
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	w1, [sp, 36]
	str	x2, [sp, 24]
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 3
	bl	malloc
	sxtw	x0, w0
	str	x0, [sp, 56]
	ldr	x0, [sp, 24]
	ldr	w0, [x0]
	str	w0, [sp, 52]
	str	wzr, [sp, 76]
	b	.L11
	mov	x1, 4
	ldr	w0, [sp, 52]
	bl	calloc
	sxtw	x2, w0
	ldrsw	x0, [sp, 76]
	lsl	x0, x0, 3
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	mov	x1, x2
	str	x1, [x0]
	ldr	w0, [sp, 76]
	add	w0, w0, 1
	str	w0, [sp, 76]
	ldr	w1, [sp, 76]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	blt	.L12
	str	wzr, [sp, 68]
	str	wzr, [sp, 76]
	b	.L13
	str	wzr, [sp, 72]
	b	.L14
	ldr	w5, [sp, 72]
	ldr	w4, [sp, 76]
	ldr	w3, [sp, 52]
	ldr	w2, [sp, 36]
	ldr	x1, [sp, 56]
	ldr	x0, [sp, 40]
	bl	dfs
	mov	w1, w0
	ldr	w0, [sp, 68]
	bl	max
	str	w0, [sp, 68]
	ldr	w0, [sp, 72]
	add	w0, w0, 1
	str	w0, [sp, 72]
	ldr	w1, [sp, 72]
	ldr	w0, [sp, 52]
	cmp	w1, w0
	blt	.L15
	ldr	w0, [sp, 76]
	add	w0, w0, 1
	str	w0, [sp, 76]
	ldr	w1, [sp, 76]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	blt	.L16
	ldr	w0, [sp, 68]
	ldp	x29, x30, [sp], 80
	ret