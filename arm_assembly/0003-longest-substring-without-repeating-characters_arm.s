max:
	sub	sp, sp, #16
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	ldr	w0, [sp, 12]
	ldr	w2, [sp, 8]
	ldr	w1, [sp, 8]
	cmp	w2, w0
	csel	w0, w1, w0, ge
	add	sp, sp, 16
	ret
	sub	sp, sp, #560
	stp	x29, x30, [sp]
	mov	x29, sp
	str	x0, [sp, 24]
	add	x0, sp, 32
	mov	x1, 512
	mov	x2, x1
	mov	w1, 0
	bl	memset
	str	wzr, [sp, 556]
	str	wzr, [sp, 552]
	str	wzr, [sp, 548]
	b	.L4
	ldrsw	x0, [sp, 552]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	mov	w3, w0
	sxtw	x0, w3
	lsl	x0, x0, 2
	add	x1, sp, 32
	ldr	w0, [x1, x0]
	add	w2, w0, 1
	sxtw	x0, w3
	lsl	x0, x0, 2
	add	x1, sp, 32
	str	w2, [x1, x0]
	ldrsw	x0, [sp, 552]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 32
	ldr	w0, [x1, x0]
	cmp	w0, 1
	ble	.L5
	b	.L6
	ldrsw	x0, [sp, 556]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	mov	w3, w0
	sxtw	x0, w3
	lsl	x0, x0, 2
	add	x1, sp, 32
	ldr	w0, [x1, x0]
	sub	w2, w0, #1
	sxtw	x0, w3
	lsl	x0, x0, 2
	add	x1, sp, 32
	str	w2, [x1, x0]
	ldr	w0, [sp, 556]
	add	w0, w0, 1
	str	w0, [sp, 556]
	ldrsw	x0, [sp, 552]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 32
	ldr	w0, [x1, x0]
	cmp	w0, 1
	bgt	.L7
	ldr	w1, [sp, 552]
	ldr	w0, [sp, 556]
	sub	w0, w1, w0
	add	w0, w0, 1
	mov	w1, w0
	ldr	w0, [sp, 548]
	bl	max
	str	w0, [sp, 548]
	ldr	w0, [sp, 552]
	add	w0, w0, 1
	str	w0, [sp, 552]
	ldrsw	x0, [sp, 552]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L8
	ldr	w0, [sp, 548]
	ldp	x29, x30, [sp]
	add	sp, sp, 560
	ret