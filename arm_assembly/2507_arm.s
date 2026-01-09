main:
	stp	x29, x30, [sp, -96]!
	mov	x29, sp
	b	.L2
	str	xzr, [sp, 88]
	ldr	d1, [sp, 40]
	ldr	d0, [sp, 32]
	fcmpe	d1, d0
	bgt	.L15
	b	.L18
	ldr	d0, [sp, 32]
	b	.L5
	ldr	d0, [sp, 40]
	str	d0, [sp, 80]
	b	.L6
	ldr	d1, [sp, 88]
	ldr	d0, [sp, 80]
	fadd	d1, d1, d0
	fmov	d0, 2.0e+0
	fdiv	d0, d1, d0
	str	d0, [sp, 72]
	ldr	d1, [sp, 40]
	ldr	d0, [sp, 72]
	fadd	d1, d1, d0
	ldr	d2, [sp, 40]
	ldr	d0, [sp, 72]
	fsub	d0, d2, d0
	fmul	d0, d1, d0
	bl	sqrt
	str	d0, [sp, 64]
	ldr	d1, [sp, 32]
	ldr	d0, [sp, 72]
	fadd	d1, d1, d0
	ldr	d2, [sp, 32]
	ldr	d0, [sp, 72]
	fsub	d0, d2, d0
	fmul	d0, d1, d0
	bl	sqrt
	str	d0, [sp, 56]
	ldr	d1, [sp, 64]
	ldr	d0, [sp, 56]
	fmul	d1, d1, d0
	ldr	d2, [sp, 64]
	ldr	d0, [sp, 56]
	fadd	d0, d2, d0
	fdiv	d1, d1, d0
	ldr	d0, [sp, 24]
	fsub	d0, d1, d0
	str	d0, [sp, 48]
	ldr	d0, [sp, 48]
	adrp	x0, .LC2
	ldr	d1, [x0, #:lo12:.LC2]
	fcmpe	d0, d1
	bmi	.L16
	b	.L7
	ldr	d0, [sp, 48]
	adrp	x0, .LC3
	ldr	d1, [x0, #:lo12:.LC3]
	fcmpe	d0, d1
	bgt	.L9
	ldr	d0, [sp, 48]
	adrp	x0, .LC3
	ldr	d1, [x0, #:lo12:.LC3]
	fcmpe	d0, d1
	bmi	.L17
	b	.L19
	ldr	d0, [sp, 72]
	adrp	x0, .LC4
	ldr	d1, [x0, #:lo12:.LC4]
	fsub	d0, d0, d1
	str	d0, [sp, 80]
	b	.L6
	ldr	d0, [sp, 72]
	adrp	x0, .LC4
	ldr	d1, [x0, #:lo12:.LC4]
	fadd	d0, d0, d1
	str	d0, [sp, 88]
	ldr	d1, [sp, 80]
	ldr	d0, [sp, 88]
	fsub	d0, d1, d0
	adrp	x0, .LC5
	ldr	d1, [x0, #:lo12:.LC5]
	fcmpe	d0, d1
	bgt	.L12
	ldr	d1, [sp, 88]
	ldr	d0, [sp, 80]
	fadd	d1, d1, d0
	fmov	d0, 2.0e+0
	fdiv	d0, d1, d0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	add	x2, sp, 24
	add	x1, sp, 32
	add	x0, sp, 40
	mov	x3, x2
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	cmn	w0, #1
	bne	.L13
	mov	w0, 0
	ldp	x29, x30, [sp], 96
	ret