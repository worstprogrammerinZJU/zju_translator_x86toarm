guess_bis:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	add	x0, x1, x0
	lsr	x1, x0, 63
	add	x0, x1, x0
	asr	x0, x0, 1
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	bl	guess
	str	w0, [sp, 36]
	ldr	w0, [sp, 36]
	cmp	w0, 0
	bne	.L2
	ldr	x0, [sp, 40]
	b	.L3
	ldr	w0, [sp, 36]
	cmp	w0, 0
	bge	.L4
	ldr	x0, [sp, 40]
	sub	x0, x0, #1
	mov	x1, x0
	ldr	x0, [sp, 24]
	bl	guess_bis
	b	.L3
	ldr	x0, [sp, 40]
	add	x0, x0, 1
	ldr	x1, [sp, 16]
	bl	guess_bis
	ldp	x29, x30, [sp], 48
	ret
guessNumber:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x1, [sp, 24]
	mov	x0, 0
	bl	guess_bis
	ldp	x29, x30, [sp], 32
	ret