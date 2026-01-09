lengthOfLastWord:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	wzr, [sp, 44]
	ldr	x0, [sp, 24]
	ldrb	w0, [x0]
	cmp	w0, 32
	beq	.L2
	mov	w0, 1
	str	w0, [sp, 44]
	mov	w0, 1
	str	w0, [sp, 40]
	b	.L3
	ldrsw	x0, [sp, 40]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 32
	beq	.L4
	ldrsw	x0, [sp, 40]
	sub	x0, x0, #1
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 32
	bne	.L5
	mov	w0, 1
	str	w0, [sp, 44]
	b	.L4
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	ldr	x0, [sp, 24]
	bl	strlen
	mov	w1, w0
	ldr	w0, [sp, 40]
	cmp	w0, w1
	blt	.L6
	ldr	w0, [sp, 44]
	ldp	x29, x30, [sp], 48
	ret