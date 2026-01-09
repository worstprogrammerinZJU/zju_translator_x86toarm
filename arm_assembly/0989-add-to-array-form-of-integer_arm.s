addToArrayForm:
	stp	x29, x30, [sp, -96]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	w1, [sp, 36]
	str	w2, [sp, 32]
	str	x3, [sp, 24]
	ldr	w2, [sp, 36]
	ldr	w1, [sp, 36]
	mov	w0, 6
	cmp	w2, 6
	csel	w0, w1, w0, ge
	add	w0, w0, 2
	str	w0, [sp, 68]
	ldrsw	x0, [sp, 68]
	lsl	x0, x0, 2
	bl	malloc
	sxtw	x0, w0
	str	x0, [sp, 56]
	str	wzr, [sp, 92]
	ldr	w0, [sp, 36]
	sub	w0, w0, #1
	str	w0, [sp, 88]
	str	wzr, [sp, 84]
	b	.L2
	ldr	w0, [sp, 92]
	str	w0, [sp, 80]
	ldr	w0, [sp, 88]
	cmp	w0, 0
	blt	.L3
	ldrsw	x0, [sp, 88]
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	w0, [x0]
	ldr	w1, [sp, 80]
	add	w0, w1, w0
	str	w0, [sp, 80]
	ldr	w0, [sp, 88]
	sub	w0, w0, #1
	str	w0, [sp, 88]
	ldr	w0, [sp, 32]
	cmp	w0, 0
	ble	.L4
	ldr	w2, [sp, 32]
	mov	w0, 26215
	movk	w0, 0x6666, lsl 16
	smull	x0, w2, w0
	lsr	x0, x0, 32
	asr	w1, w0, 2
	asr	w0, w2, 31
	sub	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 1
	sub	w1, w2, w0
	ldr	w0, [sp, 80]
	add	w0, w0, w1
	str	w0, [sp, 80]
	ldr	w0, [sp, 32]
	mov	w1, 26215
	movk	w1, 0x6666, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w1, w1, 2
	asr	w0, w0, 31
	sub	w0, w1, w0
	str	w0, [sp, 32]
	ldrsw	x0, [sp, 84]
	lsl	x0, x0, 2
	ldr	x1, [sp, 56]
	add	x3, x1, x0
	ldr	w2, [sp, 80]
	mov	w0, 26215
	movk	w0, 0x6666, lsl 16
	smull	x0, w2, w0
	lsr	x0, x0, 32
	asr	w1, w0, 2
	asr	w0, w2, 31
	sub	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 1
	sub	w1, w2, w0
	str	w1, [x3]
	ldr	w0, [sp, 80]
	mov	w1, 26215
	movk	w1, 0x6666, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w1, w1, 2
	asr	w0, w0, 31
	sub	w0, w1, w0
	str	w0, [sp, 92]
	ldr	w0, [sp, 84]
	add	w0, w0, 1
	str	w0, [sp, 84]
	ldr	w0, [sp, 88]
	cmp	w0, 0
	bge	.L5
	ldr	w0, [sp, 32]
	cmp	w0, 0
	bgt	.L5
	ldr	w0, [sp, 92]
	cmp	w0, 0
	bgt	.L5
	str	wzr, [sp, 76]
	ldr	w0, [sp, 84]
	sub	w0, w0, #1
	str	w0, [sp, 72]
	b	.L6
	ldrsw	x0, [sp, 76]
	lsl	x0, x0, 2
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	w0, [x0]
	str	w0, [sp, 52]
	ldrsw	x0, [sp, 72]
	lsl	x0, x0, 2
	ldr	x1, [sp, 56]
	add	x1, x1, x0
	ldrsw	x0, [sp, 76]
	lsl	x0, x0, 2
	ldr	x2, [sp, 56]
	add	x0, x2, x0
	ldr	w1, [x1]
	str	w1, [x0]
	ldrsw	x0, [sp, 72]
	lsl	x0, x0, 2
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	w1, [sp, 52]
	str	w1, [x0]
	ldr	w0, [sp, 76]
	add	w0, w0, 1
	str	w0, [sp, 76]
	ldr	w0, [sp, 72]
	sub	w0, w0, #1
	str	w0, [sp, 72]
	ldr	w1, [sp, 76]
	ldr	w0, [sp, 72]
	cmp	w1, w0
	blt	.L7
	ldr	x0, [sp, 24]
	ldr	w1, [sp, 84]
	str	w1, [x0]
	ldr	x0, [sp, 56]
	ldp	x29, x30, [sp], 96
	ret