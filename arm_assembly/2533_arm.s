main:
	sub	sp, sp, #4048
	stp	x29, x30, [sp]
	mov	x29, sp
	str	wzr, [sp, 4036]
	add	x0, sp, 28
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 4044]
	b	.L2
	ldrsw	x0, [sp, 4044]
	lsl	x0, x0, 2
	add	x1, sp, 32
	mov	w2, 10001
	str	w2, [x1, x0]
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 4040]
	b	.L3
	ldr	w0, [sp, 4040]
	add	w0, w0, 1
	str	w0, [sp, 4040]
	ldrsw	x0, [sp, 4040]
	lsl	x0, x0, 2
	add	x1, sp, 32
	ldr	w1, [x1, x0]
	ldr	w0, [sp, 24]
	cmp	w1, w0
	blt	.L4
	ldr	w2, [sp, 24]
	ldrsw	x0, [sp, 4040]
	lsl	x0, x0, 2
	add	x1, sp, 32
	str	w2, [x1, x0]
	ldr	w1, [sp, 4040]
	ldr	w0, [sp, 4036]
	cmp	w1, w0
	blt	.L5
	ldr	w0, [sp, 4040]
	add	w0, w0, 1
	str	w0, [sp, 4036]
	ldr	w0, [sp, 4044]
	add	w0, w0, 1
	str	w0, [sp, 4044]
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 4044]
	cmp	w1, w0
	blt	.L6
	ldr	w1, [sp, 4036]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	mov	w0, 0
	ldp	x29, x30, [sp]
	add	sp, sp, 4048
	ret