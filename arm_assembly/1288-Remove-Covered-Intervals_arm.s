cmp_fun:
	sub	sp, sp, #32
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	str	x0, [sp, 24]
	ldr	x0, [sp]
	ldr	x0, [x0]
	str	x0, [sp, 16]
	ldr	x0, [sp, 24]
	ldr	w1, [x0]
	ldr	x0, [sp, 16]
	ldr	w0, [x0]
	cmp	w1, w0
	bne	.L2
	ldr	x0, [sp, 16]
	add	x0, x0, 4
	ldr	w1, [x0]
	ldr	x0, [sp, 24]
	add	x0, x0, 4
	ldr	w0, [x0]
	sub	w0, w1, w0
	b	.L3
	ldr	x0, [sp, 24]
	ldr	w1, [x0]
	ldr	x0, [sp, 16]
	ldr	w0, [x0]
	sub	w0, w1, w0
	add	sp, sp, 32
	ret
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	w1, [sp, 36]
	str	x2, [sp, 24]
	adrp	x0, cmp_fun
	add	x3, x0, :lo12:cmp_fun
	mov	x2, 8
	ldr	w1, [sp, 36]
	ldr	x0, [sp, 40]
	bl	qsort
	str	wzr, [sp, 60]
	ldr	w0, [sp, 36]
	str	w0, [sp, 56]
	str	wzr, [sp, 52]
	b	.L5
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x0, [x0]
	add	x0, x0, 4
	ldr	w0, [x0]
	ldr	w1, [sp, 60]
	cmp	w1, w0
	blt	.L6
	ldr	w0, [sp, 56]
	sub	w0, w0, #1
	str	w0, [sp, 56]
	b	.L7
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 3
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	x0, [x0]
	ldr	w0, [x0, 4]
	str	w0, [sp, 60]
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	str	w0, [sp, 52]
	ldr	w1, [sp, 52]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	blt	.L8
	ldr	w0, [sp, 56]
	ldp	x29, x30, [sp], 64
	ret