main:
	stp	x29, x30, [sp, -144]!
	mov	x29, sp
	add	x0, sp, 120
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 140]
	b	.L2
	add	x0, sp, 16
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	add	x0, sp, 16
	bl	strlen
	str	w0, [sp, 128]
	str	wzr, [sp, 136]
	ldr	w0, [sp, 128]
	sub	w0, w0, #1
	str	w0, [sp, 132]
	b	.L3
	ldrsw	x0, [sp, 136]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	strb	w0, [sp, 127]
	ldrsw	x0, [sp, 132]
	add	x1, sp, 16
	ldrb	w2, [x1, x0]
	ldrsw	x0, [sp, 136]
	add	x1, sp, 16
	strb	w2, [x1, x0]
	ldrsw	x0, [sp, 132]
	add	x1, sp, 16
	ldrb	w2, [sp, 127]
	strb	w2, [x1, x0]
	ldr	w0, [sp, 136]
	add	w0, w0, 1
	str	w0, [sp, 136]
	ldr	w0, [sp, 132]
	sub	w0, w0, #1
	str	w0, [sp, 132]
	ldr	w1, [sp, 136]
	ldr	w0, [sp, 132]
	cmp	w1, w0
	ble	.L4
	str	wzr, [sp, 136]
	b	.L5
	ldrsw	x0, [sp, 136]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	cmp	w0, 52
	bls	.L6
	ldr	w0, [sp, 136]
	add	w2, w0, 1
	sxtw	x0, w2
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	add	w0, w0, 1
	and	w3, w0, 255
	sxtw	x0, w2
	add	x1, sp, 16
	mov	w2, w3
	strb	w2, [x1, x0]
	ldrsw	x0, [sp, 136]
	add	x1, sp, 16
	mov	w2, 48
	strb	w2, [x1, x0]
	ldr	w0, [sp, 136]
	add	w0, w0, 1
	str	w0, [sp, 136]
	ldr	w0, [sp, 128]
	sub	w0, w0, #1
	ldr	w1, [sp, 136]
	cmp	w1, w0
	blt	.L7
	ldr	w0, [sp, 128]
	sub	w0, w0, #1
	sxtw	x0, w0
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	cmp	w0, 58
	bne	.L8
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	b	.L9
	ldr	w0, [sp, 128]
	sub	w0, w0, #1
	sxtw	x0, w0
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	bl	putchar
	ldr	w0, [sp, 128]
	sub	w0, w0, #2
	str	w0, [sp, 136]
	b	.L10
	ldrsw	x0, [sp, 136]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	bl	putchar
	ldr	w0, [sp, 136]
	sub	w0, w0, #1
	str	w0, [sp, 136]
	ldr	w0, [sp, 136]
	cmp	w0, 0
	bge	.L11
	mov	w0, 10
	bl	putchar
	ldr	w0, [sp, 140]
	add	w0, w0, 1
	str	w0, [sp, 140]
	ldr	w0, [sp, 120]
	ldr	w1, [sp, 140]
	cmp	w1, w0
	blt	.L12
	mov	w0, 0
	ldp	x29, x30, [sp], 144
	ret