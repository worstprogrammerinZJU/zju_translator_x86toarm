cmp:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	w1, [x0]
	ldr	x0, [sp]
	ldr	w0, [x0]
	sub	w0, w1, w0
	add	sp, sp, 16
	ret
rearrangeArray:
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	w1, [sp, 36]
	str	x2, [sp, 24]
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	bl	malloc
	sxtw	x0, w0
	str	x0, [sp, 48]
	ldr	x0, [sp, 24]
	ldr	w1, [sp, 36]
	str	w1, [x0]
	adrp	x0, cmp
	add	x3, x0, :lo12:cmp
	mov	x2, 4
	ldr	w1, [sp, 36]
	ldr	x0, [sp, 40]
	bl	qsort
	str	wzr, [sp, 56]
	mov	w0, 1
	str	w0, [sp, 60]
	b	.L4
	ldrsw	x0, [sp, 56]
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x1, x1, x0
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 2
	ldr	x2, [sp, 48]
	add	x0, x2, x0
	ldr	w1, [x1]
	str	w1, [x0]
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 56]
	ldr	w0, [sp, 60]
	add	w0, w0, 2
	str	w0, [sp, 60]
	ldr	w1, [sp, 60]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	blt	.L5
	str	wzr, [sp, 60]
	b	.L6
	ldrsw	x0, [sp, 56]
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x1, x1, x0
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 2
	ldr	x2, [sp, 48]
	add	x0, x2, x0
	ldr	w1, [x1]
	str	w1, [x0]
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 56]
	ldr	w0, [sp, 60]
	add	w0, w0, 2
	str	w0, [sp, 60]
	ldr	w1, [sp, 60]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	blt	.L7
	ldr	x0, [sp, 48]
	ldp	x29, x30, [sp], 64
	ret