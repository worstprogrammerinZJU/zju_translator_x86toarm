stoneGameIII:
	stp	x29, x30, [sp, -96]!
	mov	x29, sp
	str	x19, [sp, 16]
	sub	sp, sp, #16
	str	x0, [x29, 40]
	str	w1, [x29, 36]
	mov	x0, sp
	mov	x19, x0
	ldr	w0, [x29, 36]
	str	w0, [x29, 76]
	ldr	w0, [x29, 76]
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
	str	x0, [x29, 56]
	str	wzr, [x29, 92]
	b	.L5
	ldr	x0, [x29, 56]
	ldrsw	x1, [x29, 92]
	mov	w2, 13824
	movk	w2, 0xc465, lsl 16
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [x29, 92]
	add	w0, w0, 1
	str	w0, [x29, 92]
	ldr	w1, [x29, 92]
	ldr	w0, [x29, 76]
	cmp	w1, w0
	blt	.L6
	ldr	w0, [x29, 76]
	sub	w0, w0, #1
	str	w0, [x29, 88]
	b	.L7
	str	wzr, [x29, 84]
	str	wzr, [x29, 80]
	b	.L8
	ldr	w1, [x29, 88]
	ldr	w0, [x29, 80]
	add	w0, w1, w0
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x1, [x29, 40]
	add	x0, x1, x0
	ldr	w0, [x0]
	ldr	w1, [x29, 84]
	add	w0, w1, w0
	str	w0, [x29, 84]
	ldr	w1, [x29, 88]
	ldr	w0, [x29, 80]
	add	w0, w1, w0
	add	w0, w0, 1
	ldr	w1, [x29, 76]
	cmp	w1, w0
	ble	.L9
	ldr	w1, [x29, 88]
	ldr	w0, [x29, 80]
	add	w0, w1, w0
	add	w1, w0, 1
	ldr	x0, [x29, 56]
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	b	.L10
	mov	w0, 0
	ldr	w1, [x29, 84]
	sub	w1, w1, w0
	ldr	x0, [x29, 56]
	ldrsw	x2, [x29, 88]
	ldr	w0, [x0, x2, lsl 2]
	cmp	w1, w0
	csel	w2, w1, w0, ge
	ldr	x0, [x29, 56]
	ldrsw	x1, [x29, 88]
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [x29, 80]
	add	w0, w0, 1
	str	w0, [x29, 80]
	ldr	w0, [x29, 80]
	cmp	w0, 2
	bgt	.L11
	ldr	w1, [x29, 88]
	ldr	w0, [x29, 80]
	add	w0, w1, w0
	ldr	w1, [x29, 76]
	cmp	w1, w0
	bgt	.L12
	ldr	w0, [x29, 88]
	sub	w0, w0, #1
	str	w0, [x29, 88]
	ldr	w0, [x29, 88]
	cmp	w0, 0
	bge	.L13
	mov	x0, 6
	bl	malloc
	sxtw	x0, w0
	str	x0, [x29, 48]
	ldr	x0, [x29, 56]
	ldr	w0, [x0]
	cmp	w0, 0
	ble	.L14
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	ldr	x0, [x29, 48]
	bl	strcpy
	b	.L15
	ldr	x0, [x29, 56]
	ldr	w0, [x0]
	cmp	w0, 0
	bge	.L16
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	ldr	x0, [x29, 48]
	bl	strcpy
	b	.L15
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	ldr	x0, [x29, 48]
	bl	strcpy
	ldr	x0, [x29, 48]
	mov	sp, x19
	mov	sp, x29
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 96
	ret