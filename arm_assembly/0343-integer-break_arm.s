integerBreak:
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	str	x19, [sp, 16]
	sub	sp, sp, #16
	str	w0, [x29, 44]
	mov	x0, sp
	mov	x19, x0
	ldr	w0, [x29, 44]
	cmp	w0, 2
	bgt	.L2
	mov	w0, 1
	b	.L3
	ldr	w0, [x29, 44]
	add	w0, w0, 1
	sxtw	x1, w0
	sub	x1, x1, #1
	str	x1, [x29, 64]
	sxtw	x1, w0
	mov	x8, x1
	mov	x9, 0
	lsr	x1, x8, 59
	lsl	x5, x9, 5
	orr	x5, x1, x5
	lsl	x4, x8, 5
	sxtw	x1, w0
	mov	x6, x1
	mov	x7, 0
	lsr	x1, x6, 59
	lsl	x3, x7, 5
	orr	x3, x1, x3
	lsl	x2, x6, 5
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x0, x0, 15
	lsr	x0, x0, 4
	lsl	x0, x0, 4
	and	x1, x0, -65536
	sub	x1, sp, x1
	cmp	sp, x1
	beq	.L5
	sub	sp, sp, #65536
	str	xzr, [sp, 1024]
	b	.L4
	and	x1, x0, 65535
	sub	sp, sp, x1
	str	xzr, [sp]
	and	x0, x0, 65535
	cmp	x0, 1024
	bcc	.L6
	str	xzr, [sp, 1024]
	add	x0, sp, 16
	add	x0, x0, 3
	lsr	x0, x0, 2
	lsl	x0, x0, 2
	str	x0, [x29, 56]
	ldr	x0, [x29, 56]
	str	wzr, [x0]
	ldr	x0, [x29, 56]
	str	wzr, [x0, 4]
	ldr	x0, [x29, 56]
	mov	w1, 1
	str	w1, [x0, 8]
	mov	w0, 3
	str	w0, [x29, 76]
	b	.L7
	ldr	x0, [x29, 56]
	ldrsw	x1, [x29, 76]
	str	wzr, [x0, x1, lsl 2]
	mov	w0, 1
	str	w0, [x29, 72]
	b	.L8
	ldr	x0, [x29, 56]
	ldrsw	x1, [x29, 76]
	ldr	w2, [x0, x1, lsl 2]
	ldr	w1, [x29, 76]
	ldr	w0, [x29, 72]
	sub	w1, w1, w0
	ldr	w0, [x29, 72]
	mul	w0, w1, w0
	mov	w1, w0
	mov	w0, w2
	bl	fmax
	mov	w2, w0
	ldr	x0, [x29, 56]
	ldrsw	x1, [x29, 76]
	str	w2, [x0, x1, lsl 2]
	ldr	x0, [x29, 56]
	ldrsw	x1, [x29, 76]
	ldr	w2, [x0, x1, lsl 2]
	ldr	w1, [x29, 76]
	ldr	w0, [x29, 72]
	sub	w1, w1, w0
	ldr	x0, [x29, 56]
	sxtw	x1, w1
	ldr	w1, [x0, x1, lsl 2]
	ldr	w0, [x29, 72]
	mul	w0, w1, w0
	mov	w1, w0
	mov	w0, w2
	bl	fmax
	mov	w2, w0
	ldr	x0, [x29, 56]
	ldrsw	x1, [x29, 76]
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [x29, 72]
	add	w0, w0, 1
	str	w0, [x29, 72]
	ldr	w0, [x29, 76]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	mov	w1, w0
	ldr	w0, [x29, 72]
	cmp	w0, w1
	ble	.L9
	ldr	w0, [x29, 76]
	add	w0, w0, 1
	str	w0, [x29, 76]
	ldr	w1, [x29, 76]
	ldr	w0, [x29, 44]
	cmp	w1, w0
	ble	.L10
	ldr	x0, [x29, 56]
	ldrsw	x1, [x29, 44]
	ldr	w0, [x0, x1, lsl 2]
	mov	sp, x19
	mov	sp, x29
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 80
	ret