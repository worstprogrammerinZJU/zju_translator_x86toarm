value:
	sub	sp, sp, #16
	strb	w0, [sp, 15]
	ldrb	w0, [sp, 15]
	cmp	w0, 88
	beq	.L2
	cmp	w0, 88
	bgt	.L3
	cmp	w0, 86
	beq	.L4
	cmp	w0, 86
	bgt	.L3
	cmp	w0, 77
	beq	.L5
	cmp	w0, 77
	bgt	.L3
	cmp	w0, 76
	beq	.L6
	cmp	w0, 76
	bgt	.L3
	cmp	w0, 73
	beq	.L7
	cmp	w0, 73
	bgt	.L3
	cmp	w0, 67
	beq	.L8
	cmp	w0, 68
	beq	.L9
	b	.L3
	mov	w0, 1
	b	.L10
	mov	w0, 5
	b	.L10
	mov	w0, 10
	b	.L10
	mov	w0, 50
	b	.L10
	mov	w0, 100
	b	.L10
	mov	w0, 500
	b	.L10
	mov	w0, 1000
	b	.L10
	mov	w0, 0
	add	sp, sp, 16
	ret
romanToInt:
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	wzr, [sp, 48]
	str	wzr, [sp, 60]
	ldr	x0, [sp, 24]
	bl	strlen
	str	w0, [sp, 48]
	str	wzr, [sp, 52]
	b	.L12
	ldrsw	x0, [sp, 52]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	bl	value
	str	w0, [sp, 44]
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	ldr	w1, [sp, 48]
	cmp	w1, w0
	ble	.L13
	ldrsw	x0, [sp, 52]
	add	x0, x0, 1
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	bl	value
	str	w0, [sp, 56]
	b	.L14
	str	wzr, [sp, 56]
	ldr	w1, [sp, 56]
	ldr	w0, [sp, 44]
	cmp	w1, w0
	ble	.L15
	ldr	w1, [sp, 60]
	ldr	w0, [sp, 44]
	sub	w0, w1, w0
	str	w0, [sp, 60]
	b	.L16
	ldr	w1, [sp, 60]
	ldr	w0, [sp, 44]
	add	w0, w1, w0
	str	w0, [sp, 60]
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	str	w0, [sp, 52]
	ldr	w1, [sp, 52]
	ldr	w0, [sp, 48]
	cmp	w1, w0
	blt	.L17
	ldr	w0, [sp, 60]
	ldp	x29, x30, [sp], 64
	ret