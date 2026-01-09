numDecodings:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	bl	strlen
	str	w0, [sp, 40]
	ldr	w0, [sp, 40]
	cmp	w0, 1
	bne	.L2
	ldr	x0, [sp, 24]
	ldrb	w0, [x0]
	cmp	w0, 48
	cset	w0, ne
	and	w0, w0, 255
	b	.L3
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	sxtw	x0, w0
	lsl	x0, x0, 2
	bl	malloc
	sxtw	x0, w0
	str	x0, [sp, 32]
	ldrsw	x0, [sp, 40]
	lsl	x0, x0, 2
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	mov	w1, 1
	str	w1, [x0]
	ldrsw	x0, [sp, 40]
	sub	x0, x0, #1
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 48
	cset	w0, ne
	and	w2, w0, 255
	ldrsw	x0, [sp, 40]
	lsl	x0, x0, 2
	sub	x0, x0, #4
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	mov	w1, w2
	str	w1, [x0]
	ldr	w0, [sp, 40]
	sub	w0, w0, #2
	str	w0, [sp, 44]
	b	.L4
	ldrsw	x0, [sp, 44]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 48
	bne	.L5
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 2
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	str	wzr, [x0]
	b	.L6
	ldrsw	x0, [sp, 44]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 49
	beq	.L7
	ldrsw	x0, [sp, 44]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 50
	bne	.L8
	ldrsw	x0, [sp, 44]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 50
	bne	.L9
	ldrsw	x0, [sp, 44]
	add	x0, x0, 1
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 54
	bls	.L9
	ldrsw	x0, [sp, 44]
	add	x0, x0, 2
	lsl	x0, x0, 2
	ldr	x1, [sp, 32]
	add	x1, x1, x0
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 2
	ldr	x2, [sp, 32]
	add	x0, x2, x0
	ldr	w1, [x1]
	str	w1, [x0]
	b	.L6
	ldrsw	x0, [sp, 44]
	add	x0, x0, 1
	lsl	x0, x0, 2
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	ldr	w2, [x0]
	ldrsw	x0, [sp, 44]
	add	x0, x0, 2
	lsl	x0, x0, 2
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 2
	ldr	x3, [sp, 32]
	add	x0, x3, x0
	add	w1, w2, w1
	str	w1, [x0]
	b	.L6
	ldrsw	x0, [sp, 44]
	add	x0, x0, 1
	lsl	x0, x0, 2
	ldr	x1, [sp, 32]
	add	x1, x1, x0
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 2
	ldr	x2, [sp, 32]
	add	x0, x2, x0
	ldr	w1, [x1]
	str	w1, [x0]
	ldr	w0, [sp, 44]
	sub	w0, w0, #1
	str	w0, [sp, 44]
	ldr	w0, [sp, 44]
	cmp	w0, 0
	bge	.L11
	ldr	x0, [sp, 32]
	ldr	w0, [x0]
	ldp	x29, x30, [sp], 48
	ret