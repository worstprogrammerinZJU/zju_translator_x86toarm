dfsModifyBorder:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	w1, [sp, 36]
	str	w2, [sp, 32]
	str	w3, [sp, 28]
	str	w4, [sp, 24]
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 88
	beq	.L7
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 24]
	add	x0, x1, x0
	mov	w1, 84
	strb	w1, [x0]
	ldr	w0, [sp, 28]
	cmp	w0, 0
	ble	.L4
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 3
	sub	x0, x0, #8
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 79
	bne	.L4
	ldr	w0, [sp, 28]
	sub	w0, w0, #1
	ldr	w4, [sp, 24]
	mov	w3, w0
	ldr	w2, [sp, 32]
	ldr	w1, [sp, 36]
	ldr	x0, [sp, 40]
	bl	dfsModifyBorder
	ldr	w0, [sp, 24]
	cmp	w0, 0
	ble	.L5
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 24]
	sub	x0, x0, #1
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 79
	bne	.L5
	ldr	w0, [sp, 24]
	sub	w0, w0, #1
	mov	w4, w0
	ldr	w3, [sp, 28]
	ldr	w2, [sp, 32]
	ldr	w1, [sp, 36]
	ldr	x0, [sp, 40]
	bl	dfsModifyBorder
	ldr	w0, [sp, 36]
	sub	w0, w0, #1
	ldr	w1, [sp, 28]
	cmp	w1, w0
	bge	.L6
	ldrsw	x0, [sp, 28]
	add	x0, x0, 1
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 79
	bne	.L6
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	ldr	w4, [sp, 24]
	mov	w3, w0
	ldr	w2, [sp, 32]
	ldr	w1, [sp, 36]
	ldr	x0, [sp, 40]
	bl	dfsModifyBorder
	ldr	w0, [sp, 32]
	sub	w0, w0, #1
	ldr	w1, [sp, 24]
	cmp	w1, w0
	bge	.L1
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 24]
	add	x0, x0, 1
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 79
	bne	.L1
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	mov	w4, w0
	ldr	w3, [sp, 28]
	ldr	w2, [sp, 32]
	ldr	w1, [sp, 36]
	ldr	x0, [sp, 40]
	bl	dfsModifyBorder
	b	.L1
	nop
	ldp	x29, x30, [sp], 48
	ret
reModifyBorder:
	sub	sp, sp, #32
	str	x0, [sp, 8]
	str	w1, [sp, 4]
	str	w2, [sp]
	str	wzr, [sp, 28]
	b	.L9
	str	wzr, [sp, 24]
	b	.L10
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 79
	bne	.L11
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 24]
	add	x0, x1, x0
	mov	w1, 88
	strb	w1, [x0]
	b	.L12
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 84
	bne	.L12
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 3
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 24]
	add	x0, x1, x0
	mov	w1, 79
	strb	w1, [x0]
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
	ldr	w1, [sp, 24]
	ldr	w0, [sp]
	cmp	w1, w0
	blt	.L13
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 4]
	cmp	w1, w0
	blt	.L14
	nop
	nop
	add	sp, sp, 32
	ret
solve:
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	w1, [sp, 36]
	str	x2, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	w0, [x0]
	str	w0, [sp, 68]
	ldr	w0, [sp, 36]
	sub	w0, w0, #1
	str	w0, [sp, 64]
	ldr	w0, [sp, 68]
	sub	w0, w0, #1
	str	w0, [sp, 60]
	mov	w0, 1
	str	w0, [sp, 76]
	b	.L16
	mov	w4, 0
	ldr	w3, [sp, 76]
	ldr	w2, [sp, 68]
	ldr	w1, [sp, 36]
	ldr	x0, [sp, 40]
	bl	dfsModifyBorder
	ldr	w4, [sp, 60]
	ldr	w3, [sp, 76]
	ldr	w2, [sp, 68]
	ldr	w1, [sp, 36]
	ldr	x0, [sp, 40]
	bl	dfsModifyBorder
	ldr	w0, [sp, 76]
	add	w0, w0, 1
	str	w0, [sp, 76]
	ldr	w1, [sp, 76]
	ldr	w0, [sp, 64]
	cmp	w1, w0
	blt	.L17
	str	wzr, [sp, 72]
	b	.L18
	ldr	w4, [sp, 72]
	mov	w3, 0
	ldr	w2, [sp, 68]
	ldr	w1, [sp, 36]
	ldr	x0, [sp, 40]
	bl	dfsModifyBorder
	ldr	w4, [sp, 72]
	ldr	w3, [sp, 64]
	ldr	w2, [sp, 68]
	ldr	w1, [sp, 36]
	ldr	x0, [sp, 40]
	bl	dfsModifyBorder
	ldr	w0, [sp, 72]
	add	w0, w0, 1
	str	w0, [sp, 72]
	ldr	w1, [sp, 72]
	ldr	w0, [sp, 68]
	cmp	w1, w0
	blt	.L19
	ldr	w2, [sp, 68]
	ldr	w1, [sp, 36]
	ldr	x0, [sp, 40]
	bl	reModifyBorder
	nop
	ldp	x29, x30, [sp], 80
	ret