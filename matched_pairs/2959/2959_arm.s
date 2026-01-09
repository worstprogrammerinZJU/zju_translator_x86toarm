main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	add	x0, sp, 40
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 44]
	b	.L2
	add	x2, sp, 16
	add	x1, sp, 24
	add	x0, sp, 32
	mov	x3, x2
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldr	d1, [sp, 16]
	ldr	d0, [sp, 24]
	fadd	d1, d1, d0
	ldr	d2, [sp, 32]
	ldr	d0, [sp, 24]
	fsub	d0, d2, d0
	fdiv	d0, d1, d0
	bl	asin
	adrp	x0, .LC3
	ldr	d1, [x0, #:lo12:.LC3]
	fdiv	d0, d1, d0
	str	d0, [sp, 32]
	ldr	d0, [sp, 32]
	fcvtzs	w0, d0
	mov	w1, w0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w0, [sp, 40]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L3
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret