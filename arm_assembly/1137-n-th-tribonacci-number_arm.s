tribonacci:
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	sub	sp, sp, #16
	str	w0, [x29, 28]
	mov	x0, sp
	mov	x10, x0
	ldr	w0, [x29, 28]
	cmp	w0, 0
	bne	.L2
	mov	w0, 0
	b	.L3
	ldr	w0, [x29, 28]
	cmp	w0, 1
	beq	.L4
	ldr	w0, [x29, 28]
	cmp	w0, 2
	bne	.L5
	mov	w0, 1
	b	.L3
	ldr	w0, [x29, 28]
	add	w0, w0, 1
	sxtw	x1, w0
	sub	x1, x1, #1
	str	x1, [x29, 48]
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
	beq	.L7
	sub	sp, sp, #65536
	str	xzr, [sp, 1024]
	b	.L6
	and	x1, x0, 65535
	sub	sp, sp, x1
	str	xzr, [sp]
	and	x0, x0, 65535
	cmp	x0, 1024
	bcc	.L8
	str	xzr, [sp, 1024]
	add	x0, sp, 16
	add	x0, x0, 3
	lsr	x0, x0, 2
	lsl	x0, x0, 2
	str	x0, [x29, 40]
	ldr	x0, [x29, 40]
	str	wzr, [x0]
	ldr	x0, [x29, 40]
	mov	w1, 1
	str	w1, [x0, 4]
	ldr	x0, [x29, 40]
	mov	w1, 1
	str	w1, [x0, 8]
	mov	w0, 3
	str	w0, [x29, 60]
	b	.L9
	ldr	w0, [x29, 60]
	sub	w1, w0, #1
	ldr	x0, [x29, 40]
	sxtw	x1, w1
	ldr	w1, [x0, x1, lsl 2]
	ldr	w0, [x29, 60]
	sub	w2, w0, #2
	ldr	x0, [x29, 40]
	sxtw	x2, w2
	ldr	w0, [x0, x2, lsl 2]
	add	w1, w1, w0
	ldr	w0, [x29, 60]
	sub	w2, w0, #3
	ldr	x0, [x29, 40]
	sxtw	x2, w2
	ldr	w0, [x0, x2, lsl 2]
	add	w2, w1, w0
	ldr	x0, [x29, 40]
	ldrsw	x1, [x29, 60]
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [x29, 60]
	add	w0, w0, 1
	str	w0, [x29, 60]
	ldr	w1, [x29, 60]
	ldr	w0, [x29, 28]
	cmp	w1, w0
	ble	.L10
	ldr	x0, [x29, 40]
	ldrsw	x1, [x29, 28]
	ldr	w0, [x0, x1, lsl 2]
	mov	sp, x10
	mov	sp, x29
	ldp	x29, x30, [sp], 64
	ret