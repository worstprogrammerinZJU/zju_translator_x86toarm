longestCommonPrefix:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	w1, [sp, 20]
	str	wzr, [sp, 44]
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	bl	strlen
	str	w0, [sp, 32]
	str	wzr, [sp, 40]
	b	.L2
	mov	w0, 1
	str	w0, [sp, 36]
	b	.L3
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 3
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	x0, [x0]
	bl	strlen
	mov	w1, w0
	ldr	w0, [sp, 40]
	cmp	w0, w1
	beq	.L4
	ldr	x0, [sp, 24]
	ldr	x1, [x0]
	ldrsw	x0, [sp, 40]
	add	x0, x1, x0
	ldrb	w1, [x0]
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 3
	ldr	x2, [sp, 24]
	add	x0, x2, x0
	ldr	x2, [x0]
	ldrsw	x0, [sp, 40]
	add	x0, x2, x0
	ldrb	w0, [x0]
	cmp	w1, w0
	beq	.L5
	ldr	x0, [sp, 24]
	ldr	x1, [x0]
	ldrsw	x0, [sp, 44]
	add	x0, x1, x0
	strb	wzr, [x0]
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	b	.L6
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	blt	.L7
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 32]
	cmp	w1, w0
	blt	.L8
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	ldp	x29, x30, [sp], 48
	ret