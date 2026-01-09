distance:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 24]
	mul	w1, w1, w0
	ldr	w2, [sp, 28]
	ldr	w0, [sp, 28]
	mul	w0, w2, w0
	add	w0, w1, w0
	bl	sqrt
	scvtf	d0, w0
	ldp	x29, x30, [sp], 32
	ret
compare:
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	str	x0, [sp, 56]
	ldr	x0, [sp, 16]
	str	x0, [sp, 48]
	ldr	x0, [sp, 56]
	ldr	x0, [x0]
	bl	distance
	str	d0, [sp, 40]
	ldr	x0, [sp, 48]
	ldr	x0, [x0]
	bl	distance
	str	d0, [sp, 32]
	ldr	d1, [sp, 40]
	ldr	d0, [sp, 32]
	fcmpe	d1, d0
	bmi	.L9
	b	.L11
	mov	w0, -1
	b	.L6
	ldr	d1, [sp, 40]
	ldr	d0, [sp, 32]
	fcmpe	d1, d0
	bgt	.L10
	b	.L12
	mov	w0, 1
	b	.L6
	mov	w0, 0
	ldp	x29, x30, [sp], 64
	ret
kClosest:
	stp	x29, x30, [sp, -96]!
	mov	x29, sp
	str	x0, [sp, 56]
	str	w1, [sp, 52]
	str	x2, [sp, 40]
	str	w3, [sp, 48]
	str	x4, [sp, 32]
	str	x5, [sp, 24]
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 3
	bl	malloc
	sxtw	x0, w0
	str	x0, [sp, 80]
	str	wzr, [sp, 92]
	b	.L14
	ldrsw	x0, [sp, 92]
	lsl	x0, x0, 3
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 92]
	lsl	x0, x0, 3
	ldr	x2, [sp, 80]
	add	x0, x2, x0
	ldr	w1, [x1]
	str	w1, [x0]
	ldrsw	x0, [sp, 92]
	lsl	x0, x0, 3
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 92]
	lsl	x0, x0, 3
	ldr	x2, [sp, 80]
	add	x0, x2, x0
	ldr	w1, [x1, 4]
	str	w1, [x0, 4]
	ldr	w0, [sp, 92]
	add	w0, w0, 1
	str	w0, [sp, 92]
	ldr	w1, [sp, 92]
	ldr	w0, [sp, 52]
	cmp	w1, w0
	blt	.L15
	adrp	x0, compare
	add	x3, x0, :lo12:compare
	mov	x2, 8
	ldr	w1, [sp, 52]
	ldr	x0, [sp, 80]
	bl	qsort
	ldrsw	x0, [sp, 48]
	lsl	x0, x0, 3
	bl	malloc
	sxtw	x0, w0
	str	x0, [sp, 72]
	ldr	x0, [sp, 32]
	ldr	w1, [sp, 48]
	str	w1, [x0]
	ldrsw	x0, [sp, 48]
	lsl	x0, x0, 2
	bl	malloc
	sxtw	x0, w0
	mov	x1, x0
	ldr	x0, [sp, 24]
	str	x1, [x0]
	str	wzr, [sp, 88]
	b	.L16
	mov	x0, 8
	bl	malloc
	sxtw	x2, w0
	ldrsw	x0, [sp, 88]
	lsl	x0, x0, 3
	ldr	x1, [sp, 72]
	add	x0, x1, x0
	mov	x1, x2
	str	x1, [x0]
	ldrsw	x0, [sp, 88]
	lsl	x0, x0, 3
	ldr	x1, [sp, 80]
	add	x1, x1, x0
	ldrsw	x0, [sp, 88]
	lsl	x0, x0, 3
	ldr	x2, [sp, 72]
	add	x0, x2, x0
	ldr	x0, [x0]
	ldr	w1, [x1]
	str	w1, [x0]
	ldrsw	x0, [sp, 88]
	lsl	x0, x0, 3
	ldr	x1, [sp, 80]
	add	x1, x1, x0
	ldrsw	x0, [sp, 88]
	lsl	x0, x0, 3
	ldr	x2, [sp, 72]
	add	x0, x2, x0
	ldr	x0, [x0]
	add	x0, x0, 4
	ldr	w1, [x1, 4]
	str	w1, [x0]
	ldr	x0, [sp, 24]
	ldr	x1, [x0]
	ldrsw	x0, [sp, 88]
	lsl	x0, x0, 2
	add	x0, x1, x0
	mov	w1, 2
	str	w1, [x0]
	ldr	w0, [sp, 88]
	add	w0, w0, 1
	str	w0, [sp, 88]
	ldr	w1, [sp, 88]
	ldr	w0, [sp, 48]
	cmp	w1, w0
	blt	.L17
	ldr	x0, [sp, 80]
	bl	free
	ldr	x0, [sp, 72]
	ldp	x29, x30, [sp], 96
	ret