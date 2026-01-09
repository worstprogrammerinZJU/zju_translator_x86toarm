main:
	stp	x29, x30, [sp, -448]!
	mov	x29, sp
	add	x0, sp, 424
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 444]
	b	.L2
	add	x1, sp, 216
	add	x0, sp, 320
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	add	x0, sp, 16
	mov	x2, 200
	mov	w1, 0
	bl	memset
	str	wzr, [sp, 440]
	b	.L3
	ldr	w0, [sp, 440]
	add	w0, w0, 1
	str	w0, [sp, 440]
	ldrsw	x0, [sp, 440]
	add	x1, sp, 320
	ldrb	w0, [x1, x0]
	cmp	w0, 48
	beq	.L4
	ldr	w0, [sp, 440]
	str	w0, [sp, 436]
	b	.L5
	ldr	w0, [sp, 436]
	add	w0, w0, 1
	str	w0, [sp, 436]
	ldrsw	x0, [sp, 436]
	add	x1, sp, 320
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L6
	ldr	w0, [sp, 436]
	sub	w0, w0, #1
	str	w0, [sp, 436]
	b	.L7
	ldr	w0, [sp, 436]
	sub	w0, w0, #1
	str	w0, [sp, 436]
	ldr	w1, [sp, 436]
	ldr	w0, [sp, 440]
	cmp	w1, w0
	blt	.L8
	ldrsw	x0, [sp, 436]
	add	x1, sp, 320
	ldrb	w0, [x1, x0]
	cmp	w0, 48
	beq	.L9
	str	wzr, [sp, 432]
	b	.L10
	ldr	w0, [sp, 432]
	add	w1, w0, 1
	str	w1, [sp, 432]
	sxtw	x1, w0
	add	x2, sp, 16
	ldrb	w2, [x2, x1]
	ldrsw	x1, [sp, 440]
	add	x3, sp, 320
	ldrb	w1, [x3, x1]
	add	w1, w2, w1
	and	w1, w1, 255
	sub	w1, w1, #48
	and	w2, w1, 255
	sxtw	x0, w0
	add	x1, sp, 16
	strb	w2, [x1, x0]
	ldr	w0, [sp, 440]
	add	w0, w0, 1
	str	w0, [sp, 440]
	ldr	w1, [sp, 436]
	ldr	w0, [sp, 440]
	cmp	w1, w0
	bge	.L11
	str	wzr, [sp, 440]
	b	.L12
	ldr	w0, [sp, 440]
	add	w0, w0, 1
	str	w0, [sp, 440]
	ldrsw	x0, [sp, 440]
	add	x1, sp, 216
	ldrb	w0, [x1, x0]
	cmp	w0, 48
	beq	.L13
	ldr	w0, [sp, 440]
	str	w0, [sp, 436]
	b	.L14
	ldr	w0, [sp, 436]
	add	w0, w0, 1
	str	w0, [sp, 436]
	ldrsw	x0, [sp, 436]
	add	x1, sp, 216
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L15
	ldr	w0, [sp, 436]
	sub	w0, w0, #1
	str	w0, [sp, 436]
	b	.L16
	ldr	w0, [sp, 436]
	sub	w0, w0, #1
	str	w0, [sp, 436]
	ldr	w1, [sp, 436]
	ldr	w0, [sp, 440]
	cmp	w1, w0
	blt	.L17
	ldrsw	x0, [sp, 436]
	add	x1, sp, 216
	ldrb	w0, [x1, x0]
	cmp	w0, 48
	beq	.L18
	str	wzr, [sp, 432]
	b	.L19
	ldrsw	x0, [sp, 432]
	add	x1, sp, 16
	ldrb	w1, [x1, x0]
	ldrsw	x0, [sp, 440]
	add	x2, sp, 216
	ldrb	w0, [x2, x0]
	add	w0, w1, w0
	and	w0, w0, 255
	sub	w0, w0, #48
	and	w2, w0, 255
	ldrsw	x0, [sp, 432]
	add	x1, sp, 16
	strb	w2, [x1, x0]
	ldr	w0, [sp, 432]
	add	w1, w0, 1
	str	w1, [sp, 432]
	str	w0, [sp, 428]
	b	.L20
	ldr	w0, [sp, 428]
	add	w1, w0, 1
	str	w1, [sp, 428]
	sxtw	x1, w0
	add	x2, sp, 16
	ldrb	w1, [x2, x1]
	sub	w1, w1, #10
	and	w2, w1, 255
	sxtw	x0, w0
	add	x1, sp, 16
	strb	w2, [x1, x0]
	ldrsw	x0, [sp, 428]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	add	w0, w0, 1
	and	w2, w0, 255
	ldrsw	x0, [sp, 428]
	add	x1, sp, 16
	strb	w2, [x1, x0]
	ldrsw	x0, [sp, 428]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	cmp	w0, 9
	bhi	.L21
	ldr	w0, [sp, 440]
	add	w0, w0, 1
	str	w0, [sp, 440]
	ldr	w1, [sp, 436]
	ldr	w0, [sp, 440]
	cmp	w1, w0
	bge	.L22
	mov	w0, 199
	str	w0, [sp, 440]
	b	.L23
	ldr	w0, [sp, 440]
	sub	w0, w0, #1
	str	w0, [sp, 440]
	ldrsw	x0, [sp, 440]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	beq	.L24
	str	wzr, [sp, 436]
	b	.L25
	ldr	w0, [sp, 436]
	add	w0, w0, 1
	str	w0, [sp, 436]
	ldrsw	x0, [sp, 436]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	beq	.L26
	b	.L27
	ldrsw	x0, [sp, 436]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	mov	w1, w0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	ldr	w0, [sp, 436]
	add	w0, w0, 1
	str	w0, [sp, 436]
	ldr	w1, [sp, 436]
	ldr	w0, [sp, 440]
	cmp	w1, w0
	ble	.L28
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	ldr	w0, [sp, 444]
	add	w0, w0, 1
	str	w0, [sp, 444]
	ldr	w0, [sp, 424]
	ldr	w1, [sp, 444]
	cmp	w1, w0
	blt	.L29
	mov	w0, 0
	ldp	x29, x30, [sp], 448
	ret