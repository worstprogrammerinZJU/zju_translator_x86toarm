lastStoneWeight:
	sub	sp, sp, #48
	str	x0, [sp, 8]
	str	w1, [sp, 4]
	b	.L2
	str	wzr, [sp, 44]
	mov	w0, 1
	str	w0, [sp, 40]
	ldrsw	x0, [sp, 40]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 2
	ldr	x2, [sp, 8]
	add	x0, x2, x0
	ldr	w0, [x0]
	cmp	w1, w0
	ble	.L3
	ldr	w0, [sp, 44]
	str	w0, [sp, 24]
	ldr	w0, [sp, 40]
	str	w0, [sp, 44]
	ldr	w0, [sp, 24]
	str	w0, [sp, 40]
	mov	w0, 2
	str	w0, [sp, 36]
	b	.L4
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 2
	ldr	x2, [sp, 8]
	add	x0, x2, x0
	ldr	w0, [x0]
	cmp	w1, w0
	ble	.L5
	ldr	w0, [sp, 44]
	str	w0, [sp, 40]
	ldr	w0, [sp, 36]
	str	w0, [sp, 44]
	b	.L6
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsw	x0, [sp, 40]
	lsl	x0, x0, 2
	ldr	x2, [sp, 8]
	add	x0, x2, x0
	ldr	w0, [x0]
	cmp	w1, w0
	ble	.L6
	ldr	w0, [sp, 36]
	str	w0, [sp, 40]
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 4]
	cmp	w1, w0
	blt	.L7
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsw	x0, [sp, 40]
	lsl	x0, x0, 2
	ldr	x2, [sp, 8]
	add	x0, x2, x0
	ldr	w0, [x0]
	cmp	w1, w0
	beq	.L8
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w2, [x0]
	ldrsw	x0, [sp, 40]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 2
	ldr	x3, [sp, 8]
	add	x0, x3, x0
	sub	w1, w2, w1
	str	w1, [x0]
	ldrsw	x0, [sp, 40]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	str	wzr, [x0]
	b	.L9
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	str	wzr, [x0]
	ldrsw	x0, [sp, 40]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	str	wzr, [x0]
	str	wzr, [sp, 32]
	str	wzr, [sp, 28]
	b	.L10
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w0, [x0]
	cmp	w0, 0
	beq	.L11
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x1, x1, x0
	ldr	w0, [sp, 32]
	add	w2, w0, 1
	str	w2, [sp, 32]
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x2, [sp, 8]
	add	x0, x2, x0
	ldr	w1, [x1]
	str	w1, [x0]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 4]
	cmp	w1, w0
	blt	.L12
	ldr	w0, [sp, 32]
	str	w0, [sp, 4]
	ldr	w0, [sp, 4]
	cmp	w0, 1
	bgt	.L13
	ldr	w0, [sp, 4]
	cmp	w0, 0
	beq	.L14
	ldr	x0, [sp, 8]
	ldr	w0, [x0]
	b	.L16
	mov	w0, 0
	add	sp, sp, 48
	ret