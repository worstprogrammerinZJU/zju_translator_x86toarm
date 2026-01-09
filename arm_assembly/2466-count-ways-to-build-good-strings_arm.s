countGoodStrings:
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	str	w2, [sp, 20]
	str	w3, [sp, 16]
	mov	w0, 51719
	movk	w0, 0x3b9a, lsl 16
	str	w0, [sp, 52]
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	sxtw	x0, w0
	lsl	x0, x0, 2
	bl	malloc
	sxtw	x0, w0
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	mov	w1, 1
	str	w1, [x0]
	str	wzr, [sp, 60]
	mov	w0, 1
	str	w0, [sp, 56]
	b	.L2
	ldrsw	x0, [sp, 56]
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	str	wzr, [x0]
	ldr	w1, [sp, 56]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	blt	.L3
	ldrsw	x0, [sp, 56]
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldr	w2, [sp, 56]
	ldr	w0, [sp, 20]
	sub	w0, w2, w0
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x2, [sp, 40]
	add	x0, x2, x0
	ldr	w0, [x0]
	add	w0, w1, w0
	ldrsw	x1, [sp, 56]
	lsl	x1, x1, 2
	ldr	x2, [sp, 40]
	add	x1, x2, x1
	ldr	w2, [sp, 52]
	sdiv	w3, w0, w2
	ldr	w2, [sp, 52]
	mul	w2, w3, w2
	sub	w0, w0, w2
	str	w0, [x1]
	ldr	w1, [sp, 56]
	ldr	w0, [sp, 16]
	cmp	w1, w0
	blt	.L4
	ldrsw	x0, [sp, 56]
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldr	w2, [sp, 56]
	ldr	w0, [sp, 16]
	sub	w0, w2, w0
	sxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x2, [sp, 40]
	add	x0, x2, x0
	ldr	w0, [x0]
	add	w0, w1, w0
	ldrsw	x1, [sp, 56]
	lsl	x1, x1, 2
	ldr	x2, [sp, 40]
	add	x1, x2, x1
	ldr	w2, [sp, 52]
	sdiv	w3, w0, w2
	ldr	w2, [sp, 52]
	mul	w2, w3, w2
	sub	w0, w0, w2
	str	w0, [x1]
	ldr	w1, [sp, 56]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	blt	.L5
	ldrsw	x0, [sp, 56]
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldr	w0, [sp, 60]
	add	w0, w1, w0
	ldr	w1, [sp, 52]
	sdiv	w2, w0, w1
	ldr	w1, [sp, 52]
	mul	w1, w2, w1
	sub	w0, w0, w1
	str	w0, [sp, 60]
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 56]
	ldr	w1, [sp, 56]
	ldr	w0, [sp, 24]
	cmp	w1, w0
	ble	.L6
	ldr	x0, [sp, 40]
	bl	free
	ldr	w0, [sp, 60]
	ldp	x29, x30, [sp], 64
	ret