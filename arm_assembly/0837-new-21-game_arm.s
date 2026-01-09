new21Game:
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	sub	sp, sp, #16
	str	w0, [x29, 28]
	str	w1, [x29, 24]
	str	w2, [x29, 20]
	mov	x0, sp
	mov	x2, x0
	ldr	w0, [x29, 24]
	cmp	w0, 0
	beq	.L2
	ldr	w1, [x29, 24]
	ldr	w0, [x29, 20]
	add	w0, w1, w0
	ldr	w1, [x29, 28]
	cmp	w1, w0
	blt	.L3
	fmov	d0, 1.0e+0
	b	.L4
	fmov	d0, 1.0e+0
	str	d0, [x29, 72]
	str	xzr, [x29, 64]
	ldr	w0, [x29, 28]
	add	w0, w0, 1
	sxtw	x1, w0
	sub	x1, x1, #1
	str	x1, [x29, 48]
	sxtw	x1, w0
	mov	x10, x1
	mov	x11, 0
	lsr	x1, x10, 58
	lsl	x7, x11, 6
	orr	x7, x1, x7
	lsl	x6, x10, 6
	sxtw	x1, w0
	mov	x8, x1
	mov	x9, 0
	lsr	x1, x8, 58
	lsl	x5, x9, 6
	orr	x5, x1, x5
	lsl	x4, x8, 6
	sxtw	x0, w0
	lsl	x0, x0, 3
	add	x0, x0, 15
	lsr	x0, x0, 4
	lsl	x0, x0, 4
	and	x1, x0, -65536
	sub	x1, sp, x1
	cmp	sp, x1
	beq	.L6
	sub	sp, sp, #65536
	str	xzr, [sp, 1024]
	b	.L5
	and	x1, x0, 65535
	sub	sp, sp, x1
	str	xzr, [sp]
	and	x0, x0, 65535
	cmp	x0, 1024
	bcc	.L7
	str	xzr, [sp, 1024]
	add	x0, sp, 16
	add	x0, x0, 7
	lsr	x0, x0, 3
	lsl	x0, x0, 3
	str	x0, [x29, 40]
	ldr	x0, [x29, 40]
	fmov	d0, 1.0e+0
	str	d0, [x0]
	mov	w0, 1
	str	w0, [x29, 60]
	b	.L8
	ldr	w0, [x29, 20]
	scvtf	d0, w0
	ldr	d1, [x29, 72]
	fdiv	d0, d1, d0
	ldr	x0, [x29, 40]
	ldrsw	x1, [x29, 60]
	str	d0, [x0, x1, lsl 3]
	ldr	w1, [x29, 60]
	ldr	w0, [x29, 24]
	cmp	w1, w0
	bge	.L9
	ldr	x0, [x29, 40]
	ldrsw	x1, [x29, 60]
	ldr	d0, [x0, x1, lsl 3]
	ldr	d1, [x29, 72]
	fadd	d0, d1, d0
	str	d0, [x29, 72]
	b	.L10
	ldr	x0, [x29, 40]
	ldrsw	x1, [x29, 60]
	ldr	d0, [x0, x1, lsl 3]
	ldr	d1, [x29, 64]
	fadd	d0, d1, d0
	str	d0, [x29, 64]
	ldr	w1, [x29, 60]
	ldr	w0, [x29, 20]
	cmp	w1, w0
	blt	.L11
	ldr	w1, [x29, 60]
	ldr	w0, [x29, 20]
	sub	w1, w1, w0
	ldr	x0, [x29, 40]
	sxtw	x1, w1
	ldr	d0, [x0, x1, lsl 3]
	ldr	d1, [x29, 72]
	fsub	d0, d1, d0
	str	d0, [x29, 72]
	ldr	w0, [x29, 60]
	add	w0, w0, 1
	str	w0, [x29, 60]
	ldr	w1, [x29, 60]
	ldr	w0, [x29, 28]
	cmp	w1, w0
	ble	.L12
	ldr	d0, [x29, 64]
	mov	sp, x2
	mov	sp, x29
	ldp	x29, x30, [sp], 80
	ret