findNumberOfLIS:
	stp	x29, x30, [sp, -112]!
	mov	x29, sp
	str	x19, [sp, 16]
	sub	sp, sp, #16
	str	x0, [x29, 40]
	str	w1, [x29, 36]
	mov	x0, sp
	mov	x19, x0
	ldr	w0, [x29, 36]
	cmp	w0, 0
	bne	.L2
	mov	w0, 0
	b	.L3
	ldr	w0, [x29, 36]
	sxtw	x1, w0
	sub	x1, x1, #1
	str	x1, [x29, 80]
	sxtw	x1, w0
	mov	x16, x1
	mov	x17, 0
	lsr	x1, x16, 59
	lsl	x9, x17, 5
	orr	x9, x1, x9
	lsl	x8, x16, 5
	sxtw	x1, w0
	mov	x14, x1
	mov	x15, 0
	lsr	x1, x14, 59
	lsl	x7, x15, 5
	orr	x7, x1, x7
	lsl	x6, x14, 5
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
	str	x0, [x29, 72]
	ldr	w0, [x29, 36]
	sxtw	x1, w0
	sub	x1, x1, #1
	str	x1, [x29, 64]
	sxtw	x1, w0
	mov	x12, x1
	mov	x13, 0
	lsr	x1, x12, 59
	lsl	x5, x13, 5
	orr	x5, x1, x5
	lsl	x4, x12, 5
	sxtw	x1, w0
	mov	x10, x1
	mov	x11, 0
	lsr	x1, x10, 59
	lsl	x3, x11, 5
	orr	x3, x1, x3
	lsl	x2, x10, 5
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x0, x0, 15
	lsr	x0, x0, 4
	lsl	x0, x0, 4
	and	x1, x0, -65536
	sub	x1, sp, x1
	cmp	sp, x1
	beq	.L8
	sub	sp, sp, #65536
	str	xzr, [sp, 1024]
	b	.L7
	and	x1, x0, 65535
	sub	sp, sp, x1
	str	xzr, [sp]
	and	x0, x0, 65535
	cmp	x0, 1024
	bcc	.L9
	str	xzr, [sp, 1024]
	add	x0, sp, 16
	add	x0, x0, 3
	lsr	x0, x0, 2
	lsl	x0, x0, 2
	str	x0, [x29, 56]
	mov	w0, 1
	str	w0, [x29, 108]
	str	wzr, [x29, 104]
	str	wzr, [x29, 100]
	b	.L10
	ldr	x0, [x29, 72]
	ldrsw	x1, [x29, 100]
	mov	w2, 1
	str	w2, [x0, x1, lsl 2]
	ldr	x0, [x29, 56]
	ldrsw	x1, [x29, 100]
	mov	w2, 1
	str	w2, [x0, x1, lsl 2]
	str	wzr, [x29, 96]
	b	.L11
	ldrsw	x0, [x29, 100]
	lsl	x0, x0, 2
	ldr	x1, [x29, 40]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsw	x0, [x29, 96]
	lsl	x0, x0, 2
	ldr	x2, [x29, 40]
	add	x0, x2, x0
	ldr	w0, [x0]
	cmp	w1, w0
	ble	.L12
	ldr	x0, [x29, 72]
	ldrsw	x1, [x29, 96]
	ldr	w1, [x0, x1, lsl 2]
	ldr	x0, [x29, 72]
	ldrsw	x2, [x29, 100]
	ldr	w0, [x0, x2, lsl 2]
	cmp	w1, w0
	blt	.L13
	ldr	x0, [x29, 72]
	ldrsw	x1, [x29, 96]
	ldr	w0, [x0, x1, lsl 2]
	add	w2, w0, 1
	ldr	x0, [x29, 72]
	ldrsw	x1, [x29, 100]
	str	w2, [x0, x1, lsl 2]
	ldr	x0, [x29, 56]
	ldrsw	x1, [x29, 96]
	ldr	w2, [x0, x1, lsl 2]
	ldr	x0, [x29, 56]
	ldrsw	x1, [x29, 100]
	str	w2, [x0, x1, lsl 2]
	b	.L12
	ldr	x0, [x29, 72]
	ldrsw	x1, [x29, 96]
	ldr	w0, [x0, x1, lsl 2]
	add	w1, w0, 1
	ldr	x0, [x29, 72]
	ldrsw	x2, [x29, 100]
	ldr	w0, [x0, x2, lsl 2]
	cmp	w1, w0
	bne	.L12
	ldr	x0, [x29, 56]
	ldrsw	x1, [x29, 100]
	ldr	w1, [x0, x1, lsl 2]
	ldr	x0, [x29, 56]
	ldrsw	x2, [x29, 96]
	ldr	w0, [x0, x2, lsl 2]
	add	w2, w1, w0
	ldr	x0, [x29, 56]
	ldrsw	x1, [x29, 100]
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [x29, 96]
	add	w0, w0, 1
	str	w0, [x29, 96]
	ldr	w1, [x29, 96]
	ldr	w0, [x29, 100]
	cmp	w1, w0
	blt	.L14
	ldr	x0, [x29, 72]
	ldrsw	x1, [x29, 100]
	ldr	w0, [x0, x1, lsl 2]
	mov	w1, w0
	ldr	w0, [x29, 108]
	bl	fmax
	str	w0, [x29, 108]
	ldr	w0, [x29, 100]
	add	w0, w0, 1
	str	w0, [x29, 100]
	ldr	w1, [x29, 100]
	ldr	w0, [x29, 36]
	cmp	w1, w0
	blt	.L15
	str	wzr, [x29, 92]
	b	.L16
	ldr	x0, [x29, 72]
	ldrsw	x1, [x29, 92]
	ldr	w0, [x0, x1, lsl 2]
	ldr	w1, [x29, 108]
	cmp	w1, w0
	bne	.L17
	ldr	x0, [x29, 56]
	ldrsw	x1, [x29, 92]
	ldr	w0, [x0, x1, lsl 2]
	ldr	w1, [x29, 104]
	add	w0, w1, w0
	str	w0, [x29, 104]
	ldr	w0, [x29, 92]
	add	w0, w0, 1
	str	w0, [x29, 92]
	ldr	w1, [x29, 92]
	ldr	w0, [x29, 36]
	cmp	w1, w0
	blt	.L18
	ldr	w0, [x29, 104]
	mov	sp, x19
	mov	sp, x29
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 112
	ret