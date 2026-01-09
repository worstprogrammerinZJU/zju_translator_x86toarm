main:
	stp	x29, x30, [sp, -112]!
	mov	x29, sp
	b	.L2
	ldr	d1, [sp, 48]
	ldr	d0, [sp, 24]
	fcmpe	d1, d0
	bmi	.L11
	b	.L3
	ldr	d0, [sp, 48]
	str	d0, [sp, 104]
	ldr	d0, [sp, 24]
	str	d0, [sp, 48]
	ldr	d0, [sp, 104]
	str	d0, [sp, 24]
	ldr	d1, [sp, 64]
	ldr	d0, [sp, 40]
	fsub	d1, d1, d0
	ldr	d2, [sp, 64]
	ldr	d0, [sp, 40]
	fsub	d0, d2, d0
	fmul	d1, d1, d0
	ldr	d2, [sp, 56]
	ldr	d0, [sp, 32]
	fsub	d2, d2, d0
	ldr	d3, [sp, 56]
	ldr	d0, [sp, 32]
	fsub	d0, d3, d0
	fmul	d0, d2, d0
	fadd	d0, d1, d0
	bl	sqrt
	str	d0, [sp, 104]
	ldr	d1, [sp, 48]
	ldr	d0, [sp, 24]
	fadd	d0, d1, d0
	ldr	d1, [sp, 104]
	fcmpe	d1, d0
	bge	.L12
	b	.L14
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	b	.L2
	ldr	d1, [sp, 48]
	ldr	d0, [sp, 24]
	fsub	d0, d1, d0
	ldr	d1, [sp, 104]
	fcmpe	d1, d0
	bls	.L13
	b	.L15
	ldr	d0, [sp, 24]
	adrp	x0, .LC3
	ldr	d1, [x0, #:lo12:.LC3]
	fmul	d1, d0, d1
	ldr	d0, [sp, 24]
	fmul	d0, d1, d0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	b	.L2
	ldr	d1, [sp, 24]
	ldr	d0, [sp, 24]
	fmul	d1, d1, d0
	ldr	d0, [sp, 104]
	fmul	d0, d0, d0
	fadd	d1, d1, d0
	ldr	d2, [sp, 48]
	ldr	d0, [sp, 48]
	fmul	d0, d2, d0
	fsub	d1, d1, d0
	fmov	d0, 2.0e+0
	fdiv	d1, d1, d0
	ldr	d0, [sp, 24]
	fdiv	d1, d1, d0
	ldr	d0, [sp, 104]
	fdiv	d0, d1, d0
	bl	acos
	str	d0, [sp, 96]
	ldr	d1, [sp, 48]
	ldr	d0, [sp, 48]
	fmul	d1, d1, d0
	ldr	d0, [sp, 104]
	fmul	d0, d0, d0
	fadd	d1, d1, d0
	ldr	d2, [sp, 24]
	ldr	d0, [sp, 24]
	fmul	d0, d2, d0
	fsub	d1, d1, d0
	fmov	d0, 2.0e+0
	fdiv	d1, d1, d0
	ldr	d0, [sp, 48]
	fdiv	d1, d1, d0
	ldr	d0, [sp, 104]
	fdiv	d0, d1, d0
	bl	acos
	str	d0, [sp, 88]
	ldr	d1, [sp, 48]
	ldr	d0, [sp, 24]
	fadd	d1, d1, d0
	ldr	d0, [sp, 104]
	fadd	d1, d1, d0
	fmov	d0, 2.0e+0
	fdiv	d0, d1, d0
	str	d0, [sp, 80]
	ldr	d0, [sp, 48]
	ldr	d1, [sp, 80]
	fsub	d1, d1, d0
	ldr	d0, [sp, 80]
	fmul	d1, d1, d0
	ldr	d0, [sp, 24]
	ldr	d2, [sp, 80]
	fsub	d0, d2, d0
	fmul	d1, d1, d0
	ldr	d2, [sp, 80]
	ldr	d0, [sp, 104]
	fsub	d0, d2, d0
	fmul	d0, d1, d0
	bl	sqrt
	str	d0, [sp, 80]
	ldr	d1, [sp, 48]
	ldr	d0, [sp, 48]
	fmul	d1, d1, d0
	ldr	d0, [sp, 88]
	fmul	d1, d1, d0
	ldr	d2, [sp, 24]
	ldr	d0, [sp, 24]
	fmul	d2, d2, d0
	ldr	d0, [sp, 96]
	fmul	d0, d2, d0
	fadd	d1, d1, d0
	ldr	d0, [sp, 80]
	fadd	d0, d0, d0
	fsub	d0, d1, d0
	str	d0, [sp, 72]
	ldr	d0, [sp, 72]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	add	x5, sp, 24
	add	x4, sp, 32
	add	x3, sp, 40
	add	x2, sp, 48
	add	x1, sp, 56
	add	x0, sp, 64
	mov	x6, x5
	mov	x5, x4
	mov	x4, x3
	mov	x3, x2
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__isoc99_scanf
	cmn	w0, #1
	bne	.L9
	mov	w0, 0
	ldp	x29, x30, [sp], 112
	ret