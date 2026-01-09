main:
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	stp	xzr, xzr, [sp, 24]
	str	wzr, [sp, 40]
	strb	wzr, [sp, 44]
	add	x0, sp, 48
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L2
	str	wzr, [sp, 60]
	b	.L3
	ldr	w0, [sp, 48]
	cmp	w0, 0
	and	w0, w0, 1
	csneg	w0, w0, w0, ge
	and	w2, w0, 255
	ldrsw	x0, [sp, 60]
	add	x1, sp, 24
	strb	w2, [x1, x0]
	ldr	w0, [sp, 48]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	str	w0, [sp, 48]
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
	ldr	w0, [sp, 48]
	cmp	w0, 0
	bne	.L4
	str	wzr, [sp, 56]
	str	wzr, [sp, 48]
	b	.L5
	ldr	w0, [sp, 48]
	sxtw	x0, w0
	add	x1, sp, 24
	ldrb	w0, [x1, x0]
	cmp	w0, 1
	bne	.L6
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 56]
	ldr	w0, [sp, 48]
	add	w0, w0, 1
	sxtw	x0, w0
	add	x1, sp, 24
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	beq	.L17
	ldr	w0, [sp, 48]
	add	w0, w0, 1
	str	w0, [sp, 48]
	ldr	w0, [sp, 48]
	ldr	w1, [sp, 60]
	cmp	w1, w0
	bgt	.L8
	b	.L7
	nop
	ldr	w0, [sp, 48]
	add	w0, w0, 1
	sxtw	x0, w0
	add	x1, sp, 24
	mov	w2, 1
	strb	w2, [x1, x0]
	ldr	w0, [sp, 56]
	sub	w0, w0, #1
	str	w0, [sp, 56]
	str	wzr, [sp, 52]
	b	.L9
	ldrsw	x0, [sp, 52]
	add	x1, sp, 24
	mov	w2, 1
	strb	w2, [x1, x0]
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	str	w0, [sp, 52]
	ldr	w1, [sp, 52]
	ldr	w0, [sp, 56]
	cmp	w1, w0
	blt	.L10
	b	.L11
	ldr	w0, [sp, 52]
	add	w1, w0, 1
	str	w1, [sp, 52]
	sxtw	x0, w0
	add	x1, sp, 24
	strb	wzr, [x1, x0]
	ldr	w0, [sp, 48]
	ldr	w1, [sp, 52]
	cmp	w1, w0
	ble	.L12
	ldr	w0, [sp, 60]
	str	w0, [sp, 52]
	str	wzr, [sp, 56]
	b	.L13
	ldr	w0, [sp, 56]
	lsl	w0, w0, 1
	str	w0, [sp, 56]
	ldrsw	x0, [sp, 52]
	add	x1, sp, 24
	ldrb	w0, [x1, x0]
	mov	w1, w0
	ldr	w0, [sp, 56]
	add	w0, w0, w1
	str	w0, [sp, 56]
	ldrsw	x0, [sp, 52]
	add	x1, sp, 24
	strb	wzr, [x1, x0]
	ldr	w0, [sp, 52]
	sub	w0, w0, #1
	str	w0, [sp, 52]
	ldr	w0, [sp, 52]
	cmp	w0, 0
	bge	.L14
	ldr	w1, [sp, 56]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	add	x0, sp, 48
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 48]
	cmp	w0, 0
	bne	.L15
	mov	w0, 0
	ldp	x29, x30, [sp], 64
	ret