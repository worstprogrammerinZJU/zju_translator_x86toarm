main:
	sub	x12, sp, #5963776
	sub	sp, sp, 65536
	str	xzr, [sp, 1024]
	cmp	sp, x12
	b.ne	.LPSRL0
	mov	x12, 36256
	sub	sp, sp, x12
	stp	x29, x30, [sp]
	mov	x29, sp
	add	x0, sp, 16
	mov	x1, 2304
	movk	x1, 0x3d, lsl 16
	mov	x2, x1
	mov	w1, 0
	bl	memset
	mov	w0, 1
	strb	w0, [sp, 16]
	mov	w0, 1
	add	x1, sp, 3997696
	str	w0, [x1, 2324]
	b	.L2
	add	x0, sp, 3997696
	ldr	w0, [x0, 2324]
	sub	w0, w0, #1
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 3997696
	add	x1, x1, 2328
	ldr	w1, [x1, x0]
	add	x0, sp, 3997696
	ldr	w0, [x0, 2324]
	cmp	w1, w0
	ble	.L3
	add	x0, sp, 3997696
	ldr	w0, [x0, 2324]
	sub	w0, w0, #1
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 3997696
	add	x1, x1, 2328
	ldr	w1, [x1, x0]
	add	x0, sp, 3997696
	ldr	w0, [x0, 2324]
	sub	w0, w1, w0
	sxtw	x0, w0
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L3
	add	x0, sp, 3997696
	ldr	w0, [x0, 2324]
	sub	w0, w0, #1
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 3997696
	add	x1, x1, 2328
	ldr	w1, [x1, x0]
	add	x0, sp, 3997696
	ldr	w0, [x0, 2324]
	add	x2, sp, 3997696
	ldr	w3, [x2, 2324]
	sub	w2, w1, w0
	sxtw	x0, w3
	lsl	x0, x0, 2
	add	x1, sp, 3997696
	add	x1, x1, 2328
	str	w2, [x1, x0]
	b	.L4
	add	x0, sp, 3997696
	ldr	w0, [x0, 2324]
	sub	w0, w0, #1
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 3997696
	add	x1, x1, 2328
	ldr	w1, [x1, x0]
	add	x0, sp, 3997696
	ldr	w0, [x0, 2324]
	add	x2, sp, 3997696
	ldr	w3, [x2, 2324]
	add	w2, w1, w0
	sxtw	x0, w3
	lsl	x0, x0, 2
	add	x1, sp, 3997696
	add	x1, x1, 2328
	str	w2, [x1, x0]
	add	x0, sp, 3997696
	ldr	w0, [x0, 2324]
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 3997696
	add	x1, x1, 2328
	ldr	w0, [x1, x0]
	sxtw	x0, w0
	add	x1, sp, 16
	mov	w2, 1
	strb	w2, [x1, x0]
	add	x0, sp, 3997696
	ldr	w0, [x0, 2324]
	add	w0, w0, 1
	add	x1, sp, 3997696
	str	w0, [x1, 2324]
	add	x0, sp, 3997696
	ldr	w1, [x0, 2324]
	mov	w0, 41248
	movk	w0, 0x7, lsl 16
	cmp	w1, w0
	ble	.L5
	add	x0, sp, 3997696
	add	x0, x0, 2324
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L6
	add	x0, sp, 3997696
	ldr	w0, [x0, 2324]
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 3997696
	add	x1, x1, 2328
	ldr	w0, [x1, x0]
	mov	w1, w0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	add	x0, sp, 3997696
	add	x0, x0, 2324
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	add	x0, sp, 3997696
	ldr	w0, [x0, 2324]
	cmn	w0, #1
	bne	.L7
	mov	w0, 0
	ldp	x29, x30, [sp]
	add	sp, sp, 3488
	add	sp, sp, 5996544
	ret