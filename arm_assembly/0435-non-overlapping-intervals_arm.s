compareIntervals:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	w1, [x0, 4]
	ldr	x0, [sp]
	ldr	w0, [x0, 4]
	sub	w0, w1, w0
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	w1, [sp, 36]
	str	x2, [sp, 24]
	ldr	w0, [sp, 36]
	cmp	w0, 1
	bgt	.L4
	mov	w0, 0
	b	.L5
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 3
	bl	malloc
	sxtw	x0, w0
	str	x0, [sp, 56]
	str	wzr, [sp, 76]
	b	.L6
	ldrsw	x0, [sp, 76]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 76]
	lsl	x0, x0, 3
	ldr	x2, [sp, 56]
	add	x0, x2, x0
	ldr	w1, [x1]
	str	w1, [x0]
	ldrsw	x0, [sp, 76]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 76]
	lsl	x0, x0, 3
	ldr	x2, [sp, 56]
	add	x0, x2, x0
	ldr	w1, [x1, 4]
	str	w1, [x0, 4]
	ldr	w0, [sp, 76]
	add	w0, w0, 1
	str	w0, [sp, 76]
	ldr	w1, [sp, 76]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	blt	.L7
	adrp	x0, compareIntervals
	add	x3, x0, :lo12:compareIntervals
	mov	x2, 8
	ldr	w1, [sp, 36]
	ldr	x0, [sp, 56]
	bl	qsort
	ldr	x0, [sp, 56]
	ldr	w0, [x0, 4]
	str	w0, [sp, 72]
	mov	w0, 1
	str	w0, [sp, 68]
	mov	w0, 1
	str	w0, [sp, 64]
	b	.L8
	ldrsw	x0, [sp, 64]
	lsl	x0, x0, 3
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	w0, [x0]
	ldr	w1, [sp, 72]
	cmp	w1, w0
	bgt	.L9
	ldrsw	x0, [sp, 64]
	lsl	x0, x0, 3
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	w0, [x0, 4]
	str	w0, [sp, 72]
	ldr	w0, [sp, 68]
	add	w0, w0, 1
	str	w0, [sp, 68]
	ldr	w0, [sp, 64]
	add	w0, w0, 1
	str	w0, [sp, 64]
	ldr	w1, [sp, 64]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	blt	.L10
	ldr	x0, [sp, 56]
	bl	free
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 68]
	sub	w0, w1, w0
	ldp	x29, x30, [sp], 80
	ret