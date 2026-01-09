main:
	stp	x29, x30, [sp, -144]!
	mov	x29, sp
	add	x0, sp, 24
	bl	gets
	str	wzr, [sp, 140]
	b	.L2
	ldrsw	x0, [sp, 140]
	add	x1, sp, 24
	ldrb	w0, [x1, x0]
	sub	w0, w0, #97
	and	w2, w0, 255
	ldrsw	x0, [sp, 140]
	add	x1, sp, 112
	strb	w2, [x1, x0]
	ldr	w0, [sp, 140]
	add	w0, w0, 1
	str	w0, [sp, 140]
	ldr	w0, [sp, 140]
	cmp	w0, 25
	ble	.L3
	add	x0, sp, 24
	bl	gets
	str	wzr, [sp, 140]
	b	.L4
	ldrsw	x0, [sp, 140]
	add	x1, sp, 24
	ldrb	w0, [x1, x0]
	cmp	w0, 96
	bls	.L5
	ldrsw	x0, [sp, 140]
	add	x1, sp, 24
	ldrb	w0, [x1, x0]
	cmp	w0, 122
	bhi	.L5
	ldrsw	x0, [sp, 140]
	add	x1, sp, 24
	ldrb	w0, [x1, x0]
	sub	w0, w0, #97
	sxtw	x0, w0
	add	x1, sp, 112
	ldrb	w0, [x1, x0]
	add	w0, w0, 97
	mov	w1, w0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	b	.L6
	ldrsw	x0, [sp, 140]
	add	x1, sp, 24
	ldrb	w0, [x1, x0]
	cmp	w0, 64
	bls	.L7
	ldrsw	x0, [sp, 140]
	add	x1, sp, 24
	ldrb	w0, [x1, x0]
	cmp	w0, 90
	bhi	.L7
	ldrsw	x0, [sp, 140]
	add	x1, sp, 24
	ldrb	w0, [x1, x0]
	sub	w0, w0, #65
	sxtw	x0, w0
	add	x1, sp, 112
	ldrb	w0, [x1, x0]
	add	w0, w0, 65
	mov	w1, w0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	b	.L6
	ldrsw	x0, [sp, 140]
	add	x1, sp, 24
	ldrb	w0, [x1, x0]
	mov	w1, w0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	ldr	w0, [sp, 140]
	add	w0, w0, 1
	str	w0, [sp, 140]
	ldrsw	x0, [sp, 140]
	add	x1, sp, 24
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L8
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	mov	w0, 0
	ldp	x29, x30, [sp], 144
	ret