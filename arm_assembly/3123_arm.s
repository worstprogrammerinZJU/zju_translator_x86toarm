n:
pie:
piece:
	sub	sp, sp, #32
	str	d0, [sp, 8]
	str	wzr, [sp, 28]
	str	wzr, [sp, 24]
	b	.L2
	adrp	x0, pie
	add	x0, x0, :lo12:pie
	ldrsw	x1, [sp, 24]
	ldr	d1, [x0, x1, lsl 3]
	ldr	d0, [sp, 8]
	fdiv	d0, d1, d0
	fcvtzs	w0, d0
	ldr	w1, [sp, 28]
	add	w0, w1, w0
	str	w0, [sp, 28]
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 24]
	cmp	w1, w0
	blt	.L3
	ldr	w0, [sp, 28]
	add	sp, sp, 32
	ret
main:
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	add	x0, sp, 28
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 60]
	b	.L6
	add	x0, sp, 24
	mov	x2, x0
	adrp	x0, n
	add	x1, x0, :lo12:n
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
	str	xzr, [sp, 48]
	str	wzr, [sp, 56]
	b	.L7
	ldrsw	x0, [sp, 56]
	lsl	x1, x0, 3
	adrp	x0, pie
	add	x0, x0, :lo12:pie
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__isoc99_scanf
	adrp	x0, pie
	add	x0, x0, :lo12:pie
	ldrsw	x1, [sp, 56]
	ldr	d1, [x0, x1, lsl 3]
	adrp	x0, pie
	add	x0, x0, :lo12:pie
	ldrsw	x1, [sp, 56]
	ldr	d0, [x0, x1, lsl 3]
	fmul	d0, d1, d0
	adrp	x0, pie
	add	x0, x0, :lo12:pie
	ldrsw	x1, [sp, 56]
	str	d0, [x0, x1, lsl 3]
	adrp	x0, pie
	add	x0, x0, :lo12:pie
	ldrsw	x1, [sp, 56]
	ldr	d0, [x0, x1, lsl 3]
	ldr	d1, [sp, 48]
	fcmpe	d1, d0
	bmi	.L16
	b	.L8
	adrp	x0, pie
	add	x0, x0, :lo12:pie
	ldrsw	x1, [sp, 56]
	ldr	d0, [x0, x1, lsl 3]
	str	d0, [sp, 48]
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 56]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 56]
	cmp	w1, w0
	blt	.L10
	str	xzr, [sp, 40]
	b	.L11
	ldr	d1, [sp, 48]
	ldr	d0, [sp, 40]
	fadd	d1, d1, d0
	fmov	d0, 2.0e+0
	fdiv	d0, d1, d0
	str	d0, [sp, 32]
	ldr	d0, [sp, 32]
	bl	piece
	mov	w1, w0
	ldr	w0, [sp, 24]
	cmp	w1, w0
	bge	.L12
	ldr	d0, [sp, 32]
	str	d0, [sp, 48]
	b	.L11
	ldr	d0, [sp, 32]
	str	d0, [sp, 40]
	ldr	d1, [sp, 48]
	ldr	d0, [sp, 40]
	fsub	d0, d1, d0
	adrp	x0, .LC4
	ldr	d1, [x0, #:lo12:.LC4]
	fcmpe	d0, d1
	bgt	.L13
	ldr	d0, [sp, 40]
	adrp	x0, .LC5
	ldr	d1, [x0, #:lo12:.LC5]
	fmul	d0, d0, d1
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 60]
	cmp	w1, w0
	blt	.L14
	mov	w0, 0
	ldp	x29, x30, [sp], 64
	ret