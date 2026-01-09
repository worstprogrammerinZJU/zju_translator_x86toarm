max:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	x2, [sp]
	ldr	x1, [sp]
	cmp	x2, x0
	csel	x0, x1, x0, ge
	add	sp, sp, 16
	ret
maxSumMinProduct:
	stp	x29, x30, [sp, -112]!
	mov	x29, sp
	str	x19, [sp, 16]
	sub	sp, sp, #16
	str	x0, [x29, 40]
	str	w1, [x29, 36]
	mov	x0, sp
	mov	x19, x0
	str	xzr, [x29, 104]
	ldr	w0, [x29, 36]
	add	w0, w0, 1
	sxtw	x1, w0
	sub	x1, x1, #1
	str	x1, [x29, 80]
	sxtw	x1, w0
	mov	x16, x1
	mov	x17, 0
	lsr	x1, x16, 58
	lsl	x9, x17, 6
	orr	x9, x1, x9
	lsl	x8, x16, 6
	sxtw	x1, w0
	mov	x14, x1
	mov	x15, 0
	lsr	x1, x14, 58
	lsl	x7, x15, 6
	orr	x7, x1, x7
	lsl	x6, x14, 6
	sxtw	x0, w0
	lsl	x0, x0, 3
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
	add	x0, x0, 7
	lsr	x0, x0, 3
	lsl	x0, x0, 3
	str	x0, [x29, 72]
	ldr	w0, [x29, 36]
	add	w0, w0, 1
	sxtw	x1, w0
	sub	x1, x1, #1
	str	x1, [x29, 64]
	sxtw	x1, w0
	mov	x12, x1
	mov	x13, 0
	lsr	x1, x12, 58
	lsl	x5, x13, 6
	orr	x5, x1, x5
	lsl	x4, x12, 6
	sxtw	x1, w0
	mov	x10, x1
	mov	x11, 0
	lsr	x1, x10, 58
	lsl	x3, x11, 6
	orr	x3, x1, x3
	lsl	x2, x10, 6
	sxtw	x0, w0
	lsl	x0, x0, 3
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
	add	x0, x0, 7
	lsr	x0, x0, 3
	lsl	x0, x0, 3
	str	x0, [x29, 56]
	ldr	x0, [x29, 72]
	str	xzr, [x0]
	str	wzr, [x29, 100]
	b	.L10
	ldr	x0, [x29, 72]
	ldrsw	x1, [x29, 100]
	ldr	x1, [x0, x1, lsl 3]
	ldrsw	x0, [x29, 100]
	lsl	x0, x0, 2
	ldr	x2, [x29, 40]
	add	x0, x2, x0
	ldr	w0, [x0]
	sxtw	x0, w0
	ldr	w2, [x29, 100]
	add	w3, w2, 1
	add	x2, x1, x0
	ldr	x0, [x29, 72]
	sxtw	x1, w3
	str	x2, [x0, x1, lsl 3]
	ldr	w0, [x29, 100]
	add	w0, w0, 1
	str	w0, [x29, 100]
	ldr	w1, [x29, 100]
	ldr	w0, [x29, 36]
	cmp	w1, w0
	blt	.L11
	mov	w0, -1
	str	w0, [x29, 96]
	str	wzr, [x29, 92]
	b	.L12
	ldr	w0, [x29, 96]
	sub	w1, w0, #1
	str	w1, [x29, 96]
	ldr	x1, [x29, 56]
	sxtw	x0, w0
	ldr	x0, [x1, x0, lsl 3]
	str	w0, [x29, 52]
	ldrsw	x0, [x29, 52]
	lsl	x0, x0, 2
	ldr	x1, [x29, 40]
	add	x0, x1, x0
	ldr	w0, [x0]
	sxtw	x1, w0
	ldr	x0, [x29, 72]
	ldrsw	x2, [x29, 92]
	ldr	x2, [x0, x2, lsl 3]
	ldr	w0, [x29, 96]
	cmp	w0, 0
	blt	.L14
	ldr	x0, [x29, 56]
	ldrsw	x3, [x29, 96]
	ldr	x0, [x0, x3, lsl 3]
	add	x0, x0, 1
	b	.L15
	mov	x0, 0
	ldr	x3, [x29, 72]
	ldr	x0, [x3, x0, lsl 3]
	sub	x0, x2, x0
	mul	x0, x1, x0
	mov	x1, x0
	ldr	x0, [x29, 104]
	bl	max
	str	x0, [x29, 104]
	ldr	w0, [x29, 96]
	cmp	w0, 0
	blt	.L16
	ldr	w1, [x29, 92]
	ldr	w0, [x29, 36]
	cmp	w1, w0
	beq	.L17
	ldr	x0, [x29, 56]
	ldrsw	x1, [x29, 96]
	ldr	x0, [x0, x1, lsl 3]
	lsl	x0, x0, 2
	ldr	x1, [x29, 40]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsw	x0, [x29, 92]
	lsl	x0, x0, 2
	ldr	x2, [x29, 40]
	add	x0, x2, x0
	ldr	w0, [x0]
	cmp	w1, w0
	bgt	.L17
	ldr	w0, [x29, 96]
	add	w0, w0, 1
	str	w0, [x29, 96]
	ldrsw	x2, [x29, 92]
	ldr	x0, [x29, 56]
	ldrsw	x1, [x29, 96]
	str	x2, [x0, x1, lsl 3]
	ldr	w0, [x29, 92]
	add	w0, w0, 1
	str	w0, [x29, 92]
	ldr	w1, [x29, 92]
	ldr	w0, [x29, 36]
	cmp	w1, w0
	ble	.L13
	ldr	x0, [x29, 104]
	mov	x1, 36837
	movk	x1, 0x12a2, lsl 16
	movk	x1, 0x5f31, lsl 32
	movk	x1, 0x8970, lsl 48
	smulh	x1, x0, x1
	add	x1, x1, x0
	asr	x2, x1, 29
	asr	x1, x0, 63
	sub	x1, x2, x1
	mov	x2, 51719
	movk	x2, 0x3b9a, lsl 16
	mul	x1, x1, x2
	sub	x1, x0, x1
	mov	w0, w1
	mov	sp, x19
	mov	sp, x29
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 112
	ret