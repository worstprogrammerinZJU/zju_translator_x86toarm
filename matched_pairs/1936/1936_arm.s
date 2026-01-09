main:
	sub	sp, sp, #65536
	str	xzr, [sp, 1024]
	sub	sp, sp, #65536
	str	xzr, [sp, 1024]
	sub	sp, sp, #65536
	str	xzr, [sp, 1024]
	sub	sp, sp, #3424
	stp	x29, x30, [sp]
	mov	x29, sp
	b	.L2
	add	x0, sp, 196608
	str	wzr, [x0, 3416]
	add	x0, sp, 196608
	str	wzr, [x0, 3420]
	b	.L3
	add	x0, sp, 196608
	ldrsw	x0, [x0, 3416]
	add	x1, sp, 98304
	add	x1, x1, 1720
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	beq	.L11
	add	x0, sp, 196608
	ldrsw	x0, [x0, 3416]
	add	x1, sp, 98304
	add	x1, x1, 1720
	ldrb	w1, [x1, x0]
	add	x0, sp, 196608
	ldrsw	x0, [x0, 3420]
	add	x2, sp, 24
	ldrb	w0, [x2, x0]
	cmp	w1, w0
	bne	.L6
	add	x0, sp, 196608
	ldr	w0, [x0, 3416]
	add	w0, w0, 1
	add	x1, sp, 196608
	str	w0, [x1, 3416]
	add	x0, sp, 196608
	ldr	w0, [x0, 3420]
	add	w0, w0, 1
	add	x1, sp, 196608
	str	w0, [x1, 3420]
	add	x0, sp, 196608
	ldrsw	x0, [x0, 3420]
	add	x1, sp, 24
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L7
	b	.L5
	nop
	add	x0, sp, 196608
	ldrsw	x0, [x0, 3416]
	add	x1, sp, 98304
	add	x1, x1, 1720
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L8
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	b	.L2
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	add	x1, sp, 24
	add	x0, sp, 98304
	add	x0, x0, 1720
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__isoc99_scanf
	cmn	w0, #1
	bne	.L9
	mov	w0, 0
	ldp	x29, x30, [sp]
	add	sp, sp, 3424
	add	sp, sp, 196608
	ret