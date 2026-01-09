main:
	stp	x29, x30, [sp, -96]!
	mov	x29, sp
	add	x0, sp, 68
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L2
	str	xzr, [sp, 80]
	str	xzr, [sp, 72]
	add	x3, sp, 32
	add	x2, sp, 40
	add	x1, sp, 48
	add	x0, sp, 56
	mov	x4, x3
	mov	x3, x2
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	str	wzr, [sp, 92]
	b	.L3
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__isoc99_scanf
	ldr	d0, [sp, 24]
	ldr	d1, [sp, 72]
	fadd	d0, d1, d0
	str	d0, [sp, 72]
	ldr	d1, [sp, 24]
	ldr	d0, [sp, 24]
	fmul	d0, d1, d0
	ldr	d1, [sp, 80]
	fadd	d0, d1, d0
	str	d0, [sp, 80]
	ldr	w0, [sp, 92]
	add	w0, w0, 1
	str	w0, [sp, 92]
	ldr	w0, [sp, 68]
	ldr	w1, [sp, 92]
	cmp	w1, w0
	blt	.L4
	ldr	d1, [sp, 56]
	ldr	d2, [sp, 56]
	ldr	d0, [sp, 48]
	fadd	d0, d2, d0
	fdiv	d0, d1, d0
	str	d0, [sp, 56]
	ldr	d0, [sp, 56]
	fmov	d1, 1.0e+0
	fsub	d0, d1, d0
	str	d0, [sp, 48]
	ldr	d1, [sp, 40]
	ldr	d2, [sp, 40]
	ldr	d0, [sp, 32]
	fadd	d0, d2, d0
	fdiv	d0, d1, d0
	str	d0, [sp, 40]
	ldr	d0, [sp, 40]
	fmov	d1, 1.0e+0
	fsub	d0, d1, d0
	str	d0, [sp, 32]
	ldr	d1, [sp, 40]
	ldr	d0, [sp, 56]
	fsub	d1, d1, d0
	ldr	d2, [sp, 40]
	ldr	d0, [sp, 56]
	fsub	d0, d2, d0
	fmul	d1, d1, d0
	ldr	d2, [sp, 32]
	ldr	d0, [sp, 48]
	fsub	d2, d2, d0
	ldr	d3, [sp, 32]
	ldr	d0, [sp, 48]
	fsub	d0, d3, d0
	fmul	d0, d2, d0
	fadd	d0, d1, d0
	bl	sqrt
	str	d0, [sp, 24]
	ldr	d0, [sp, 72]
	fmul	d1, d0, d0
	ldr	d0, [sp, 24]
	fdiv	d0, d1, d0
	adrp	x0, .LC4
	ldr	d1, [x0, #:lo12:.LC4]
	fdiv	d0, d0, d1
	str	d0, [sp, 72]
	fmov	d0, 2.0e+0
	ldr	d1, [sp, 80]
	fdiv	d0, d1, d0
	str	d0, [sp, 80]
	ldr	d1, [sp, 72]
	ldr	d0, [sp, 80]
	fsub	d0, d1, d0
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	add	x0, sp, 68
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 68]
	cmp	w0, 0
	bne	.L5
	mov	w0, 0
	ldp	x29, x30, [sp], 96
	ret