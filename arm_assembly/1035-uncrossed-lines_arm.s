maxUncrossedLines:
	stp	x29, x30, [sp, -128]!
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	stp	x23, x24, [sp, 48]
	sub	sp, sp, #16
	str	x0, [x29, 88]
	str	w1, [x29, 84]
	str	x2, [x29, 72]
	str	w3, [x29, 80]
	mov	x0, sp
	mov	x24, x0
	ldr	w0, [x29, 80]
	add	w1, w0, 1
	ldr	w0, [x29, 84]
	add	w2, w0, 1
	sxtw	x0, w1
	sub	x0, x0, #1
	str	x0, [x29, 112]
	sxtw	x0, w1
	mov	x18, x0
	mov	x19, 0
	lsr	x0, x18, 59
	lsl	x17, x19, 5
	orr	x17, x0, x17
	lsl	x16, x18, 5
	sxtw	x0, w1
	lsl	x19, x0, 2
	sxtw	x0, w2
	sub	x0, x0, #1
	str	x0, [x29, 104]
	sxtw	x0, w1
	mov	x10, x0
	mov	x11, 0
	sxtw	x0, w2
	mov	x8, x0
	mov	x9, 0
	mul	x3, x10, x8
	umulh	x0, x10, x8
	madd	x0, x11, x8, x0
	madd	x0, x10, x9, x0
	mov	x22, x3
	mov	x23, x0
	lsr	x0, x22, 59
	lsl	x15, x23, 5
	orr	x15, x0, x15
	lsl	x14, x22, 5
	sxtw	x0, w1
	mov	x6, x0
	mov	x7, 0
	sxtw	x0, w2
	mov	x4, x0
	mov	x5, 0
	mul	x3, x6, x4
	umulh	x0, x6, x4
	madd	x0, x7, x4, x0
	madd	x0, x6, x5, x0
	mov	x20, x3
	mov	x21, x0
	lsr	x0, x20, 59
	lsl	x13, x21, 5
	orr	x13, x0, x13
	lsl	x12, x20, 5
	sxtw	x1, w1
	sxtw	x0, w2
	mul	x0, x1, x0
	lsl	x0, x0, 2
	add	x0, x0, 15
	lsr	x0, x0, 4
	lsl	x0, x0, 4
	and	x1, x0, -65536
	sub	x1, sp, x1
	cmp	sp, x1
	beq	.L3
	sub	sp, sp, #65536
	str	xzr, [sp, 1024]
	b	.L2
	and	x1, x0, 65535
	sub	sp, sp, x1
	str	xzr, [sp]
	and	x0, x0, 65535
	cmp	x0, 1024
	bcc	.L4
	str	xzr, [sp, 1024]
	add	x0, sp, 16
	add	x0, x0, 3
	lsr	x0, x0, 2
	lsl	x0, x0, 2
	str	x0, [x29, 96]
	str	wzr, [x29, 124]
	b	.L5
	str	wzr, [x29, 120]
	b	.L6
	ldr	w0, [x29, 124]
	cmp	w0, 0
	beq	.L7
	ldr	w0, [x29, 120]
	cmp	w0, 0
	bne	.L8
	lsr	x1, x19, 2
	ldr	x0, [x29, 96]
	ldrsw	x2, [x29, 120]
	ldrsw	x3, [x29, 124]
	mul	x1, x3, x1
	add	x1, x2, x1
	str	wzr, [x0, x1, lsl 2]
	b	.L9
	ldrsw	x0, [x29, 124]
	lsl	x0, x0, 2
	sub	x0, x0, #4
	ldr	x1, [x29, 88]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsw	x0, [x29, 120]
	lsl	x0, x0, 2
	sub	x0, x0, #4
	ldr	x2, [x29, 72]
	add	x0, x2, x0
	ldr	w0, [x0]
	cmp	w1, w0
	bne	.L10
	lsr	x1, x19, 2
	ldr	w0, [x29, 124]
	sub	w3, w0, #1
	ldr	w0, [x29, 120]
	sub	w2, w0, #1
	ldr	x0, [x29, 96]
	sxtw	x2, w2
	sxtw	x3, w3
	mul	x1, x3, x1
	add	x1, x2, x1
	ldr	w0, [x0, x1, lsl 2]
	lsr	x1, x19, 2
	add	w2, w0, 1
	ldr	x0, [x29, 96]
	ldrsw	x3, [x29, 120]
	ldrsw	x4, [x29, 124]
	mul	x1, x4, x1
	add	x1, x3, x1
	str	w2, [x0, x1, lsl 2]
	b	.L9
	lsr	x1, x19, 2
	ldr	w0, [x29, 124]
	sub	w3, w0, #1
	ldr	x0, [x29, 96]
	ldrsw	x2, [x29, 120]
	sxtw	x3, w3
	mul	x1, x3, x1
	add	x1, x2, x1
	ldr	w4, [x0, x1, lsl 2]
	lsr	x1, x19, 2
	ldr	w0, [x29, 120]
	sub	w2, w0, #1
	ldr	x0, [x29, 96]
	sxtw	x2, w2
	ldrsw	x3, [x29, 124]
	mul	x1, x3, x1
	add	x1, x2, x1
	ldr	w0, [x0, x1, lsl 2]
	lsr	x20, x19, 2
	mov	w1, w0
	mov	w0, w4
	bl	fmax
	mov	w3, w0
	ldr	x0, [x29, 96]
	ldrsw	x2, [x29, 120]
	ldrsw	x1, [x29, 124]
	mul	x1, x1, x20
	add	x1, x2, x1
	str	w3, [x0, x1, lsl 2]
	ldr	w0, [x29, 120]
	add	w0, w0, 1
	str	w0, [x29, 120]
	ldr	w1, [x29, 120]
	ldr	w0, [x29, 80]
	cmp	w1, w0
	ble	.L11
	ldr	w0, [x29, 124]
	add	w0, w0, 1
	str	w0, [x29, 124]
	ldr	w1, [x29, 124]
	ldr	w0, [x29, 84]
	cmp	w1, w0
	ble	.L12
	lsr	x1, x19, 2
	ldr	x0, [x29, 96]
	ldrsw	x2, [x29, 80]
	ldrsw	x3, [x29, 84]
	mul	x1, x3, x1
	add	x1, x2, x1
	ldr	w0, [x0, x1, lsl 2]
	mov	sp, x24
	mov	sp, x29
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x29, x30, [sp], 128
	ret