evalRPN:
	stp	x29, x30, [sp, -112]!
	mov	x29, sp
	str	x19, [sp, 16]
	sub	sp, sp, #16
	str	x0, [x29, 40]
	str	w1, [x29, 36]
	mov	x0, sp
	mov	x19, x0
	ldr	w0, [x29, 36]
	sxtw	x1, w0
	sub	x1, x1, #1
	str	x1, [x29, 96]
	sxtw	x1, w0
	mov	x8, x1
	mov	x9, 0
	lsr	x1, x8, 58
	lsl	x5, x9, 6
	orr	x5, x1, x5
	lsl	x4, x8, 6
	sxtw	x1, w0
	mov	x6, x1
	mov	x7, 0
	lsr	x1, x6, 58
	lsl	x3, x7, 6
	orr	x3, x1, x3
	lsl	x2, x6, 6
	sxtw	x0, w0
	lsl	x0, x0, 3
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
	add	x0, x0, 7
	lsr	x0, x0, 3
	lsl	x0, x0, 3
	str	x0, [x29, 88]
	mov	w0, -1
	str	w0, [x29, 108]
	str	wzr, [x29, 104]
	b	.L5
	ldrsw	x0, [x29, 104]
	lsl	x0, x0, 3
	ldr	x1, [x29, 40]
	add	x0, x1, x0
	ldr	x2, [x0]
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	bne	.L6
	ldr	x0, [x29, 88]
	ldrsw	x1, [x29, 108]
	ldr	x0, [x0, x1, lsl 3]
	str	w0, [x29, 56]
	ldr	w0, [x29, 108]
	sub	w0, w0, #1
	str	w0, [x29, 108]
	ldr	x0, [x29, 88]
	ldrsw	x1, [x29, 108]
	ldr	x0, [x0, x1, lsl 3]
	str	w0, [x29, 52]
	ldr	w1, [x29, 56]
	ldr	w0, [x29, 52]
	add	w0, w1, w0
	sxtw	x2, w0
	ldr	x0, [x29, 88]
	ldrsw	x1, [x29, 108]
	str	x2, [x0, x1, lsl 3]
	b	.L7
	ldrsw	x0, [x29, 104]
	lsl	x0, x0, 3
	ldr	x1, [x29, 40]
	add	x0, x1, x0
	ldr	x2, [x0]
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	bne	.L8
	ldr	x0, [x29, 88]
	ldrsw	x1, [x29, 108]
	ldr	x0, [x0, x1, lsl 3]
	str	w0, [x29, 64]
	ldr	w0, [x29, 108]
	sub	w0, w0, #1
	str	w0, [x29, 108]
	ldr	x0, [x29, 88]
	ldrsw	x1, [x29, 108]
	ldr	x0, [x0, x1, lsl 3]
	str	w0, [x29, 60]
	ldr	w1, [x29, 60]
	ldr	w0, [x29, 64]
	sub	w0, w1, w0
	sxtw	x2, w0
	ldr	x0, [x29, 88]
	ldrsw	x1, [x29, 108]
	str	x2, [x0, x1, lsl 3]
	b	.L7
	ldrsw	x0, [x29, 104]
	lsl	x0, x0, 3
	ldr	x1, [x29, 40]
	add	x0, x1, x0
	ldr	x2, [x0]
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	bne	.L9
	ldr	x0, [x29, 88]
	ldrsw	x1, [x29, 108]
	ldr	x0, [x0, x1, lsl 3]
	str	x0, [x29, 72]
	ldr	w0, [x29, 108]
	sub	w0, w0, #1
	str	w0, [x29, 108]
	ldr	x0, [x29, 88]
	ldrsw	x1, [x29, 108]
	ldr	x0, [x0, x1, lsl 3]
	str	w0, [x29, 68]
	ldrsw	x1, [x29, 68]
	ldr	x0, [x29, 72]
	mul	x2, x1, x0
	ldr	x0, [x29, 88]
	ldrsw	x1, [x29, 108]
	str	x2, [x0, x1, lsl 3]
	b	.L7
	ldrsw	x0, [x29, 104]
	lsl	x0, x0, 3
	ldr	x1, [x29, 40]
	add	x0, x1, x0
	ldr	x2, [x0]
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	bne	.L10
	ldr	x0, [x29, 88]
	ldrsw	x1, [x29, 108]
	ldr	x0, [x0, x1, lsl 3]
	str	w0, [x29, 84]
	ldr	w0, [x29, 108]
	sub	w0, w0, #1
	str	w0, [x29, 108]
	ldr	x0, [x29, 88]
	ldrsw	x1, [x29, 108]
	ldr	x0, [x0, x1, lsl 3]
	str	w0, [x29, 80]
	ldr	w1, [x29, 80]
	ldr	w0, [x29, 84]
	sdiv	w0, w1, w0
	sxtw	x2, w0
	ldr	x0, [x29, 88]
	ldrsw	x1, [x29, 108]
	str	x2, [x0, x1, lsl 3]
	b	.L7
	ldr	w0, [x29, 108]
	add	w0, w0, 1
	str	w0, [x29, 108]
	ldrsw	x0, [x29, 104]
	lsl	x0, x0, 3
	ldr	x1, [x29, 40]
	add	x0, x1, x0
	ldr	x0, [x0]
	bl	atoi
	sxtw	x2, w0
	ldr	x0, [x29, 88]
	ldrsw	x1, [x29, 108]
	str	x2, [x0, x1, lsl 3]
	ldr	w0, [x29, 104]
	add	w0, w0, 1
	str	w0, [x29, 104]
	ldr	w1, [x29, 104]
	ldr	w0, [x29, 36]
	cmp	w1, w0
	blt	.L11
	ldr	x0, [x29, 88]
	ldrsw	x1, [x29, 108]
	ldr	x0, [x0, x1, lsl 3]
	mov	sp, x19
	mov	sp, x29
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 112
	ret