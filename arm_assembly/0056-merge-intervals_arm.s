compareIntervals:
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
merge:
	stp	x29, x30, [sp, -112]!
	mov	x29, sp
	str	x0, [sp, 56]
	str	w1, [sp, 52]
	str	x2, [sp, 40]
	str	x3, [sp, 32]
	str	x4, [sp, 24]
	ldr	w0, [sp, 52]
	cmp	w0, 1
	bgt	.L4
	ldr	x0, [sp, 32]
	ldr	w1, [sp, 52]
	str	w1, [x0]
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 40]
	str	x1, [x0]
	ldr	x0, [sp, 56]
	b	.L5
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 3
	bl	malloc
	sxtw	x0, w0
	str	x0, [sp, 88]
	str	wzr, [sp, 108]
	b	.L6
	ldrsw	x0, [sp, 108]
	lsl	x0, x0, 3
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 108]
	lsl	x0, x0, 3
	ldr	x2, [sp, 88]
	add	x0, x2, x0
	ldr	w1, [x1]
	str	w1, [x0]
	ldrsw	x0, [sp, 108]
	lsl	x0, x0, 3
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 108]
	lsl	x0, x0, 3
	ldr	x2, [sp, 88]
	add	x0, x2, x0
	ldr	w1, [x1, 4]
	str	w1, [x0, 4]
	ldr	w0, [sp, 108]
	add	w0, w0, 1
	str	w0, [sp, 108]
	ldr	w1, [sp, 108]
	ldr	w0, [sp, 52]
	cmp	w1, w0
	blt	.L7
	adrp	x0, compareIntervals
	add	x3, x0, :lo12:compareIntervals
	mov	x2, 8
	ldr	w1, [sp, 52]
	ldr	x0, [sp, 88]
	bl	qsort
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 3
	bl	malloc
	sxtw	x0, w0
	str	x0, [sp, 80]
	str	wzr, [sp, 104]
	str	wzr, [sp, 100]
	b	.L8
	ldr	w0, [sp, 104]
	cmp	w0, 0
	beq	.L9
	ldrsw	x0, [sp, 104]
	lsl	x0, x0, 3
	sub	x0, x0, #8
	ldr	x1, [sp, 80]
	add	x0, x1, x0
	ldr	w1, [x0, 4]
	ldrsw	x0, [sp, 100]
	lsl	x0, x0, 3
	ldr	x2, [sp, 88]
	add	x0, x2, x0
	ldr	w0, [x0]
	cmp	w1, w0
	bge	.L10
	ldrsw	x0, [sp, 100]
	lsl	x0, x0, 3
	ldr	x1, [sp, 88]
	add	x1, x1, x0
	ldr	w0, [sp, 104]
	add	w2, w0, 1
	str	w2, [sp, 104]
	sxtw	x0, w0
	lsl	x0, x0, 3
	ldr	x2, [sp, 80]
	add	x0, x2, x0
	ldr	x1, [x1]
	str	x1, [x0]
	b	.L11
	ldrsw	x0, [sp, 100]
	lsl	x0, x0, 3
	ldr	x1, [sp, 88]
	add	x0, x1, x0
	ldr	w1, [x0, 4]
	ldrsw	x0, [sp, 104]
	lsl	x0, x0, 3
	sub	x0, x0, #8
	ldr	x2, [sp, 80]
	add	x0, x2, x0
	ldr	w0, [x0, 4]
	ldrsw	x2, [sp, 104]
	lsl	x2, x2, 3
	sub	x2, x2, #8
	ldr	x3, [sp, 80]
	add	x2, x3, x2
	cmp	w1, w0
	csel	w0, w1, w0, ge
	str	w0, [x2, 4]
	ldr	w0, [sp, 100]
	add	w0, w0, 1
	str	w0, [sp, 100]
	ldr	w1, [sp, 100]
	ldr	w0, [sp, 52]
	cmp	w1, w0
	blt	.L12
	ldrsw	x0, [sp, 104]
	lsl	x0, x0, 3
	bl	malloc
	sxtw	x0, w0
	str	x0, [sp, 72]
	ldrsw	x0, [sp, 104]
	lsl	x0, x0, 2
	bl	malloc
	sxtw	x0, w0
	mov	x1, x0
	ldr	x0, [sp, 24]
	str	x1, [x0]
	str	wzr, [sp, 96]
	b	.L13
	mov	x0, 8
	bl	malloc
	sxtw	x2, w0
	ldrsw	x0, [sp, 96]
	lsl	x0, x0, 3
	ldr	x1, [sp, 72]
	add	x0, x1, x0
	mov	x1, x2
	str	x1, [x0]
	ldrsw	x0, [sp, 96]
	lsl	x0, x0, 3
	ldr	x1, [sp, 80]
	add	x1, x1, x0
	ldrsw	x0, [sp, 96]
	lsl	x0, x0, 3
	ldr	x2, [sp, 72]
	add	x0, x2, x0
	ldr	x0, [x0]
	ldr	w1, [x1]
	str	w1, [x0]
	ldrsw	x0, [sp, 96]
	lsl	x0, x0, 3
	ldr	x1, [sp, 80]
	add	x1, x1, x0
	ldrsw	x0, [sp, 96]
	lsl	x0, x0, 3
	ldr	x2, [sp, 72]
	add	x0, x2, x0
	ldr	x0, [x0]
	add	x0, x0, 4
	ldr	w1, [x1, 4]
	str	w1, [x0]
	ldr	x0, [sp, 24]
	ldr	x1, [x0]
	ldrsw	x0, [sp, 96]
	lsl	x0, x0, 2
	add	x0, x1, x0
	mov	w1, 2
	str	w1, [x0]
	ldr	w0, [sp, 96]
	add	w0, w0, 1
	str	w0, [sp, 96]
	ldr	w1, [sp, 96]
	ldr	w0, [sp, 104]
	cmp	w1, w0
	blt	.L14
	ldr	x0, [sp, 32]
	ldr	w1, [sp, 104]
	str	w1, [x0]
	ldr	x0, [sp, 88]
	bl	free
	ldr	x0, [sp, 80]
	bl	free
	ldr	x0, [sp, 72]
	ldp	x29, x30, [sp], 112
	ret