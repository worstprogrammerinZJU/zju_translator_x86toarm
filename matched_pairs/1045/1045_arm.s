main:
	stp	x29, x30, [sp, -96]!
	mov	x29, sp
	str	d8, [sp, 16]
	add	x3, sp, 76
	add	x2, sp, 48
	add	x1, sp, 56
	add	x0, sp, 64
	mov	x4, x3
	mov	x3, x2
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 92]
	b	.L2
	add	x0, sp, 40
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldr	d1, [sp, 56]
	ldr	d0, [sp, 48]
	fmul	d1, d1, d0
	ldr	d0, [sp, 40]
	fmul	d1, d1, d0
	ldr	d0, [sp, 64]
	fmul	d8, d1, d0
	ldr	d1, [sp, 56]
	ldr	d0, [sp, 56]
	fmul	d1, d1, d0
	ldr	d0, [sp, 48]
	fmul	d1, d1, d0
	ldr	d0, [sp, 48]
	fmul	d1, d1, d0
	ldr	d0, [sp, 40]
	fmul	d1, d1, d0
	ldr	d0, [sp, 40]
	fmul	d1, d1, d0
	fmov	d0, 1.0e+0
	fadd	d0, d1, d0
	bl	sqrt
	fdiv	d0, d8, d0
	str	d0, [sp, 80]
	ldr	d0, [sp, 80]
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	ldr	w0, [sp, 92]
	add	w0, w0, 1
	str	w0, [sp, 92]
	ldr	w0, [sp, 76]
	ldr	w1, [sp, 92]
	cmp	w1, w0
	blt	.L3
	mov	w0, 0
	ldr	d8, [sp, 16]
	ldp	x29, x30, [sp], 96
	ret