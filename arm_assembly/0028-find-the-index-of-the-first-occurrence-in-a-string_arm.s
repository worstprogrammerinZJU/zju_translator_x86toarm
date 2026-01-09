strStr:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	bl	strlen
	str	w0, [sp, 36]
	ldr	x0, [sp, 16]
	bl	strlen
	str	w0, [sp, 32]
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 32]
	cmp	w1, w0
	bge	.L2
	mov	w0, -1
	b	.L3
	str	wzr, [sp, 44]
	b	.L4
	str	wzr, [sp, 40]
	b	.L5
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 40]
	add	w0, w1, w0
	sxtw	x0, w0
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w1, [x0]
	ldrsw	x0, [sp, 40]
	ldr	x2, [sp, 16]
	add	x0, x2, x0
	ldrb	w0, [x0]
	cmp	w1, w0
	bne	.L11
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 32]
	cmp	w1, w0
	blt	.L8
	b	.L7
	nop
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 32]
	cmp	w1, w0
	bne	.L9
	ldr	w0, [sp, 44]
	b	.L3
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 32]
	sub	w0, w1, w0
	ldr	w1, [sp, 44]
	cmp	w1, w0
	ble	.L10
	mov	w0, -1
	ldp	x29, x30, [sp], 48
	ret