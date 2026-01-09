main:
	stp	x29, x30, [sp, -96]!
	mov	x29, sp
	b	.L2
	ldr	d1, [sp, 24]
	ldr	d0, [sp, 40]
	fsub	d1, d1, d0
	ldr	d2, [sp, 24]
	ldr	d0, [sp, 40]
	fsub	d0, d2, d0
	fmul	d1, d1, d0
	ldr	d2, [sp, 16]
	ldr	d0, [sp, 32]
	fsub	d2, d2, d0
	ldr	d3, [sp, 16]
	ldr	d0, [sp, 32]
	fsub	d0, d3, d0
	fmul	d0, d2, d0
	fadd	d0, d1, d0
	bl	sqrt
	str	d0, [sp, 88]
	ldr	d1, [sp, 56]
	ldr	d0, [sp, 24]
	fsub	d1, d1, d0
	ldr	d2, [sp, 56]
	ldr	d0, [sp, 24]
	fsub	d0, d2, d0
	fmul	d1, d1, d0
	ldr	d2, [sp, 48]
	ldr	d0, [sp, 16]
	fsub	d2, d2, d0
	ldr	d3, [sp, 48]
	ldr	d0, [sp, 16]
	fsub	d0, d3, d0
	fmul	d0, d2, d0
	fadd	d0, d1, d0
	bl	sqrt
	str	d0, [sp, 80]
	ldr	d1, [sp, 56]
	ldr	d0, [sp, 40]
	fsub	d1, d1, d0
	ldr	d2, [sp, 56]
	ldr	d0, [sp, 40]
	fsub	d0, d2, d0
	fmul	d1, d1, d0
	ldr	d2, [sp, 48]
	ldr	d0, [sp, 32]
	fsub	d2, d2, d0
	ldr	d3, [sp, 48]
	ldr	d0, [sp, 32]
	fsub	d0, d3, d0
	fmul	d0, d2, d0
	fadd	d0, d1, d0
	bl	sqrt
	str	d0, [sp, 72]
	ldr	d1, [sp, 88]
	ldr	d0, [sp, 80]
	fadd	d1, d1, d0
	ldr	d0, [sp, 72]
	fadd	d1, d1, d0
	fmov	d0, 2.0e+0
	fdiv	d0, d1, d0
	str	d0, [sp, 56]
	ldr	d1, [sp, 56]
	ldr	d0, [sp, 88]
	fsub	d1, d1, d0
	ldr	d0, [sp, 56]
	fmul	d1, d1, d0
	ldr	d2, [sp, 56]
	ldr	d0, [sp, 80]
	fsub	d0, d2, d0
	fmul	d1, d1, d0
	ldr	d2, [sp, 56]
	ldr	d0, [sp, 72]
	fsub	d0, d2, d0
	fmul	d0, d1, d0
	bl	sqrt
	str	d0, [sp, 64]
	ldr	d1, [sp, 88]
	ldr	d0, [sp, 80]
	fmul	d1, d1, d0
	ldr	d0, [sp, 72]
	fmul	d1, d1, d0
	ldr	d0, [sp, 64]
	fdiv	d1, d1, d0
	fmov	d0, 2.0e+0
	fdiv	d0, d1, d0
	adrp	x0, .LC2
	ldr	d1, [x0, #:lo12:.LC2]
	fmul	d0, d0, d1
	str	d0, [sp, 64]
	ldr	d0, [sp, 64]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	add	x5, sp, 16
	add	x4, sp, 24
	add	x3, sp, 32
	add	x2, sp, 40
	add	x1, sp, 48
	add	x0, sp, 56
	mov	x6, x5
	mov	x5, x4
	mov	x4, x3
	mov	x3, x2
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	cmn	w0, #1
	bne	.L3
	mov	w0, 0
	ldp	x29, x30, [sp], 96
	ret