main:
	sub	x12, sp, #983040
	sub	sp, sp, 65536
	str	xzr, [sp, 1024]
	cmp	sp, x12
	b.ne	.LPSRL0
	mov	x12, 17008
	sub	sp, sp, x12
	stp	x29, x30, [sp]
	mov	x29, sp
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L2
	add	x0, sp, 999424
	str	wzr, [x0, 612]
	add	x0, sp, 24
	bl	strlen
	add	x1, sp, 999424
	str	w0, [x1, 608]
	mov	w0, 1
	add	x1, sp, 999424
	str	w0, [x1, 620]
	b	.L3
	add	x0, sp, 999424
	ldrsw	x0, [x0, 620]
	add	x1, sp, 24
	ldrb	w1, [x1, x0]
	ldrb	w0, [sp, 24]
	cmp	w1, w0
	bne	.L4
	add	x0, sp, 999424
	ldr	w0, [x0, 608]
	add	x1, sp, 999424
	ldr	w1, [x1, 620]
	sdiv	w2, w0, w1
	add	x1, sp, 999424
	ldr	w1, [x1, 620]
	mul	w1, w2, w1
	sub	w0, w0, w1
	cmp	w0, 0
	bne	.L4
	add	x0, sp, 999424
	ldr	w0, [x0, 620]
	add	w0, w0, 1
	add	x1, sp, 999424
	str	w0, [x1, 616]
	b	.L5
	add	x0, sp, 999424
	ldrsw	x0, [x0, 616]
	add	x1, sp, 24
	ldrb	w1, [x1, x0]
	add	x0, sp, 999424
	ldr	w2, [x0, 616]
	add	x0, sp, 999424
	ldr	w0, [x0, 620]
	sub	w0, w2, w0
	sxtw	x0, w0
	add	x2, sp, 24
	ldrb	w0, [x2, x0]
	cmp	w1, w0
	bne	.L14
	add	x0, sp, 999424
	ldr	w0, [x0, 616]
	add	w0, w0, 1
	add	x1, sp, 999424
	str	w0, [x1, 616]
	add	x0, sp, 999424
	ldr	w1, [x0, 616]
	add	x0, sp, 999424
	ldr	w0, [x0, 608]
	cmp	w1, w0
	blt	.L8
	b	.L7
	nop
	add	x0, sp, 999424
	ldr	w1, [x0, 616]
	add	x0, sp, 999424
	ldr	w0, [x0, 608]
	cmp	w1, w0
	bne	.L4
	mov	w0, 1
	add	x1, sp, 999424
	str	w0, [x1, 612]
	add	x0, sp, 999424
	ldr	w1, [x0, 616]
	add	x0, sp, 999424
	ldr	w0, [x0, 620]
	sdiv	w0, w1, w0
	mov	w1, w0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	b	.L9
	add	x0, sp, 999424
	ldr	w0, [x0, 620]
	add	w0, w0, 1
	add	x1, sp, 999424
	str	w0, [x1, 620]
	add	x0, sp, 999424
	ldr	w1, [x0, 620]
	add	x0, sp, 999424
	ldr	w0, [x0, 608]
	cmp	w1, w0
	blt	.L10
	add	x0, sp, 999424
	ldr	w0, [x0, 612]
	cmp	w0, 0
	bne	.L11
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldrb	w0, [sp, 24]
	cmp	w0, 46
	bne	.L12
	mov	w0, 0
	ldp	x29, x30, [sp]
	add	sp, sp, 624
	add	sp, sp, 999424
	ret